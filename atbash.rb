class Atbash

  ALPHABET = ('a'..'z').to_a
  DEFAULT_CIPHER = ALPHABET.reverse

  def initialize(cipher = DEFAULT_CIPHER)
    @cipher = cipher
  end

  def encrypt(message)
    translate(ALPHABET, @cipher, message)
  end

  def decrypt(message)
    translate(@cipher, ALPHABET, message)
  end

  private def translate(from, to, text)
    text.downcase!

    translated_message = ""
    text.each_char do |c|
      position = from.index(c)

      if position
        translated_message << to[position]
      else
        translated_message << c
      end
    end

    translated_message
  end
end