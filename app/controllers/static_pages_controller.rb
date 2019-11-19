class StaticPagesController < ApplicationController
 def new
    @staticpages = Staticpages.All
 end
 
 def weather
 end

 def recipes
 end

 def facts
 end

end
