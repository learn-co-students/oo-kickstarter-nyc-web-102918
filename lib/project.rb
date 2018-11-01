class Project
  attr_accessor :backers, :title

  def initialize(title)
  @backers = []
  @title = title
  end

  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.backed_projects << self
  end
end
