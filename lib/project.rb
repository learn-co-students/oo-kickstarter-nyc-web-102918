require 'pry'
class Project
 attr_accessor :backers, :title

 def initialize(title)
   @backers=[]
   @title=title
   #@backer_name = backer_name
 end

 def add_backer(backer_instance)
   @backers << backer_instance        # add backer_instance to @backers array.
   #(also adds the project to the backer's backed_projects array)

   backer_instance.back_project(self)  # backer B1 instance call the methode back_projects with arugment P1

                                      # without this line: backer will never know its project.
                                     # how this started the relationship?
                                      # how the backer_instance call the back_project in Backer class.
                                      # understand the self.
                                      #but how it add the project to the backer's backed_project array?
                                      # p1 = Project.new("hankproject")
                                      # b1 = Backer.new("hank")
                                      # p1.add_backer(b1)

 end

end
