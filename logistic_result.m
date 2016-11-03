function f=logistic_result(beta,x,y,lamda)
[row_x,column_x]=size(x);
x=[x,ones(row_x,1)];
[fearture_num,T]=size(beta);
T=T-1;  %真正的迭代次数
t=0.01:0.01:1;
t=floor(t*T);
f=zeros(length(t),1);
for i=1:length(t)
    w=beta(:,t(i));
    f(i)=sum(log(exp(y'.*(w'*x'))+ones(1,row_x)))/row_x + lamda*norm(w,1);
end
figure 1
plot(T([1:length(t)]),f)

