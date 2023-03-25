#!/bin/bash

# 检查参数数量是否正确
if [ "$#" -ne 1 ]; then
  echo "使用方法: $0 <C++文件名>"
  exit 1
fi

# 提取文件名和后缀
filename=$(basename -- "$1")
extension="${filename##*.}"

# 检查文件后缀是否为.cpp
if [ "$extension" = "cpp" ]; then
  # 删除文件后缀
  filename="${filename%.*}"

  # 使用g++编译程序
  g++ -g -o "$filename" "$1"
else
  # 使用原始文件名称编译程序
  g++ -g -o "$filename" "$1.cpp"
fi


