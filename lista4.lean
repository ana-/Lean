
/- 

Lista 3 do EAD 


Questão 3- Existem duas caixas, A e B. Um aviso na caixa A diz “O aviso na caixa B é falso e o ouro está na caixa B”. Um aviso
na caixa B diz “O aviso na caixa A é verdadeiro e o ouro está na caixa B”. Assumindo que existe ouro em uma das
caixas, qual delas contém o ouro? Justifique sua resposta em termos lógicos.

A : caixa A
B: caixa B

v : O aviso na caixa é verdadeiro 
O : ouro na caixa 


-/

--resposta

 variable U : Type 
 variable O : U 
 variable V : U 
 variables  A B : U → Prop 


#check ((A V ↔ (¬ B V ∧ B O)) ∧ (B V ↔ (A V ∧ B O )) ∧ (A O ∨ B O)) → A O

