puts "Caesar Cipher"

def caesar_cipher(word, number)
  letters=["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  i=0
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
  
  
puts "Input your message"
message=gets.chomp
puts "Input your cipher number"
num=gets.chomp.to_i
caesar_cipher(message, num)
