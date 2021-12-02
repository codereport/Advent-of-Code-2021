 solA ← {
    dirs ← 'forward' 'up' 'down'
    (f u d) ← +/dirs∘.{(⍎⊃⌽⍵)×⍺≡⊃⍵}' '∘(≠⊆⊢)¨⍵
    f×d-u
 }

 solB ← {
    parse ← {⍺∘.{(⍎⊃⌽⍵)×⍺≡⊃⍵}' '∘(≠⊆⊢)¨⍵}
      
    f  ← (⊂'forward') parse ⍵
    du ← 'down' 'up' parse ⍵

    f(×⍥{+/⍵})f×+\-⌿du
 }

 
data ← ⊃⎕NGET 'C:/data/02.txt' 1
      
solA data ⍝ 2102357
solB data ⍝ 2101031224
