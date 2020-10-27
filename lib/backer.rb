require "pry"
class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    binding.pry
    if project.backers.find(self) == self
      break
    else
      project.add_backer(self)
    end
  end

end
