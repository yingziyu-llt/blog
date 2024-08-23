#set document(title:"线性代数 有限维向量空间",date: datetime(year: 2024,month: 7,day: 11))

#set page(margin: (
  top: 0cm,
  bottom: 0cm,
  x: 0cm,
))
#set text(size: 16pt)

== 线性组合和张成

*Notatioddn*

向量组：一些向量组成的一个组(List)

*Defination*

一个向量组$v_1,v_2,...,v_n in V$的线性组合(Linear combination)是指形如$alpha_1 v_1 + alpha_2 v_2 + ... + alpha_n v_n$的向量

一个向量组的所有线性组合组成的集合叫做这个向量组张成(span)的空间$"span"(a_1,a_2,...,a_n)$，有些也叫线性张成(linear span)

指定空向量组$()$张成的空间为${0}$

定理2.7 张成的空间是最小包含子空间:一个向量组张成的空间就是包含这些向量的最小的子空间。

证明思路：先去证明张成的空间是$V$的一个子空间（证明运算封闭性），再去证明这个空间包括张成其的所有向量，再说明所有$V$包含这些向量的子空间都是其一个子集。

证明过程：

*Proof*

Suppose $v_1,v_2,...,v_n$ a list in $V$. We denote that $S = "span"(v_1,v_2,...,v_n)$

First, we need to prove the addition identity in $S$. Obviously, $0v_1+0v_2+...+0v_n = 0$ 

After that, we need to prove the addition closure in $S$. For $a = a_1 v_1 + a_2 v_2 + ... + a_n v_n$, $b = b_1 v_1 + b_2 v_2 + ... + b_n v_n$,$a + b = (a_1 + b_1) v_1 + (a_2 + b_2) v_2 + ... + (a_n + b_n) v_n in V$

Further more, we need to prove the multiplication closure in $S$. For $a = a_1 v_1 + a_2 v_2 + ... + a_n v_n$,$lambda a = lambda a_1 v_1 + lambda a_2 v_2 + ... + lambda a_n v_n in V$ 

Thus $S$ is a subspace of $V$

To prove that $S$ includes $v_1,v_2,dots,v_n$, we only need to make $a_i$ equal to $1$ if and only if $i$ equals to the index of $v_i$, otherwise $a_i = 0$.

Conversely, because subspaces are closed under scalar multiplication and addition, every subspace of $V$ containing each $v_j$ contains $"span"(v_1,v_2,...,v_n)$. Thus $S$ is the smallest subspace of $V$ containing all the vectors

*Defination*

张成(spans)：如果$"span"(v_1,v_2,...,v_n) = V$，那么称$v_1,v_2,dots,v_n$张成$V$.

有限维向量空间(finite-dimensional vector space)：如果某个空间可以被有限个向量张成，那么这个空间就是一个*有限维向量空间*(finite-dimensional vector space)。

多项式：若$FF -> FF$函数$p$可被表示为$p (x) = a_0 + a_1 x + a_2 x^2 + ... + a_n x^n,a_0,a_1,a_2,...,a_n \in FF$，那么这个函数就是一个在$FF$上的*多项式*(polynomial)函数,$a_0,a_1,a_2,...,a_n$称为多项式的*系数*(coefficient)

$P(FF)$是所有在$FF$上多项式的集合形成的线性空间。容易知道，$P(FF)$是$FF^FF$的子空间

多项式的度(degree)是多项式的最高次幂（最高次幂的次数）。定义$0$的度数为$-infinity$

$P_m(FF),m in ZZ^+$指所有在$FF$上次数小于等于$m$的多项式的集合。

无穷维向量空间(infinite-dimensional vector space)：不是有限维向量空间的向量空间。

*Example*

Q:Show that $P(FF)$ is a infinite-dimensional vector space.

A:Consider any list of polynomials in $P(FF)$. We use $m$ to denote the maximun degree of the polynomial in the list. Then every polynomials in the spans of the list has degree less than or equal to $m$. Then $z^m+1$ is not in the span. Hence no list can span the space. QED

== 线性无关

*Definition*

若一个向量组$v_1,v_2,dots,v_n$，使得$a_1 v_1 + a_2 v_2 + dots + a_n v_n = 0$当且仅当$a_1=a_2=dots=a_n=0$，那么称$v_1,v_2,dots,v_n$是*线性无关*(linearly independent),否则被称为*线性相关*(linearly dependent)

*Lemma*

若$v_1,v_2,dots,v_n$线性相关，那么一定存在一个$j in {1,2,dots,n}$,使得：

(a) $v_j in "span"(v_1,v_2,dots,v_j-1)$ 

(b) 删除$v_j$后的向量组与原先的向量组等价

proof: 

$v_1,v_2,dots,v_n$ is linearly dependent, so exist $a_1,a_2,dots,a_n in FF$ such that $a_1 v_1 + a_2 v_2 + dots + a_n v_n = 0$.

Let $j$ be the largest element in ${1,2,dots,m}$ if $a_j != 0$

Then $a_1 v_1 + a_2 v_2 + dots + a_j v_j = 0$ => $v_j = a_1 / a_j v_1 + a_2 / a_j v_2 + dots + a_j-1 / a_j v_j-1$. Then proving (a).

Suppose $u in "span"(v_1,v_2,dots,v_j-1)$, then $u = a_1 v_1 + a_2 v_2 + dots + a_n v_n$.We use $a_1 / a_j v_1 + a_2 / a_j v_2 + dots + a_j-1 / a_j v_j-1$ to replace $a_j$.

Then we can easyly to present $u$ just using $a_1,a_2,dots,a_j-1,a_j+1,dots,a_n$. Then proving (b).

*Theorem*

线性无关组的长度一定小于等于张成该空间向量组的长度。

== 基

*Definition*

一个空间$V$的一组基(basis)是一组可以张成$V$且线性无关的向量组。

*Theorem*

基的判定定理：$v_1,v_2,dots,v_n$是$V$的一组基$arrow.l.r.double$ $forall v in V$,存在唯一的$a_1,a_2,dots,a_n in FF$使得$a_1 v_1 + a_2 v_2 + dots + a_n v_n = a$

*Proof*

First suppose $v_1,v_2,dots,v_n$ as a basis of $V$. Let $v in V$. $v_1,v_2,dots,v_n$, so they span the space.Therefore $v = a_1 v_1 + a_2 v_2 + dots + a_n v_n$. Supppose $v = c_1 v_1 + c_2 v_2 + dots + c_n v_n$. Then $(c_1 - a_1) v_1 + (c_2 - a_2) v_2 + dots + (c_n - a_n) v_n = 0$,$c_1=a_1,c_2=a_2,dots,c_n=a_n$

On the other direction, suppose $v = c_1 v_1 + c_2 v_2 + dots + c_n v_n$ is unique, we can easily to know that $v_1,v_2,dots,v_n$ span the space.

To prove that they are linearly independent, we let $0 = a_1 v_1 + a_2 v_2 + dots + a_n v_n$. $2 * 0 = 2a_1 v_1 + 2a_2 v_2 + dots + 2a_n v_n$,$a_1 = 2a_1, a_2 = 2a_2, dots, a_n = 2a_n$.$a_1 = a_2 = dots = a_n = 0$

*Theorems*

张成某个空间的向量组包含这个空间的一个基

任何有限维向量空间包含一个基

空间内一组线性无关的向量组可以被扩张为一个基

任何$V$的子空间都是$V$直和的一部分

== 维数

*Theorem*

基向量组的长度与基的选取无关

*Proof*

Find two basis $v_1,v_2,dots,v_n$ and $u_1,u_2,dots,u_m$. They all spans $V$. So $n <= m$ and $m <= n$.Then $m = n$

于是，我们可以发现，一个向量空间中基向量组的长度是一个对于该空间有意义的不变量，我们于是有定义：

*Definition*

维数(dimension)是向量空间$V$中基向量组的长度。记作$dim V$

*Theorem*

有限维向量空间$V$的子空间$U$满足$dim U <= dim V$

长度为$dim V$的线性无关向量组就是$V$的一组基,长度为$dim V$能张成$V$的一组向量就是$V$的一组基

维数和公式:$dim (V+U)=dim V + dim U - dim (V sect U)$

