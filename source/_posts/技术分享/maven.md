---
title: Maven 常见操作
date: 2026-06-17 16:00:00
categories:
  - 技术分享
tags:
  - Maven
  - Java
  - 构建工具
---

## settings.xml 文件配置阿里云镜像地址

```xml
<mirror>
    <id>nexus-aliyun</id>
    <mirrorOf>central</mirrorOf>
    <name>Nexus aliyun</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>
```
