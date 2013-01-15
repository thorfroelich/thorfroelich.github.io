#!/usr/bin/env ruby

# Script to create a blog post using a template. It takes one input parameter
# which is the title of the blog post
# e.g. command:
# $ ./new.rb "helper script to create new posts using jekyll"
#
# Author:Khaja Minhajuddin (http://minhajuddin.com)

# Some constants
TEMPLATE = "_template.markdown"
TARGET_DIR = "_drafts"

# Get the title which was passed as an argument
title = ARGV[0]
type = "post"
# Get the filename
filename = title.gsub(' ','-')
filename = "#{ Time.now.strftime('%Y-%m-%d') }-#{filename}.markdown" 
filepath = File.join(TARGET_DIR, filename)

post = <<-HTML
--- 
layout: TYPE
title: "TITLE"
date: DATE
thumb: /images/XXXX.jpg
author: XX XXXX
tags:
- trolls
---

{% img left half /images/XXX.jpg "Placeholder McPlaceholder" "Placeholder" %}}

HTML
  post.gsub!('TITLE', title).gsub!('DATE', Time.new.to_s).gsub!('TYPE', type)
  File.open(filepath, 'w') do |file|
    file.puts post
end
  
puts "new #{type} generated in #{filepath}"
system "mvim #{filepath}"

