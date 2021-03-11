#!/bin/bash

test="AaBbCcDdEeFfGg"

testa=`expr index "$test" C`
testb=`expr index "$test" D`
testc=`expr index "$test" E`
testd=`expr index "$test" Z`

echo "testa is in position: $testa"
echo "testb is in position: $testb"
echo "testc is in position: $testc"
echo "testd is in position: $testd"