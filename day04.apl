boardValue ← {
   ⍝ ⍺ = calls, ⍵ = board
   p ← ,\⍺                   ⍝ prefixes
   i ← ⊃⍸(5∨.=+/,+⌿)∘(⍵∊⊢)¨p ⍝ index
   l ← ⊃⌽i⊃p                 ⍝ last number
   i,l×+/,⍵×~⍵∊i⊃p
}

data ← ⊃⎕NGET 'C:/data/04.txt' 1

c ← ⍎¨','(≠⊆⊢)⊃data                    ⍝ calls
b ← {⍎¨5 5⍴⍵}¨,/100 6⍴' '∘(≠⊆⊢)¨1↓data ⍝ boards

⊃⌽1↑(⊂⍤⍋⌷⊢)↑c∘boardValue¨b ⍝ Solution A = 51776
⊃⌽1↑(⊂⍤⍒⌷⊢)↑c∘boardValue¨b ⍝ Solution B = 16830
