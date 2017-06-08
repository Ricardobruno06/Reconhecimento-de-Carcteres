

%Dados de entrada e o desejado, criando o gr?fico inicial.

%Cria 100 valores de entrada

EntradaTeste = [1 1 2 2 1; 
                1 2 2 1 1; 
                1 2 1 1 1; 
                2 2 2 1 1; 
                1 1 1 1 2];

% Fun??o de Sa?da
Desejado = [1 2 3 4 5];

disp (EntradaTeste)
disp (Desejado)

%Treinamento da Rede Neural Artificial (RNA) para resolu??o da fun??o
%Seno.

%Quantidades de neurônios na camada de Entrada In
In = 1;

%Quantidade de neur?nios na camada Escondida H
H = 20;

%Quantidade de neur?nios na camada de Saida Out
Out = 1;

%Definindo a taxa de aprendizagem - Valor Eta.
eta = 0.00035;

%Se a fun??o de ativa??o ? linear, ent?o Defini-se o valor da constante k.
k = 1; 

%Algoritmo
    
load pesoteste Woh Whi

%Carrega o valor dos dados de teste

    
    %Calculo da entrada da camada escondida.
    net_h = Whi*EntradaTeste;
     
    %Calculo da sa?da da camada escondida - aplicar fun??o de ativa??o.
    Output_h = logsig(net_h);
             
    %Calculo da entrada da camada de sa?da. 
    net_o = Woh*Output_h;
  
    %Calcular a sa?da da camada de sa?da (Sa?da da RNA).
    
    %calculo do valor da sa?da:
    Output = k*net_o;
         
    %Calcular o erro da sa?da.
    Erro = Desejado - Output;