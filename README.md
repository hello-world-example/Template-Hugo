# Template-Hugo 


```
sed -i '' 's/Template-Hugo/_NewProject_/g' `grep Template-Hugo --include=\*.{md,html,xml} -rl .`

git config user.email ykb553@163.com
git config -l | grep user

# 更新主题模块
$ git submodule init
$ git submodule update

# 本地服务
$ hugo server -s HuGo/

# 生成静态站点
$ hugo -s HuGo/
```


## 帮助文档

- 官网：https://gohugo.io/
- 基本用法：https://gohugo.io/getting-started/usage/
- 主题：https://github.com/alex-shpak/hugo-book



### 快速开始

``` bash
# 安装
$ brew install hugo

# 生成网站
$ hugo new site ./HuGo

$ cd HuGo
$ git submodule add https://github.com/alex-shpak/hugo-book themes/book
$ cp -R themes/book/exampleSite/content .
$ hugo server --minify --theme book
```






