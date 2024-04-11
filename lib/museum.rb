class Museum

  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    interests_and_exhibits = [] #combo array of interests and exhibit names
    #check patron.interests array. See if any elements match @exhibits array. 
    #exhibits array are objects, need to isolate exhibit.name
    #Return array.
    #combine the arrays? Then look for duplicates? using .tally, 
    #then anything over 1 could be the match
    patron.interests.each do |interest|
      interests_and_exhibits << interest
    end
    @exhibits.each do |exhibit|
      interests_and_exhibits << exhibit.name
    end
    #now we have array with duplicates. We want to know the duplicates. 
    duplicates = interests_and_exhibits.select do |name|
      interests_and_exhibits.count(name) > 1
    end
    duplicates.uniq
  end



end