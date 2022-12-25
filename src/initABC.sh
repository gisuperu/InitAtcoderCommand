#!/bin/bash

# set -e -o pipefail

# FOLDERNAME=$1
# folder名定義
if [ $# == 0 ]
then
    echo "Please folder name:"
    read FOLDERNAME
else
    FOLDERNAME=$1
fi

# folder作成
mkdir $FOLDERNAME
# folder内に入る
cd $FOLDERNAME

# 解答用file作成
TEMPLATE="$NEWCOMMAND/src/atcoderTemplate.cpp"
QUIZ=(A B C D E F G Ex)
EXTENSION="cpp"
for q in {0..7}
do
    cat $TEMPLATE > "${QUIZ[$q]}.$EXTENSION"
done

# 入力データfile作成
echo "1 2 3 4 5" > input.dat