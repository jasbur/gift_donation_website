class MainController < ApplicationController

  def index
    @children = Child.find(:all)
  end

end
