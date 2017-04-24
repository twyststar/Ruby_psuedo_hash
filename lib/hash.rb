class MyHash
  define_method(:initialize) do
    @key_array = []
    @value_array = []
  end
  define_method(:keys) do
    @key_array
  end
  define_method(:values) do
    @value_array
  end
  define_method(:display) do
    output = []
    i = 0
    @key_array.length.times do
      output.push([@key_array[i],@value_array[i]])
      i+=1
    end
    output
  end

  #add default value as ""
  define_method(:my_store) do |key,value=""|
    @key_array.push(key)
    @value_array.push(value)
    self.display
  end

  define_method(:my_fetch) do |key|
    @value_array[@key_array.index(key)]
  end

  define_method(:has_key?) do |key|
    @key_array.include?(key)
  end

  define_method(:has_value?) do |value|
    @value_array.include?(value)
  end

  define_method(:length) do
    @value_array.length()
  end

  define_method(:merge) do |hash2|
    hash2.keys.each() do |hash2key|
      @key_array.push(hash2key)
    end
    hash2.values.each() do |hash2val|
      @value_array.push(hash2val)
    end
    self.display
  end
end
