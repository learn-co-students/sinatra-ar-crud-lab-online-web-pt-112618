#Placeholder for a model

class Article < ActiveRecord::Base
  def change
    create_table :article do |t|
    t.string :title
    t.string :content
    end 
  end 
end 
