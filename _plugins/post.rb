module Jekyll

  class Post

    def thumb_url
    	# Used thumbnail optionally specified in YAML
    	return self.data['thumb'] if self.data['thumb']

    	# Use first image found as thumbnail
    	self.content.each_line do |line|

  			if line.index("/images/")
  				part = line.partition("/images/")
  				part = part[2].partition(" ")
  				part = part[0].chop
  				return "/images/" + part
  			end

  		end

  		# Use default image because nothing was found
    	"/images/hitler_rainbow.jpg"
    end

    alias orig_to_liquid to_liquid
    def to_liquid(attrs = nil)
        h = orig_to_liquid
        h['thumb_url'] = self.thumb_url
        h
    end

  end

end
