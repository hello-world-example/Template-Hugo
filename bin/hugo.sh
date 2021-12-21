#!/usr/bin/env bash

# 当前执行文件路径
SHELL_FOLDER=$(
  cd $(dirname "$0") || exit
  pwd
)

# 上级目录
cd "${SHELL_FOLDER}/.." || exit

# 上级目录就是项目的根目录
PROJECT_DIR=$(pwd)

# 项目名
PROJECT_NAME=${PROJECT_DIR##*/}


# hugo 重构构建
rm -rf doc
hugo -s HuGo/

# 构建后重新提交 push
git add .
git commit -am hugo
git push

# 打开发布页面
open "https://gitee.com/hello-world-example/${PROJECT_NAME}/pages"
