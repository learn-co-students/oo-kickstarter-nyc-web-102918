class Project

attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  #bac = Backer
  def add_backer(backer)
    @backers << backer #Adding instances of teh Backer to a array, backers
    backer.backed_projects << self
  end

end
