

/- Lista 3 do EAD

Questão 2- 
Um crime é cometido por uma e somente uma pessoa e há quatro suspeitos: Paulo, Rodrigo, Henrique e Felipe.
Interrogados eles fazem as seguintes declarações:
Felipe: Rodrigo mente quando diz que eu não sou inocente.
Paulo: Rodrigo não é inocente.
Henrique: Eu sou inocente.
Rodrigo: Felipe não é inocente.
Represente em lógica proposicional as sentenças acima. Com base nestas sentenças lógicas, mostre que se o
inspetor usar Tableaux irá concluir que se o Henrique for culpado então somente Felipe fala a verdade. Mostre o
Tableaux que suporta a conclusão do inspetor.

P : paulo
F : felipe
H  : henrique
R : rodrigo

c: x é culpado
v: x fal2a a verdade

constant P : U → U 
 constant R : U → Prop 
 constant H : U → Prop 
 constant F : U → Prop 

-/

--resposta
 variable U : Type 
 variable C : U 
 variable V : U 
 variables P R H F: U → Prop 
 


#check ((P C ∨ R C ∨ H C ∨ F C ) ∧ (P C → (¬ R C ∧ ¬ H C ∧ ¬ F C)) ∧ (R C → (¬ P C ∧ ¬ H C ∧ ¬ F C)) ∧ (H C → (¬ R C ∧ ¬ P C ∧ ¬ F C)) ∧ (F C → (¬ R C ∧ ¬ H C ∧ ¬ P C)) ∧ (H V ↔ (F C → ¬ R V)) ∧ (P V ↔ R C ) ∧ (H V ↔ ¬ H C) ∧ (R V ↔ F C)) → (H C → (F V ∧ ¬ P V ∧ ¬ H V ∧ ¬ R V))
