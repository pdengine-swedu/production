class Seminar
	include Mongoid::Document
	field :title, type: String
	field :description, type: String
	field :instructorName, type: String
	field :twitterHandle, type: String
	field :seminar_link, type: String
	field :additional_resource_link, type: String

	field :isOnline, type: Boolean
	field :isFree, type: Boolean
	field :startDate, type: DateTime
	field :endDate, type: DateTime

	# Address
	field :line_1, type: String
	field :city, type: String
	field :state, type: String
	field :zip_code, type: String

	has_and_belongs_to_many :tags
end
