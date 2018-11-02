class Backer
 attr_accessor :name, :backed_projects

 def initialize(name)
   @name=name
   @backed_projects=[]
 end

 def back_project(project)
   @backed_projects << project
   # project.add_backer(self)
   project.backers << self
 end


end



#steven's solution with errors.
# class Backer
#  attr_accessor :name, :projects
#
#  def initialize(name)
#    @name=name
#    @projects=[]
#  end
#
#  def back_project(project_instance)
#    @projects << project_instance    # add project instance to @project array.
#    project_instance.backers << self
#
#  end
#
#
# end
