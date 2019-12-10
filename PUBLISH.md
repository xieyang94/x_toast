发布的流程步骤：

整个流程处于有网，能翻墙状态下进行

1、编写，测试通过；预发布

2、发布前检查
```
flutter packages pub publish --dry-run
```

一般会有：

- author要填写
- homepage要填写
- .gitignore要填写（一个package不能超过100M，不添加的话可能会超过100M）
- ....


3、环境变量删除

```
变量名：PUB_HOSTED_URL
变量值：https://pub.flutter-io.cn	(注意：这个是临时镜像，学Flitter的都有介绍，不确保一直有效)
变量名：FLUTTER_STORAGE_BASE_URL
变量值：https://storage.flutter-io.cn (注意：这个是临时镜像，学Flitter的都有介绍，不确保一直有效)

```

4、设置代理

```
set http_proxy=http://127.0.0.1:1080
set https_proxy=https://127.0.0.1:1080

```

5、检查过程中会有一次确认是否OK的过程，需要输入(y/n)  OK的话直接y

6、会有一次账号验证过程，直接复制那整个链接一直到.email结尾到浏览器进行认证

7.1、发布 -v 能看到整个发布流程
```
flutter packages pub publish -v
```

7.2、发布
```
flutter packages pub publish --server=https://pub.dartlang.org
```

> 因为7.1发布基本上成功率不高，失败率很高，7.2目前试了两次都是一次性OK


8、查找自己的packages，直接搜会搜不到，主要直接查找；或者你的gmail中也会收到邮件里面也会有详细地址
```
https://pub.dev/packages/####
####是你的packages name
```