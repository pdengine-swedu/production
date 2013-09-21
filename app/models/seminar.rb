class Seminar
  include Mongoid::Document
  field :description, type: String
  field :title, type: String
end
