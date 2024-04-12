class Museum

  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommendations = [] 
    patron.interests.each do |interest|
      @exhibits.each do |exhibit| #nested iteration
        if interest == exhibit.name #guard statement
          recommendations << exhibit
        end
      end
    end
    recommendations
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    #return hash
    #each key is an exhibit
    #value is an array of patrons with interest in it
    #look at each exhibit, and match with patrons who have interest in it
    exhibit_interest = {}
    @exhibits.each do |exhibit|
      exhibit_interest[:exhibit] = []
      binding.pry
    end
  end

end