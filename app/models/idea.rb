class Idea
  include Mongoid::Document
  
  field :title,           :type => String
  field :description,     :type => String
  
  ## Relationships
  embeds_one :creator
  embeds_many :comments
  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags
  
end
