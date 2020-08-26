puts "Caesar Cipher"

def caesar_cipher(word, number)

  letters=["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  letters_upcase=["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N" "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  word_cipher=[]
  while i<word.length do
    for x in 0..25
      if word[i]==letters[x]
        if (x+number) <25
          word_cipher[i]=letters[x+number]
        else
          word_cipher[i]=letters[number-(26-x)]
        end
      end
    end
    i+=1
  end
  puts word_cipher.join("")
end