---
title: Python代码相关
date: 2026-06-17 16:00:00
categories:
  - 测试领域
tags:
  - Python
  - 编程基础
  - 面试题
---

## Python 中的元组和列表的区别是什么

**相同点：**

- 都是序列，都可以存储任何数据类型，可以通过索引访问

**区别：**

- 列表是可变的，而元组是不可变的，这标志着两者之间的关键差异
- Python 将低开销的较大的块分配给元组，因为它们是不可变的。对于列表则分配小内存块。与列表相比，元组的内存更小

## Python 中的 break、continue、pass 代表什么意思

- `break`：跳出循环，不再执行
- `continue`：跳出本次循环，执行下一次
- `pass`：不做任何事情，只起到占位的作用

## 如何在 Python 中生成一个随机数

要在 Python 中生成随机数，您需要将命令导入为：

```python
import random
print(random.random())
```

这将返回 `[0, 1)` 范围内的随机浮点数。

## Python 有哪些常见的内置函数

**数字相关的：** `max()`、`min()`、`sum()`、`sorted()`、`len()`、`round()` 等

**类型相关：** `int()`、`float()`、`str()`、`bool()`、`list()`、`dict()`、`tuple()`、`set()`、`bin()`、`ord()`、`chr()` 等

## 请用自己最擅长的编程语言，将一个字符串反转并输出？

参考答案（Python 实现）：

方法 1，使用 `[::-1]`：

```python
s = 'python'
print(s[::-1])
```

方法 2，使用 `reverse()` 方法：

```python
l = list(s)
l.reverse()
print(''.join(l))
```

## 什么是切片？

切片是 Python 中的一种方法，能让我们只检索列表、元组或字符串的一部分。在切片时，我们使用切片操作符 `[]`。

## lambda 函数实现两个数相乘

通过匿名函数：

```python
product = lambda a, b: a * b
print(product(2, 6))
```

## 请说明 sort 和 sorted 对列表排序的区别

`sort()` 与 `sorted()` 的不同在于，`sort` 是在原位重新排列列表，而 `sorted()` 是产生一个新的列表。

- `sorted(L)` 返回一个排序后的 L，不改变原始的 L
- `L.sort()` 是对原始的 L 进行操作，调用后原始的 L 会改变，没有返回值

所以 `a = a.sort()` 是错的！`a = sorted(a)` 才对。

`sorted()` 适用于任何可迭代容器，`list.sort()` 仅支持 list（本身就是 list 的一个方法），`sorted` 使用频率比 `list.sort()` 更高些。

## 列举几个 Python2 和 Python3 的区别

1. Python3 使用 `print` 必须要以小括号包裹打印内容，比如 `print('hi')`；Python2 既可以使用带小括号的方式，也可以使用一个空格来分隔打印内容，比如 `print 'hi'`
2. Python2 `range(1, 10)` 返回列表，Python3 中返回迭代器，节约内存
3. Python2 中使用 ASCII 编码，Python3 中使用 UTF-8 编码
4. Python2 中 `unicode` 表示字符串序列，`str` 表示字节序列；Python3 中 `str` 表示字符串序列，`byte` 表示字节序列
5. Python2 中为正常显示中文，引入 coding 声明；Python3 中不需要
6. Python2 中是 `raw_input()` 函数，Python3 中是 `input()` 函数

## lambda 表达式（匿名函数）及用法

对于定义一个简单的函数，Python 还提供了另外一种方法，即 lambda 表达式。

lambda 表达式，又称匿名函数，常用来表示内部仅包含 1 行表达式的函数。如果一个函数的函数体仅有 1 行表达式，则该函数就可以用 lambda 表达式来代替。

lambda 表达式的语法格式如下：

```python
name = lambda [list] : 表达式
```

其中，定义 lambda 表达式，必须使用 `lambda` 关键字；`[list]` 作为可选参数，等同于定义函数是指定的参数列表；`value` 为该表达式的名称。

该语法格式转换成普通函数的形式，如下所示：

```python
def name(list):
    return 表达式
name(list)
```

显然，使用普通方法定义此函数，需要 3 行代码，而使用 lambda 表达式仅需 1 行。

举个例子，如果设计一个求 2 个数之和的函数，使用普通函数的方式，定义如下：

```python
def add(x, y):
    return x + y
print(add(3, 4))
```

由于上面程序中，`add()` 函数内部仅有 1 行表达式，因此该函数可以直接用 lambda 表达式表示：

```python
add = lambda x, y: x + y
print(add(3, 4))
```

## 其他扩展问题

1. 说一下装饰器，应用场景有哪些，项目中是怎么用到的？
2. 深浅拷贝
3. 说下 Python 的可变参数，应用场景是什么？
4. 面向对象三大特征
5. 类变量，实例变量，类对象，实例对象的区别
6. `return` 和 `yield` 区别
7. 推导式，迭代器，生成器
8. Python 中私有变量能否访问
9. Python 中类的方法种类和区别
10. Python `yield` 和 `yield from` 关键字的区别？
11. JSON 序列化时，可以处理的数据类型有哪些，如何保持原字典的顺序？
