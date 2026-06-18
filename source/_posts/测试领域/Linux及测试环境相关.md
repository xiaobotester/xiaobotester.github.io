---
title: Linux及测试环境相关
date: 2026-06-17 16:00:00
categories:
  - 测试领域
tags:
  - Linux
  - 测试环境
  - Docker
  - 面试题
---

## 说几个工作中常用的 Linux 命令？

| 命令 | 说明 |
|------|------|
| `cd` | 切换目录 |
| `ls` | 查看文件列表 |
| `cp` | 拷贝文件 |
| `mv` | 移动文件 |
| `rm` | 删除文件 |
| `chmod` | 设置文件权限 |
| `cat` | 浏览文件内容 |
| `vi` | 文件编辑 |
| `grep` | 过滤文件内容 |

## 你在工作中哪些场景中用到 Linux

1. 当项目不能访问时，登录到 Linux 服务器上看看项目是否启动（`ps -ef | grep xxx`）
2. 当测试出现 bug 时，登录到 Linux 服务器上看看是否有错误日志（`grep "ERROR" xxx.log`）
3. 有时会做下项目的部署，把开发打好的项目包，上传到 tomcat 里，然后修改项目配置文件，启动 tomcat

## 在 Linux 中如何杀死一个进程？

先用 `ps` 命令查看进程号，比如 tomcat，查看 tomcat 的 PID 命令如下所示：

```bash
ps -ef | grep tomcat
```

找到进程 id 后，用 `kill` 命令杀死进程：

```bash
kill -9 12345
```

## 如何查找文件

在根目录下查找名称为 `a.log` 的文件：

```bash
find / -name a.log
```

在当前目录下查找大于 10k 的文件：

```bash
find . -type f -size +10k
```

## 在 Linux 中如何查找日志文件中的 Error 信息

查看包含 Error 的日志：

```bash
grep "Error" test.log
```

查看包含 Error 的日志以及它的后 10 行：

```bash
grep -A 10 "Error" test.log
```

## 如何给一个文件添加可执行权限

```bash
chmod 777 test.log
chmod +x test.log
```

## 如何判断一个端口是否被占用

```bash
netstat -anp | grep 端口号
```

这个命令可以查出占用端口号的进程号，通过 `kill -9 进程号` 就能把对应进程杀掉。

## 说说 Docker 常用命令

1. 先说一下之前自己在工作中接触 Docker 这个主要用来干什么
2. 介绍在工作中常用到的一些命令，比如与环境部署相关会用到 `docker pull`、`build`、`exec`、`rm`、`rmi`、`logs` 等，按照自己所了解的进行介绍。要注意要知道每个命令在工作中哪些场景会用到，不要光死记硬背命令。

## 其他扩展问题

1. Linux 监控操作系统的常用命令，查看 JVM 的命令
2. Linux 三剑客说一下有什么区别，应用场景是什么？
3. 查找大于 1M 的文件 Linux 命令
4. Linux 查找当前目录下所有后缀为 `.py` 的文件
5. Shell 学过吗？都会哪些东西？说一下应用场景？
