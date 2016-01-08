class Url < ActiveRecord::Base
	validates :long_url, presence: true
	validates :short_url, presence: true
	validates_format_of :long_url, :with => URI.regexp

    def self.reterive_short_url(long_url)
    	x = self.find_by(long_url: long_url)
    	if x
	    	x.short_url
	    end
    end
end

