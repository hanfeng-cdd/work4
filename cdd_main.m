clear;
clc;

load 'dataset1-a9a-training.txt'
lamda=1;    %Ϊʲôlamda=0.1������

beta=SGD(dataset1_a9a_training(:,1:end-1),dataset1_a9a_training(:,end),lamda);

logistic_result(beta,dataset1_a9a_training(:,1:end-1),dataset1_a9a_training(:,end),lamda);
