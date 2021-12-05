solA ← (~×⍥(2∘⊥)⊢)≢<2×+⌿

solB ← {
   ⍝ A little bit hacky
   c02 ← 2⊥∊{⍵/⍨(⍺∘⊃¨⍵)=(≢>2×⍺⊃(⊃+/))⍵}/(⌽⍳9),⊂↓⍵
   oxy ← 2⊥∊{⍵/⍨(⍺∘⊃¨⍵)=(≢≤2×⍺⊃(⊃+/))⍵}/(⌽⍳12),⊂↓⍵
   oxy×c02
}

data ← '1'=↑⊃⎕NGET 'C:/data/03.txt' 1

solA data ⍝ 4103154
solB data ⍝ 4245351
