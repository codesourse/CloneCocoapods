# CloneCocoapods
Clone Cocoapods shell

最近很多公司开始裁员，辛苦了几年开发的组建库不拷贝一波太可惜了，如果是一个个把cocoapods依赖库clone下来实在太麻烦了，我给大家提供了一个比较便捷的方法

首先要安装jq 命令

brew install jq

也可以通过

https://stedolan.github.io/jq/download/


然后cd 到想存放代码的目录

打开clone.sh  把

path="/Users/your computer user/.cocoapods/repos/master/Specs/"

改成你对应的path

执行

sh ./该shell的目录/clone.sh
