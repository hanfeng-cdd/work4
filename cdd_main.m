clear;
clc;

load 'dataset1-a9a-training.txt'
lamda=1;    %为什么lamda=0.1会上升

beta=SGD(dataset1_a9a_training(:,1:end-1),dataset1_a9a_training(:,end),lamda);

logistic_result(beta,dataset1_a9a_training(:,1:end-1),dataset1_a9a_training(:,end),lamda);
