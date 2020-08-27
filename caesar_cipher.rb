puts "Caesar Cipher"

def caesar_cipher(word, number)

  letters=["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  letters_upcase=["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  word_cipher=[]
  i=0

  while i<word.length do
    for x in 0..26
      if word[i]==" "
        word_cipher[i]=" "
      end
      if word[i]=="!" || word[i]=="?"
        word_cipher[i]=word[i]
      end

      if word[i]==word[i].upcase && word[i]==letters_upcase[x]
        if x+number<25
          word_cipher[i]=letters_upcase[x+number]
        else
          word_cipher[i]=letters_upcase[number-(26-x)]
        end
      end
      if word[i]==letters[x]
        if x+number<25
          word_cipher[i]=letters[x+number]
        else
          word_cipher[i]=letters[number-(26-x)]
        end
      end
    end
    i+=1
  end
  puts word_cipher.join
end

puts "Introduce the text"
phrase=gets.chomp
puts "Introduce the cipher number"
number=gets.chop.to_i
caesar_cipher(phrase,number)


