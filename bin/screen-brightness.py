#!/usr/bin/python3

import logging
import os
import subprocess
import sys
from typing import Literal

logging.basicConfig(level=logging.DEBUG)

FILE_PATH = os.path.join(os.path.expanduser('~'), ".screen-brightness")


def read_current_level() -> float:
    if not os.path.isfile(FILE_PATH):
        return 1
    with open(
        file=FILE_PATH,
        mode="r",
        encoding="utf-8",
    ) as file:
        current_level = file.readline().strip()
        return float(current_level)


def save_level(level: float) -> None:
    with open(
        file=FILE_PATH,
        mode="w",
        encoding="utf-8",
    ) as file:
        file.write(str(level))


def adjust_level(method: Literal["up", "down"]) -> None:
    step = 0.05
    adjuster = step if method == "up" else -step
    current_level = read_current_level()
    adjusted_level = current_level + adjuster
    if adjusted_level > 1:
        adjusted_level = 1
    if adjusted_level < 0.2:
        adjusted_level = 0.2
    logging.debug(f"Setting screen brightness to {adjusted_level}.")
    subprocess.run(["xrandr", "--output", "eDP-1", "--brightness", str(adjusted_level)])
    save_level(level=adjusted_level)


if __name__ == "__main__":
    METHOD = sys.argv[1] if len(sys.argv) > 1 else "up"
    adjust_level(method=METHOD)