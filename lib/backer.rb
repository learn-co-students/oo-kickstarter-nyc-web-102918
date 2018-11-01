class Backer
attr_accessor :backed_projects, :name

  def initialize(name)  #takes a name on initialization
    @backed_projects = []
    @name=name
  end

  def back_project(project) #accepts a Project as an
    # argument and stores it in a backed_projects array

    @backed_projects << project
    #self referts to backed_project in this
    #also adds the backer to the project's backers array
     if project.add_backer(self)
        project.backers.include?(self)
     end

  end

end
