/- Exercício 5

Formalize os argumentos abaixo e determine quais são válidos. Justifique via tabela verdade.

-/ 


-- (a) Se Jones é um comunista, então Jones é ateu. Jones é ateu. Logo, Jones é comunista.
-- resposta 

/- NÃO ESTÁ BOM
 PRIMEIRO, IDENTIFIQUE AS PROPOSIÇÕES:
p : jONES É COMUNISTA
q : jONES É ATEU
SEGUNDO, UMA FÓRMULA PARA CADA AFIRMAÇÃO.
O ARGUMENTO FICA
  p → q, q ⊧ p  (esse símbolo é feito escrevendo \Vdash)
POR FIM, PODE MONTAR A FÓRMULA COMPLETA
#CHECK ((p → q) ∧ q) → p
ACHO QUE AQUI SERIA MAIS INTERESSANTE USAR O MODELO EXAMPLE, 
PARA IDENTIFICAR PREMISSAS E CONCLUSÃO (veja abaixo).
-/


/-

Example x Theorem :

The example command states a theorem without 
naming it or storing it in the permanent context. 
Essentially, it just checks that the given term has the indicated type. 

The Theorem: it is never necessary to unfold the “definition” of a theorem;
 by proof irrelevance, any two proofs of that theorem are definitionally equal. 
 Once the proof of a theorem is complete, typically we only need to know that the proof exists; 
 it doesn’t matter what the proof is. 
 In light of that fact, Lean tags proofs as irreducible, which serves as a hint to the parser (more precisely, the elaborator) 
 that there is generally no need to unfold it when processing a file.
  In fact, Lean is generally able to process and check proofs in parallel, since assessing the correctness of one proof does not require knowing the details of another.

-/ 



 /- variables p q : Prop
example (h₁ : p → q) (h₂ : q) : p := sorry
--ou
example : ((p → q) ∧ q) → p := sorry

-- NOTE QUE NÃO É ESSA FÓRMULA QUE QUEREMOS VERIFICAR SE É TAUTOLOGIA.
#check ( p → q ) ∧ (q → p)

-/
/- b) Se a temperatura e a pressão do ar estavam constantes, então não houve chuva. A temperatura permaneceu
-- constante. Portanto, se choveu, então a pressão do ar não se manteve constante.
--resposta 

t : Temperatura constante
p: Pressao constante
c: houve chuva 

-/
variables t p c : Prop 
example (h1 : t ∧ p) (h2 : ¬ c) : c → ¬ p := sorry
#check (((t ∧ p ) → ¬ c ) ∧ t) → (c → ¬ p) 

/- (c) Se Gorton ganhar a eleição, os impostos subirão se o déficit permanecer alto. Se Gorton ganhar a eleição,
o déficit permanecerá alto. Ou seja, se Gorton ganhar, haverá aumento de impostos.
resposta 

g: Gorton ganhará a eleição
i: impostos subirão
d: déficit alto


-/

variables g i d : Prop 
example (h1: g → d → i) (h2: g → d) : g → i := sorry
#check (g → d → i) ∧ (g → d ) → (g → i )

/- d) Se o número x termina em 0, então é divisível por 5. O número x não termina em 0. Logo, x não é
divisível por 5.

n : x termina em zero
s : x divisivel por 5

--/ 

variables n s : Prop 
example (h1: n → s) (h2: ¬ n) : ¬ s := sorry
#check ((n → s) ∧ ¬ n) → ¬s

/-
(e) Se a = 0 e b = 0, então ab = 0. Mas ab , 0. Portanto, a , 0 e b , 0.

Professora não entendi essa questão
-/

 /- (f) Uma condição suficiente para f ser integrável é que g seja limitada. Uma condição necessária para que h
seja contínua é que f seja integrável. Logo, se g é limitada ou h é contínua, então f é integrável.


f : f é integravel
l : g é limitada
h : h é continua 
--/



variables f l h : Prop 
example (h1: l → f) (h2: h → f) :  (l ∨ h) → f := sorry
#check (l → f) ∧ ( h → f) → (l ∨ h ) → f

/-
g) Smith não pode, ao mesmo tempo, ser maratonista e fumante. Smith não é maratonista. Logo, Smith é
fumante.

m : smith é maratonista
a: smith é fumante
--/

variables  m a: Prop 
example (h1: ¬ (m ∧ a ) ) (h2: ¬ m) : a := sorry
#check (¬ (m ∧ a) ∧ ¬ m) → a

/-
(h) Se Jones dirigiu o carro, Smith é inocente. Se Brown disparou a arma, Smith não é inocente. Portanto,
se Brown disparou a arma, então Jones não dirigiu o carro.

j: jones dirigiu o carro 
o: smith é inocente
b: brown disparou a arma


-/

variables j o b : Prop 
example(h1: j → o ) (h2: b → ¬ o) : b → ¬ j := sorry
#check  (j → o ) ∧ (b → ¬ o) →  (b → ¬ j )