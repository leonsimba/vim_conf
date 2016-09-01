#!/bin/bash
find `pwd` -name "*.c" -o -name "*.S" -o -name "*.h" -o -name "*.py" > cscope.files
#find  /usr/include/ -name "*.h" >> cscope.files

cscope -bqRi cscope.files
rm cscope.files -rf 
