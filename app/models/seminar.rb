class Seminar
	include Mongoid::Document
	include Mongoid::Search
	include Mongoid::Paperclip


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
	has_mongoid_attached_file :thumbnail

	search_in :title, :description, :instructorName, :tags => :title

	def self.search(search)
		self.full_text_search(search)
	end

end
