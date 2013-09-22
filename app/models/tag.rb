class Tag
	include Mongoid::Document
	field :title, type: String

	index({ title: 1 }, { unique: true, name: "title_index" })

	has_and_belongs_to_many :seminars
end