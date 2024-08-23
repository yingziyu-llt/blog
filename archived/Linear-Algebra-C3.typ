#set document(title:"线性映射",date: auto )
#set page(margin: (
  top: 0cm,
  bottom: 0cm,
  x: 0cm,
))
#set text(size: 16pt)


== 线性映射的定义

*Definition:* 

一个映射 $T : V -> W$ 一定是线性的当且仅当它满足以下两个性质:

+ 可加性(additivity): $T(x + y) = T(x) + T(y)$
+ 齐次性(homogeneity): $T(c v) = c T(v)$

我们记作$T v$为一个线性映射(Linear Mapping),称$L(V, W)$为从$V$到$W$的线性映射. 显然其保持0元$T(0) = 0$

*Example*

零映射(zero) $0 in L(V,W),0v=0$

恒等(identity) $I in L(V,W),I v=v$

微分(differential) $D in L(V,W),D v = v'$

积分(integral) $I in L(V,W),I v(x)= integral_0^1 v(x) dif x$

*Theorem*

$V$的基为$v_1,v_2,dots,v_n$;$W$的基为$u_1,u_2,dots,u_n$,存在唯一的线性映射$T$,使得$T v_i = u_i$

证明思路:围绕着$forall u in W,exists c_1,c_2,dots,c_n$,只用构造$T(c_1 v_1 + c_2 v_2 + dots + c_n v_n) = c_1 u_1 + c_2 u_2 + dots + c_n u_n$即可. 

== 线性映射的线性性

为了寻找其线性性,我们要先定义$L(V,W)$上的加法和数乘

*Definition*

定义$S,T in L(V,W)$

定义$(S+T)(v) = S(v) + T(v)$,$(lambda  S)(v) = lambda S(v)$

于是容易看出,$L(V,W)$是一个线性空间. 

*Definition*

定义线性映射的乘法$S in L(U,V),T in L(V,W)$,那么$(S T)(v) = S(T(v))$

*Theorem*

乘法的性质
+ 结合律$T_1T_2T_3 = T_1(T_2T_3)$
+ 幺元$I T = T I = T$,$I$是$L(V,V)$上的恒等映射
+ 分配率$(S_1 + S_2)(T) = S_1 T + S_2 T$,$S(T_1 + T_2) = S T_1 + S T_2$

需要注意的是,线性映射的乘法不具有交换律. 

== 零空间和值域

*Definition*

零空间(null space) $T in L(V,W)$,$T$的零空间就是$V$的一个子集,使得${v in V : T v = 0}$,记作$"null" T$,也叫做$T$的核空间(kernel space),记作$ker T$


单射(injective) $T in L(V,W),T v = T w => v = w$ 这样的$T$称为一个单射. 

*Theorem*
+ $ker T$是$V$的一个子空间
+ $T$是单射$<=>$$ker T = {0}$

*Proof*

对于命题1:取$v_1,v_2 in ker T$,$T(v_1 + v_2) = T v_1 + T v_2 = 0 + 0 = 0$;$T(lambda v) = lambda T v = 0$
对于命题2:$\"=>\"$由于$T$为单射,所以$T(v) = T(0) = 0 => v = 0$,于是$ker T = {0}$

$\"<==\"$ $T(v_1) = T(v_2) => T(v_1) - T(v_2) = 0 =>T(v_1 - v_2) = 0$,又$ker T = {0}$,$=> v_1 - v_2 = 0 => v_1 = v_2$

*Definition*

值域(range):对于一个函数$T : V -> W$,$T$的值域就是$W$的一个子集${T v}$,记作$"range" T$,也叫函数的像空间(image),记作$im T$. 

*Theorem*

$im T$是$V$的一个子空间

*Proof*

设$w_1,w_2 in im T$,那么$w = T(v_1 + v_2) = T v_1 + T v_2 = w_1 + w_2 in im T$,$T(lambda v) = lambda T v = lambda w in im T$

*Definition*

满射(surjective):如果某个映射$T:V->W$的像空间等于$W$,那么称$T$是一个满射. 

*Theorem*

*线性代数基本定理*:$T in L(V,W)$,$dim V$ = $dim ker T + dim im T$

于是容易得出:如果$T:V->W$,$dim W < dim V$,那么$T$一定不是单射. 如果$dim V < dim W$,那么$T$一定不是满射

显然,一个欠定的齐次线性方程组有非零解,非齐次线性方程组可能无解. (齐次线性方程组$T(v) = 0$,非齐次线性方程组$T(v) = v_0$)

== 矩阵

为了更加方便的表示线性映射,我们定义矩阵

*Definition*

设$m,n$都是正整数. 一个$m times n$矩阵$A$是一个在$FF$上的$m times n$矩形数组,写作:

#let matrix_m_n(x) = $mat(#x _"1,1",dots,#x _"1,n";dots. v,,dots. v;#x _"m,1",dots,#x _"m,m")$
$ A = #matrix_m_n("A") $

一些特殊矩阵:$I$是单位矩阵,除了对角线元素为$1$,其他均为$0$. 

下面来定义一个线性映射的矩阵表示

*Definition*

若$v_1,v_2,dots,v_n$是$V$的一组基,$w_1,w_2,dots,w_m$是$W$的一组基,且$T v_i = sum_j=1^m A_"i,j"w_j$,那么其矩阵表示$M(T)$就是$A$. 如果未指明$v_i$和$w_i$,可以记作$M(T,(v_1,v_2,dots,v_n),(w_1,w_2,dots,w_m))$


容易看出,$M(T)$的第$i$列和$v_i$的选取有关,而第$i$行和$w_i$的选取有关. 例如变换$T(x,y)=(8x+9y,2x+3y,x+y)$,在标准正交基($(1,0),(0,1)$,$(1,0,0),(0,1,0),(0,0,1)$)下的矩阵表示为$M(T) = mat(8,9;2,3;1,1)$

为了进一步扩展矩阵的意义,定义矩阵的加法、数乘

*Definition*

定义两个$m times n$矩阵$A,B$的和$ A + B = #matrix_m_n("A") + #matrix_m_n("B") =  mat(A_"1,1" + B_"1,1",dots,A_"1,n" + B _ "1,n";dots. v,,dots. v;A _"m,1" + B_"m,1",dots,A _"m,m" + B_"m,n") $

数乘$ lambda * A = #matrix_m_n($lambda * A$) $


容易看出,矩阵的加法就相当于线性映射的加法,矩阵数乘就相当于线性映射的数乘. 

考虑到线性映射还有叠加这一组合方法,我们下面定义矩阵的乘法. 

试探:$S,T$是两个线性映射,$S T$:$ S T(u_k) \
= S(sum_"r=1"^n C_"r,k" v_r) \
= sum_"r=1"^n C_"r,k" sum_"j=1"^m A_"j,r" w_j $

为了表示这种变换规律,定义矩阵乘法

*Definition*

矩阵乘法:设$A$是$n times k$矩阵,$B$是$k times m$矩阵,定义运算$(A B)_"i,j" = sum_"k=1"^k A_"i,k" B_"k,j"$,更加直观的,就是选取$A$的第$i$行和$B$的第$j$列,按元素依次乘在一起再求和,表示新矩阵第$i$行$j$列的元素. 

具体计算可以自己去试试. 

*Notation*

一种简明记法

$A_(j,dot)$指$A$的第j行形成的一个$m times 1$矩阵,$A_(dot,j)$指$A$的第j列形成的一个$1 times n$矩阵

于是对于矩阵的乘法有以下表示法

$ (A B)_(i,j) = A_(i,dot) B_(dot,j) $ $ (A B)_(dot,k) = A C_(dot,k) $

对矩阵乘法的另一种理解:线性组合 设$c = vec(c_1,c_2,dots,c_n)$,A为$m times n$矩阵,那么$A c$ = $c_1 A_(dot,1) + c_2 A_(dot,2) + dots + c_n A_(dot,n)$,换言之,$A c$就是对$A$列的线性组合,用$c$的每一个元来数乘. 

== 逆和同构

*Definition*

$A,B$是两个映射($n times n$矩阵),且有$A B = B A = I$,那么称$B$是$A$的逆(inverse),记作$B = A^(-1)$,$A$是可逆的(invertible)

*Theorem*

如果某矩阵（映射）可逆,那么其逆是唯一的. proof:若$A B = A C = I$,那么$C = C I = C (A B)  = (C A) B = B$

映射$V$可逆$<=>$映射$V$是单射满射（一一对应）

对于存在可逆隐射的两个空间,他们也有一些潜在的关系,下面加以定义. 

*Definition*

一个可逆映射可以称为同构(isomorphism)

两个空间中存在一个可逆映射,则这两个空间称为是同构的(isomorphic)

*Theorem*

两个向量空间同构$<=>$两个向量空间维度相同

设$dim V = n$,$dim W = m$,那么$L(V,W)$和$FF^(n m)$同构,于是$dim L(V,W) = dim V dim W$

为了统一表示线性映射,我们试着用矩阵相乘的方法来表示映射. 为了更好处理向量,我们定义向量的矩阵表示(matrix of a vector)

*Definition*

设$V$的一组基是$v_1,v_2,dots,v_n$,$v in V$,$v = a_1 v_1 + a_2 v_2 + dots + a_n v_n$,那么$M(v) = vec(a_1,a_2,dots,a_n)$叫做$v$的矩阵表示. 

这样之后,我们容易得到$M(T v) = M(T) M(v)$

== 算子

对于以上种种线性映射来说,有一类很特殊的是从$V$到$V$的映射. 我们对其进行一些定义. 

*Definition*

一个从$V$到$V$的线性映射定义为*算子*(operator),记$V$上所有算子构成的线性空间为$L(V)$

对于算子,也有一些很好的性质. 

*Theorem*

如果有限维向量空间中的算子$T in L(V)$,下面三个命题等价

- $T$可逆
- $T$是单射
- $T$是满射

== 积空间和商空间

*Definition*

线性空间的积:设$V_1,V_2,dots,V_n$是$FF$上的线性空间,定义$V_1 times V_2 times dots times V_n = {(v_1,v_2,dots,v_n),v_1 in V_1,v_2 in V_2,dots in V_n}$叫做这些空间的积. 

在积空间中的加法被定义为$(v_1,v_2,dots,v_n) + (u_1,u_2,dots,u_n) = (v_1 + u_1,v_2 + u_2,dots + u_n,v_n + u_n)$,数乘也类似$lambda (v_1,v_2,dots,v_n) = (lambda v_1,lambda v_2,lambda dots,lambda v_n)$

实际上就可以将$v_i$当成一个数,其运算规则就变成了一般向量的运算规则了. 

*Theorem*

积空间是一个线性空间

证明从略. 

对于积空间本身,我们也要有一些观察. $((1,2),(3,4,5))$和$(1,2,3,4,5)$似乎并没有什么本质上的差异. 那我们就可以去猜测$FF^n times FF^m$和$FF^(m+n)$有同构关系了. 事实也正是如此. 

*Theorem*

设$V_1,V_2,dots,V_n$都是有限维线性空间,$dim (V_1 times V_2 times dots times V_n) = dim V_1 + dim V_2 + dots + dim V_n$

*Proof*

选取每个$U$的一个基．对千每个$U$的每个基向量,考虑 $V_1 times V_2 times dots times V_n$ 的如下元素 : 第$j$个位置为此基向量,其余位置为$$0.  所有这些向量构成的组是线性无关的,且张成$V_1 times V_2 times dots times V_n$, 因此是积空间的基 ． 这个基的长度是$dim V_1 + · · ·+ dim V_n$

我们下面来定义子空间和向量的和. 

*Definition*

设$v in V$,$U$是$V$的子空间. 那么定义子空间和向量的和为:

$v + U = {v + u:u in U}$

我们称$v + U$是$V$的仿射子集(affine subset),$v+U$和$U$形成平行(parallel)关系. 


从几何的角度来看,$v + U$是将过原点的$U$平面向$v$方向平移的结果,所以有一定的几何直观. 很显然,一个仿射子集不是一个子空间($v != 0$)

为了描述相同性质的仿射子集,我们来定义商空间. 

*Definition*

设$U$是$V$的子空间,那么商空间就是所有平行于$U$的仿射子集的并. 定义为:$V\/U={v + U: v in V}$

*Theorem*

平行于$U$的两个仿射子集要么相等,要么不相交. 

即:$U$是$V$的子空间,$v,w in V$下列陈述等价
- $v - w in U$
- $v + U = w + U$ 
- $(v + U) sect (w + U) != nothing$ 

下面来定义商空间上的线性运算. 

*Definition*

定义加法和数乘分别是:

$(v + U) + (w + U) = (v + w) + U$,$lambda (v + U) = lambda v + U$

需要注意的是,对于同一个集合$v + U$,会有多种表示方法. 举例$y = x + 1$这个集合至少可以有$(-1,0) + (y = x)$和$(0,1) + (y = x)$两种表示方法. 为了说明加法和数乘是有意义的,需要有如下的证明. 

*Proof*

命题:若$v_1 + U = v_2 + U$,$w_1 + U = w_2 + U$,那么$(v_1 + w_1) + U = (v_2 + w_2) + U$

由上面的定理知,$v_1 - v_2 in U$,$w_1 - w_2 in U$,于是$(v_1 - v_2) + (w_1 - w_2) in U$,于是$(v_1 + w_1) - (v_2 + w_2) in U$,从而$(v_1 + w_1) + U = (v_2 + w_2) + U$

*Definition*

商映射:定义一个映射$pi: V -> V / U$,对任意$v in V$，$ pi (v) = v + U $

可以证明这个映射是一个线性映射.

*Theorem*

商空间的维数:如果$V$是有限维空间,那么$dim V = dim U + dim V / U$

== 对偶(Duality)

像(值域)是一个标量空间的线性函数也有一些有趣的性质，我们将这类函数单独拿出来讨论一下。

*Definition*

线性泛函(linear functional)是$L(V,FF)$的一个线性函数

*Example*

- 定义$phi: RR^3 -> RR$,$phi(x,y,z) = 3x+4y+5z$,$phi$是线性泛函
- 定义$phi:P(RR) -> RR$,$phi(p) = integral_0^1 p dif x$是线性泛函

线性泛函构成的空间也有研究的价值,下面给予定义

*Definition*

对偶空间(dual space)是线性泛函构成的空间,即$L(V,FF)$,记作$V'$,容易知道$dim V' = dim V$

对偶基(dual basis)是$V'$的一组基,也就是说，取$v_1,v_2,dots,v_n$,那么其对偶基也是一组线性泛函即
$ phi_j (v_k) = cases(1 "if" k = j,
                     0 "if" k != j) $

对偶映射(dual mapping):对于$T in L(V,W)$,定义对偶映射$T' in L(W',V')$,满足$phi in W'$,有$T'(phi) = phi circle.small T$

*Theorem*

对偶函数的代数性质：$(lambda T)' = lambda (T')$,$(S + T)' = S' + T'$,$(S T)' = T' S'$

*Definition*

零化子(annihilator):对于$U subset V$,$U$的零化子$U^0$定义为$U^0 = {phi in V': forall v in U,phi(u) = 0$.

*Theorem*

- 零化子是一个$V'$的子空间.
- 设$V$是有限维的，那么$dim U + dim U^0 = dim V$
- $V,W$有限维,$T in L(V,W)$
  - $dim ker T' = dim ker T + dim W - dim V$
  - $ker T = (im T)^0$
- $T$是满的当且仅当$T'$是单的.

我们知道，线性映射总是有对应的矩阵表示，我们理应好奇对偶映射在矩阵上的反应。下面定义这一点。

*Definition*

矩阵的转置(transpose),$A^T$:定义$n times m$矩阵$A$的转置$A$为$m times n$矩阵，$(A^T)_(i,j) = (A)_(j,i)$

*Theorem*

转置的代数性质:
- $(A+B)^T = A^T  + B^T$
- $(lambda A)^T = lambda A^T)$
- $(A B)^T = B^T A^T$

$M(T') = M(T)^T$

== 矩阵的秩(rank)

*Definition*

行秩和列秩:设$A$是$FF$上的$m times n$矩阵
- $A$的行秩是$A$诸行张成空间的维数。
- $A$的列秩是$A$诸列张成空间的维数。

*Theorem*

$im T$的维数等于$M(T)$的列秩

行秩等于列秩，统称为秩(rank),记作$"rank" A$

个人看来，线性泛函在后面用到的比较少，主要用到的可能还是转置和秩。所以最后的结论可能比前面的推到更加重要，具体为什么这里要用线性泛函引出这些内容，我也很懵
