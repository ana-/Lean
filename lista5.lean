/- 

Lista 3 do EAD

Questão 4-  Considere as seguintes informações:
• Se o professor der um teste, então os alunos vão bem ou mal no teste.
• Se os alunos forem bem, então o professor vai achar que o teste estava fácil e ficará frustrado.
• Se os alunos forem mal, então o professor vai achar que os alunos não aprenderam nada de lógica e ficará
frustrado.
Queremos saber se podemos, a partir do texto, concluir que
1. Se o professor der um teste, então o professor ficará frustrado.
2. Se o professor não der um teste, então o professor não ficará frustrado.

P : “o professor dá um teste”
F : “o professor fica frustrado”
B : “os alunos vão bem no teste” 
L : “os alunos aprenderam lógica” 
T : “o teste está fácil


-/

--resposta 
-- Existe outra possível conclusão dessas premissas? 

variables P F B L T : Prop 

#check ((P → (B ∨ ¬ B))∧ (B → (T ∧ F)) ∧ (¬ B → (¬ L ∧ F))) → (P → F)
#check ((P → (B ∨ ¬ B))∧ (B → (T ∧ F)) ∧ (¬ B → (¬ L ∧ F))) → (¬ P → ¬ F)