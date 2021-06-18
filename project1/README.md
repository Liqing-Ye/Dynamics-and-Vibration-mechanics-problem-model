时间：2021.04.20

peoject内容：
双个用弹簧连接的货运列车的运动问题。根据两车的限制条件的不同（摩擦系数不同，有无制动等），分析两车在下坡过程中弹簧的伸缩情况。

--------------------------
文件组成：

1. pdf
A Double-Car Freight Train Problem.pdf  --问题的详细描述
report.pdf  --报告，解决问题的详细过程描述

2. m
fmincon().m  --脚本文件，根据手动计算所得到的简化式，借助matlab的内置函数fmincon(), 得到梯度迭代下降后的局部最优解。
--------------------------

运用： 多节货运列车的运动问题应该类似，report中也已经提到多车的分析问题，但未经确定是否正确。

缺陷： 如果考虑弹簧在运动过程中发生振动的情况，这个问题可以复杂化，模型也将更加接近于实际问题的求解。