% EXERCICIOS DE REDES SEMÂNTICAS COM PROLOG

progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).
masculino(joao).
masculino(jose).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).

% Exercicio 1: Desenhar a árvore genealógica;

% Exercicio 2: Escreva uma consulta para responder à seguinte pergunta: “Ana é progenitora de Jorge?”
% ?-progenitor(ana, jorge).

% Exercicio 3: Escreva uma consulta para retornar os progenitores de Íris.
% ?-progenitor(X, iris).

% Exercicio 4: Escreva uma consulta para retornar os progenitores de José.
% ?-progenitor(X, jose).

% Exercicio 5: Escreva uma consulta para retornar todos os pares progenitor/filho da base de conhecimento.
% ?-progenitor(X, Y).

% Exercicio 6: Escreva uma consulta para retornar todos os avós de Jorge.
% ?-progenitor(X, Y), progenitor(Y, jorge).

% Exercicio 7: Escreva uma consulta para retornar todos os netos de João
% ?-progenitor(joao, X), progenitor(X, Y).

% Exercicio 8: Escreva uma consulta para retornar todos os progenitores comuns de José e Ana
% ?-progenitor(X, jose), progenitor(X, ana).

% Exercicio 9: Pode-se definir o predicado filho/2 como sendo o inverso de progenitor/2: se X é progenitor de Y, então Y é filho de X. Escreva uma regra para computar o predicado filho/2 e teste com algumas consultas.
filho(Filho, Progenitor) :- progenitor(Progenitor, Filho).

% Exercicio 10: Escreva regras para os predicados mãe/2 e pai/2.
pai(Progenitor, Filho) :- 
	progenitor(Progenitor, Filho),
	masculino(Progenitor).
mae(Progenitor, Filho) :- 
	progenitor(Progenitor, Filho),
    feminino(Progenitor).
% Exercicio 11: Escreva regras para os predicados avô/2 e avó/2.
avô(Avo, Neto) :-
    progenitor(Avo, Progenitor),
    progenitor(Progenitor, Neto),
    masculino(Avo).
avó(Avo, Neto) :- 
    progenitor(Avo, Progenitor),
    progenitor(Progenitor, Neto),
    feminino(Avo).
% Exercicio 12: Escreva uma regra para o predicado irmã/2, teste com a consulta irmã(X, iris).
irmã(Irma, Pessoa) :-
    progenitor(P, Irma),
    progenitor(P, Pessoa),
    feminino(Irma),
    Irma \= Pessoa.
% Exercicio 13: Desenvolva um modelo no prolog para criar um conjunto de fatos e regras que definam diferentes tipos de veículos e suas características, e, em seguida, fazer consultas para identificar veículos com base em critérios específicos, como:
% Regra para determinar se X é um veículo motorizado
% Regra para determinar se X tem quatro rodas
% Regra para determinar se X é usado para transporte pessoal
% Regra para determinar se X é usado para transporte comercial
veiculo(carro).  
veiculo(moto).  
veiculo(bicicleta).  
veiculo(caminhao).
tem_motor(carro). 
tem_motor(moto). 
tem_motor(caminhao).
rodas(carro,4). 
rodas(moto,2). 
rodas(bicicleta,2). 
rodas(caminhao,6).
uso_pessoal(carro). 
uso_pessoal(moto). 
uso_pessoal(bicicleta).
uso_comercial(caminhao).

motorizado(X) :- 
    veiculo(X), 
    tem_motor(X).

quatro_rodas(X) :- 
    rodas(X, 4).

transporte_pessoal(X) :- 
    uso_pessoal(X).

transporte_comercial(X) :- 
    uso_comercial(X).

