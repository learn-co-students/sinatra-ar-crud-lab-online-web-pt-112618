#Placeholder for a model

class Article < ActiveRecord::Base
  attr_accessor :title, :content
  
  def initialize(title, content)
    @content = content
    @title = title
  end
end