= 线性代数学习笔记 向量空间(Vector Space)

== Introduction

本笔记基于Linear Algebra Done Right 一书的内容和顺序写成，可能具体内容不完全按照该书，会加入一些 简明线性代数（丘维声著） 的内容。

写这篇笔记，主要是我在前面的线性代数学习中，自我感觉只是基本掌握了一些散乱的知识点，并没有真正很好的理解线性代数的本质和内核，于是暑假用闲暇时间重读线性代数，换一本书(LADR)，希望能够得到更加深刻的理解。

== $RR^n$ and $CC^n$

=== 复数 Complex Number

复数的定义是由对负数开平方根得出的。我们定义$i = sqrt(-1)$，其运算规则和常规的运算法则类似。

*Definition*:

$CC = {a+b i : a,b in RR}$称作复数域

加法法则$(a + b i) + (c + d i) = (a+c) + (b+d)i$

乘法法则$(a + b i) * (c + d i) = (a c - b d) + (b c + a d)i$

当$b=0$时，$a$就是实数。显然，$CC$是一个*线性空间*。

在本笔记的其他部分，我们用$FF$来表示$RR$和$CC$,称$FF$中的元素叫做*标量*(scalar)。

=== 组(List)

*Definition*

取$n$个非负数的整数组成一个*有序*的对叫做一个组(List)，记为$(x_1,x_2,dots,x_n)$。当且仅当两个组的各元素依次均相等时，可以称两个组相等。

*Notice*

List 和 Set 之间的差异：

List 和 Set 的区别是，List 中的元素有序，Set 中的元素无序;List 中的元素可重复，Set 中的元素不可重复

*Definition*

定义两个组的加法$(a_1,a_2,dots,a_n) + (b_1,b_2,dots,b_n) = (a_1+b_1,a_2+b_2,dots,a_n+b_n)$，满足交换律。

定义零元$0 = (0,0,dots,0)$

=== 向量(Vector)

将组放在一个坐标系中，取原点到该点的一个*有向线段*，称这个有向线段为*向量*(Vector)

向量之间的加法和组的加法类似，也满足对应的定律。这里略。

*Definition*

数乘 $lambda * (a_1,a_2,dots,a_n) = (lambda a_1,lambda a_2,dots,lambda a_n)$

=== 向量空间(Vector Space)

向量空间要求有以下几个必备条件：

*Definition*

+ 加法 $alpha,beta in V $,定义某种运算$+$,使得$alpha + beta in V $
+ 数乘 $lambda in FF,alpha in V$,定义某种运算$dot$,使得$lambda dot alpha in V$ 

对于一个空间$S = (VV,FF, +, dot)$，要求满足：
+ 加法可交换$alpha + beta = beta + alpha$
+ 加法可结合$alpha + beta + gamma = alpha + (beta + gamma)$
+ 数乘可交换$lambda mu alpha= mu lambda alpha$
+ 数乘可结合$lambda mu alpha = lambda (mu alpha)$
+ 数乘可分配$(lambda + mu)alpha = lambda alpha + mu alpha$,$lambda (alpha + beta) = lambda alpha + lambda beta$
+ 数乘有$1$元,$1 alpha = alpha$
+ 加法有$0$元,$0 + alpha = alpha$

那么称$S$为向量空间(Vector Space)。

向量空间的元素称为点(point)或者向量(vector)。


