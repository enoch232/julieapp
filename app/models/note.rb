class Note < ActiveRecord::Base
	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	end
	has_attached_file :image, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: ""
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
