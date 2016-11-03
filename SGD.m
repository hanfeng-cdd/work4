function beta =SGD(x,y,lamda)
[row_x,column_x]=size(x);
x=[x,ones(row_x,1)];  %加入全1的特征维度
column_x=column_x+1;

%%
%初始化参数
r0=0.1;   %r=r0/(lamda*t);
%lamda=1;    %之后通过交叉验证
T0=0.1;
T=floor(row_x*T0);   
beta=zeros(column_x,T+1);
%%
%随机选择一个点，进行更新beta
x_choose_index=randi(row_x,1,T);  %一共选择T个
% dete=zeros(column_x,1);
% dete(1)=0.001;

for t=1:T
    
    r=r0/(lamda*t);
    xc=x(x_choose_index(t),:)';
    yc=y(x_choose_index(t));
    
    beta1=beta(:,t);
    beta1(beta1>0)=1;
    beta1(beta1<0)=-1;
    gbeta=(xc*(-yc*exp(-yc*beta(:,t)'*xc))/(1+exp(-yc*beta(:,t)'*xc))+lamda*beta1);
    beta(:,t+1)=beta(:,t)-r*gbeta;
    %%
    %记录下f的值
    
    
    %%
    %检验梯度是否求对
%     beta2=beta(:,t)+dete;
%     f=log(1+exp(-yc*beta(:,t)'*xc))+lamda*norm(beta,1);
%     f_2=f+dete'*gbeta;
%     f2=log(1+exp(-yc*beta2'*xc))+lamda*norm(beta2,1);
    
    
    

end
end