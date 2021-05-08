#!/usr/bin/bash

URL=https://github.com
#获取下载地址
LOC=`curl -s https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases | grep -Po '\/Adopt.*-jdk.*windows_[\da-zA-Z]*.zip' | head -n 1`
#获取文件名
FNAME=`echo ${LOC} | grep -Po '([^\/]+)$'`

echo ${URL}${LOC}

echo ${FNAME}

#下载OpenJDK
curl -OL ${URL}${LOC}
#解压
unzip ${FNAME}
#进入解压目录
cd `ls -t | grep openjdk | head -n 1`
#替换环境变量
SETX JAVA_HOME `pwd`
