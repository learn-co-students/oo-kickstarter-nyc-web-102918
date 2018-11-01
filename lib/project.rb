# require_relative './backer.rb'

class Project
  attr_accessor :backers, :title

  def initialize(title)
    @backers=[]
    @title=title
    #@backer_name = backer_name
  end

  def add_backer(backer)
    @backers << backer
    if backer.backed_projects.include?(self) == false
      backer.backed_projects << self
    end
    # backer.backed_projects << self
  end

end

# p1 = Project.new("new project")
# p1.add_backer(backer_instance
