require 'pry'
class PigLatinizer


    attr_accessor :piglatinized_phrase

    def piglatinize(phrase) 
        if phrase.split(' ').count > 1
            self.to_pig_latin(phrase)
    elsif phrase.downcase.index(/[aeiou]/) == 0
        phrase + "way"
      else
        vowel_index = phrase.index(/[aeiou]/)
        front_end = phrase.slice!(0..vowel_index-1)
        phrase + front_end +"ay"
      end
    end
    
    def to_pig_latin(phrase)
      word_array = phrase.split(" ")
      @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
      @piglatinized_phrase
    end

end