class Hash
  def keys_of(*arguments)
    # code goes here
    arr = []
    if arguments.kind_of?(Array)
      arguments.each do |key|
        self.each do |keys, values|
          if values == key
            arr << keys
          end
        end
      end
    else
      self.each do |keys, values|
        if values == arguments
          arr << keys
        end
      end
    end
    arr
  end
end
