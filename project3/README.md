时间：2021.06.18

project内容：
1. 求解单自由度带阻尼的系统在谐和激励（F*sin(wt))的作用下的运动微分方程。
2. 得到 transmissibility 关于  frequency ratios 𝜔𝑓⁄𝜔𝑛  和  damping factors C/Cc 的关系式（关系式可见report.pdf文件中的附件）。
3. 借用matlab画出这个关系式的图。
4. 根据第二问的约束条件，根据这个关系式进行进一步分析和运算。

--------------------------
文件组成：

1. pdf
report.pdf  --report，报告，详细的解题过程
Isolating the Source of Vibration.pdf  --详细的问题描述

2. png和txt
Question1_plot_Tm.png  --第一问的结果图
Question2Results.txt  --第二问的结果输出

3. m文件
calculateTm.m  --解决第一问的脚本文件，用微分方程解析式的计算transmissibility 并画出结果图。
calculateQuestion2.m  --基于第一问所用的微分方程解析式，根据第二问的约束条件得到所需的结果，并输出结果到文件Question2Results.txt中。
--------------------------

运用：
这个模型旨在分析单自由度、带阻尼的系统在受迫作用下的运动情况，此类震动模型在生活中很常见，其理论模型见问题描述文档（Isolating the Source of Vibration.pdf）。