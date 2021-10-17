
echo "linking $1"

DST=~/$1
SRC=~/dotfiles/$1

DST_DIR=$(dirname $DST)
mkdir $DST_DIR
ln -s $SRC $DST
