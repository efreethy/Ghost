class Dictionary
  attr_reader :contents, :fragment, :is_over

  def initialize(file)
    @contents = File.readlines(file).map(&:chomp)
    @fragment = ""
    @is_over = false
  end

  def valid_fragment?(letter)
    temp_fragment = @fragment + letter
    temp_contents = @contents.select { |word| word.start_with?(temp_fragment) }

    if (temp_contents.length == 1) && (temp_fragment.length == temp_contents[0].length)
      @is_over = true
    end

    if temp_contents.any? { |word| word.length > fragment.length }
      @contents.select! { |word| word.start_with?(temp_fragment) }
      @fragment = @fragment + letter
      return true
    else
      return false
    end
  end

  def valid_letter?(letter)
    ("a".."z").to_a.include?(letter) ? true : false
  end

  def raise_invalid_guess
    puts "Guess Invalid"
  end

  def valid_play?(letter)
    if (valid_letter?(letter) && valid_fragment?(letter))
      return true
    else
      raise_invalid_guess
      return false
    end
  end


end
