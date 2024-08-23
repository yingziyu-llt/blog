#import "../template.typ":*

#let ker = $"Ker"$
#let im = $"Im"$

= 本征值，本征向量，不变子空间

我们已经建立了一些工具来描述一个算子的结构，我们下面来学习描述一个算子的其他角度。

== 不变子空间

先假设$V$有一种直和分解$V = U_1 plus.circle U_2 plus.circle dots plus.circle U_n$,如果我们认真的去构造$U_1,U_2,dots,U_n$，
那么我们有可能可以构造出某种分解$forall u in U_i,T(u) = v in U_i$.$U_i$是一个很有趣的子空间。下面来定义这个子空间。

#definition("不变子空间(invariant subspace)")[
    $T in L(V)$,$V$的一个子空间$U$满足$forall u in U$,$T(u) in U$,那么我们称$U$是关于$T$的一个不变子空间(invariant subspace)。
]

#example("不变子空间")[
    + ${0}$ -> 是一个不变子空间，$T(0) = 0$
    + $V$ -> 是一个不变子空间
    + $ker T$ -> 是一个不变子空间
    + $im T$ -> 是一个不变子空间，$T(u) in im T$
]

=== 特征值和特征向量

我们先来讨论一维的不变子空间

对于某一维的子空间$U = {mu v: mu in FF}$，若它是一个不变子空间，那么一定有$T u in U$，又由于它是一维的，于是有$T u = lambda u$。
一个向量做变换后其方向没有改变，长度以某个倍率增加，是一个有趣的性质。我们对其加以定义

#definition("特征值(eigenvalue)")[
    若$T in L(V)$,$T(v) = lambda v (v != 0)$，那么称$lambda$是$T$的一个特征值(eigenvalue)
]

#theorem("特征值的判定定理")[
    若$T in L(V)$,$V$是有限维向量空间，$lambda in FF$,下面四个条件等价：
    + $lambda$是$T$特征值
    + $T - lambda I$不是单射
    + $T - lambda I$不是满射
    + $T - lambda I$不可逆
]

#definition("特征向量(eigenvector)")[
    若$T in L(V)$,$T(v) = lambda v (v != 0)$，那么称$v$是$T$的一个特征向量(eigenvector)
]

#theorem("特征值的线性独立性")[
    从属于不同特征值的特征向量是线性独立的
]

#quote("证明")[
    设$v_1,v_2,dots,v_n$是$T$的特征向量，且其特征值都不相等，先假设这些向量线性相关。取一个最小的$k$，使得$v_k in "span"(v_1,v_2,dots,v_(k-1))$

    于是有$v_k = a_1v_1 + a_2v_2 + dots + a_n v_n$ (1).

    用$T$作用于左右两边，有$lambda_k v_k = lambda_1 a_1 v_1 + lambda_2 a_2 v_2 + dots + lambda_(k-1o) a_(k-1) v_(k-1)$ (2)
    
    用(2)减去(1)左右两边乘$lambda_k$,得:$a_1(lambda_1 - lambda_k) v_1 + a_2(lambda_2 - lambda_k)v_2 + dots + a_(k-1) (lambda_(k-1) - lambda_k) v_(k-1) = 0$，于是$a_1 = a_2 = dots = a_(k - 1) = 0$。

    $v_k = 0$，与特征向量的定义矛盾。故证。
]


