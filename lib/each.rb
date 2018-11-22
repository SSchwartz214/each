class CustomEach
  def initialize(collection)
    @collection = collection
    @length = collection.length
    @container = []
  end
  
  def iterate
    i = 0
    while i < @length
      @container << @collection[i]
      i += 1
    end
    @container
  end

  def iterate_and_multiply_by_2
    i = 0
    while i < @length
      @container << (@collection[i] * 2)
      i += 1
    end
    @container
  end
end