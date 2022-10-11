# 实验环境
本次作业使用matlab和c++实现，MATLAB的版本为MATLABR2018b，c++用devc++、vscode或其他编译器均可
# 程序运行
## 生成数据集
文件：get_random_sign.m 和 writesign.m
使用：使用MATLAB打开writesign.m后，会调用get_random_sign.m文件，生成数据集（5门课程的Excel表格）
## 结果测试
文件：get_E.cpp
使用: 先将get_E.cpp放入get sign文件夹，使用c++编译器打开get_E.cpp文件，文件输出当前数据集的E值、总有效点名次数和总点名次数，同时生成5门课程点名方案的Excel文件
## 结果
![alt](https://img-community.csdnimg.cn/images/356ff1b0c7784764aebf5b62607adec0.png)

| num值 |平均E值 | 
| ----------------- |--------------- | 
| 1 |0.5945 | 
| 5 |0.5862 | 




