---
title: Markdown 写作指南
date: 2026-06-09 10:30:00
tags:
  - Markdown
  - 写作
categories:
  - 技术分享
keywords:
  - Markdown
  - 写作技巧
description: 一篇简要介绍 Markdown 基本语法和写作技巧的文章。
---

# Markdown 写作指南

Markdown 是一种轻量级标记语言，让你用纯文本编写格式化的文档。Hexo 博客默认支持 Markdown 写作。

## 基本语法

### 标题

使用 `#` 号来创建标题，`#` 的数量表示标题级别（1-6）。

### 强调

- **粗体**：用 `**` 包裹文字
- *斜体*：用 `*` 包裹文字
- ~~删除线~~：用 `~~` 包裹文字

### 列表

无序列表使用 `-` 或 `*`，有序列表使用数字。

### 代码

行内代码使用反引号，代码块使用三个反引号：

```javascript
function hello() {
  console.log("Hello, World!");
}
```

### 引用

> 这是一段引用文字。使用 `>` 来创建引用。

### 链接和图片

```markdown
[链接文字](URL)
![图片描述](图片URL)
```

## 在 Hexo 中使用

Hexo 还支持一些特有的标签插件，例如：

- `{% note %}` 提示块
- `{% tabs %}` 选项卡
- `{% gallery %}` 图片画廊

更多用法请参考 [Hexo 官方文档](https://hexo.io/docs/tag-plugins)。

## 推荐工具

写 Markdown 推荐使用以下编辑器：VS Code、Typora、Obsidian。这些工具都提供了良好的 Markdown 编辑和预览体验。
