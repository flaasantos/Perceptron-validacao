 clc 
 clear all

M=load('iris_log.dat');
M = M(randperm(size(M,1)),:); %embaralha a matriz

for k=0:14      
 %verifica a matriz de testes K vezes para encontrar os K-NN
    Teste=M(k*10+1:10*(k+1),:);%matriz de testes, pega 10 amostras
    aux=M;
    aux(k*10+1:10*(k+1),:)=[];
    Treino=aux;    %o restante das amostras(140) ficam no treino
    
    net=perceptron;
    net=train(net,Treino(:,1:4)',Treino(:,5:7)');
    
   y = net(Teste(:,1:4)') %matriz de teste    
    
end

