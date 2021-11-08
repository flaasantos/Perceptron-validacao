 clc 
 clear all

M=load('iris_log.dat');
M = M(randperm(size(M,1)),:);


for k=1:150      
 %verifica a matriz de testes K vezes para encontrar os K-NN
    Teste=M(k,:);%VETOR de testes, pega 1 amostra
    aux=M;
    aux(k,:)=[];
    Treino=aux;    %treino, pega o restante das amostras    
    net=perceptron;
    net=train(net,Treino(:,1:4)',Treino(:,5:7)');    
   y = net(Teste(1,1:4)') %matriz de teste    
    
end

