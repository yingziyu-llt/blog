#import "../template.typ": *


== 前言

本笔记基于Linear Algebra Done Right(5th Edition) 一书的内容和顺序写成，可能具体内容不完全按照该书，会加入一些 简明线性代数（丘维声著） 的内容。

写这篇笔记，主要是我在前面的线性代数学习中，自我感觉只是基本掌握了一些散乱的知识点，并没有真正很好的理解线性代数的本质和内核，于是暑假用闲暇时间重读线性代数，换一本书(LADR)，希望能够得到更加深刻的理解。

= 线性空间
== $RR^n$ and $CC^n$

=== 复数 Complex Number

复数的定义是由对负数开平方根得出的。我们定义$i = sqrt(-1)$，其运算规则和常规的运算法则类似。


#definition[
$CC = {a+b i : a,b in RR}$称作复数域

]

对于复数的四则运算，我们做如下定义：


#definition[
加法法则$(a + b i) + (c + d i) = (a+c) + (b+d)i$

乘法法则$(a + b i) * (c + d i) = (a c - b d) + (b c + a d)i$
]

当$b=0$时，$a$就是实数。

在本笔记的其他部分，我们用$FF$来表示$RR$和$CC$,称$FF$中的元素叫做*标量*(scalar)。

=== 组(List)

#definition[
取$n$个非负数的整数组成一个*有序*的对叫做一个组(List)，记为$(x_1,x_2,dots,x_n)$。当且仅当两个组的各元素依次均相等时，可以称两个组相等。
]


#tip("List 和 Set 之间的差异：")[
- List 中的元素有序，Set 中的元素无序;List 中的元素可重复，Set 中的元素不可重复
]

#definition[
定义两个组的加法$*(a_1,a_2,dots,a_n) + (b_1,b_2,dots,b_n) = (a_1+b_1,a_2+b_2,dots,a_n+b_n)$，满足交换律。
]

#definition[
定义零元$0 = (0,0,dots,0)$
]

=== 向量(Vector)

将组放在一个坐标系中，取原点到该点的一个*有向线段*，称这个有向线段为*向量*(Vector)

对于两个向量之间的运算，我们做如下定义

#definition("加法")[
    $ (a_1,a_2,dots,a_n) + (b_1,b_2,dots,b_n) = (a_1+b_1,a_2+b_2,dots,a_n+b_n) $
]
#definition("数乘")[
$ lambda * (a_1,a_2,dots,a_n) = (lambda a_1,lambda a_2,dots,lambda a_n) $
]

== 向量空间(Vector Space)

向量空间要求有以下几个必备条件：

#definition[

+ 加法 $alpha,beta in V $,定义某种运算$+$,使得$alpha + beta in V $
+ 数乘 $lambda in FF,alpha in V$,定义某种运算$dot$,使得$lambda dot alpha in V$ 

对于一个空间$S = (VV,FF, +, dot)$，要求满足：
+ 加法可交换$alpha + beta = beta + alpha$
+ 加法可结合$alpha + beta + gamma = alpha + (beta + gamma)$
+ 数乘可交换$lambda mu alpha= mu lambda alpha$
+ 数乘可结合$lambda mu alpha = lambda (mu alpha)$
+ 数乘可分配$(lambda + mu)alpha = lambda alpha + mu alpha$,$lambda (alpha + beta) = lambda alpha + lambda beta$
+ 数乘有幺元$1$,$1 alpha = alpha$
+ 加法有零元$0 in VV$,$0 + alpha = alpha$
+ 加法有负元,$alpha + (-alpha) = 0$

那么称$S$为向量空间(Vector Space)。

]
#definition[
向量空间的元素称为点(point)或者向量(vector)。
]
向量空间的形式和向量空间数乘的数域是有很大关系的。我们称$S$是在$FF$上的向量空间(vector space over $FF$),在$RR$上的叫实向量空间，在$CC$上的叫做复向量空间。

在前面我们说的$VV$一般是一个传统意义上的向量集合$FF^n$(n可以是无穷，称为无穷维向量空间)，下面我们讨论和函数相关的向量空间。

#definition[

我们记$FF^S$($FF = RR "or" CC$,$S$是一个集合)为从$S->FF$的映射

取$f,g in FF^S$,加法定义为$(f+g) (x) = f (x) + g (x)$,数乘定义为$lambda in FF,(lambda f)(x) = lambda f (x)$
]


定理

+ 加法单位元唯一
+ 加法负元唯一
+ $0$数乘一个向量为零元
+ 任何数乘零元为零元
+ $-1$数乘任何向量为其负元

== 子空间(Subspace)

=== 子空间
设$V$是一个线性空间，若线性空间$U$中的所有元素都在$V$里，且二者运算相同（要求有向量加法和数乘），就称$U$是$V$的一个子空间。

*Conditions for Subspace*

+ 有零元(additive identity)$0 in U$
+ 加法封闭(closed under addition)$alpha,beta in U;alpha + beta in U$
+ 数乘封闭(closed under scalar multiplication)$alpha in U,lambda in FF;lambda alpha in U$

=== 子空间的和(Sum)
#definition[

定义运算 + ，满足$U_1+U_2+dots+U_n = {u_1+u_2+dots+u_n : u_1 in U_1,u_2 in U_2,dots,u_n in U_n}$
]
子空间的和是包含那些子空间的最小子空间。

=== 子空间的直和(Direct Sum)
#definition[
和$U=U_1+U_2+...+U_n$成为*直和*，若$U$中每个元素只能被唯一表示成$u_1+u_2+dots+u_n$，其中$u_i in U_i$。记直和的符号为$plus.circle$
]

*Conditions for Direct Sum*

$U_1 + U_2 + dots + U_n$是直和$arrow.l.r.double$ $0$只有唯一表出方式:$u_1=u_2=dots=u_n=0$ $arrow.l.r.double$ $U sect V = {0}$

