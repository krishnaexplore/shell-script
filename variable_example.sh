#!/bin/sh

MY_MESSAGE="Hello World"
echo $MY_MESSAGE


echo What is your name?
read MY_NAME
echo "Hello $MY_NAME - hope you're well."

echo "I was called with $# parameters"
echo "My name is $0"
echo "My first paramter is $1"
echo "My second paramteer is $2"
echo "All parameters are $@"


echo MYVAR is: $MYVAR
MYVAR="hi there"
echo MYVAR is: $MYVAR


#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
