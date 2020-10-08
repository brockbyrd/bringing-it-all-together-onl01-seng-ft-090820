class Dog

  attr_accessor :name, :breed, :id

  def initialize(attr_hash)
    attr_hash.each do |k, v|
      self.send("#{k}=", v)
    end
  end

end
