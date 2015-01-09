#method word_times returns the number of instances of the argument found in the string

class String
  define_method(:word_times) do |to_find|

    words_to_check = downcase().split(' ')
    total_times = 0

    words_to_check.each do |word|
      if word.==(to_find.downcase())
        total_times += 1
      end
    end

    total_times

  end
end
