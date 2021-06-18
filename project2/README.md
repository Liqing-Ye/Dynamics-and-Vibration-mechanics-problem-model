时间：2021.06.16
project内容：
三连杆的联动问题，具体到分析三条杆的角速度和角加速度的变化情况。
已知量：其中一条杆的角速度和角加速度，三条杆的长度，两个固定点的坐标位置。（详细的问题描述见文件project2.pdf）

--------------------------------------------
文件组成:

1. 四张图片：
Angular Acceleration of L1 L2 L3 (theta).png    --角加速度关于角度θ[0,2Π]的变化情况
Angular Acceleration of L1 L2 L3 (time).png    --角加速度关于时间t（θ[0,2Π]的时间周期内）的变化情况
Angular Velocity of L1 L2 L3 (theta).png    --角速度关于角度θ[0,2Π]的变化情况
Angular Velocity of L1 L2 L3 (time).png    --角速度关于时间t（θ[0,2Π]的时间周期内）的变化情况

2. 三个matlab文件：
accelerationSolution.m   --求三条杆的角加速度的函数
velocitySolution.m  --求三条杆的角速度的函数
project2_check.m  --调用上面这两个函数的脚本文件，并画图

3.pdf文件
project2.pdf  --这个project的题目介绍说明
report.pdf  --report，详细的解题过程
--------------------------------------------------

运用：三连杆的运动模型，分析其动态运动情况。

待改进：思考能不能用matlab或其他工具（unity？solidworks？）进行仿真运动，进而直接进行分析。