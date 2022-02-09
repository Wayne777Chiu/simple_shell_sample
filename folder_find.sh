#!/bin/bash -x

BUILD_SHELL_VERSION=0.01
GOTO_ROOT="./samplea"
KEYSEARCH='target'
VER=''

# method 1
TARGET_FOLDER=$(find ${GOTO_ROOT} -maxdepth 1 -type d -name '*'${KEYSEARCH}'*' -print -quit | 
                                    sed 's/'$(echo ${GOTO_ROOT}\/ | sed 's/\//\\\//g')'//g')

# echo $(find ${GOTO_ROOT} -maxdepth 1 -type d -name '*'${KEYSEARCH}'*' -print -quit)
if [ "${TARGET_FOLDER}" = "" ]; then
    echo "<ERR>: No such file or directory include the string '${KEYSEARCH}'" && exit 1
else
    VER=$(echo ${TARGET_FOLDER} | sed 's/'${KEYSEARCH}'//g' )
fi

echo  ${TARGET_FOLDER}
echo ${VER}