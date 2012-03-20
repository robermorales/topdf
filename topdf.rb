# coding: utf-8

require 'sinatra'
require 'prawn'

set :prawn, { :page_layout => :landscape }

get "/" do
	content_type 'application/pdf'
	Prawn::Document.new do 
		text Time.now.to_s
	end.render
end

# 		image "b.png"
# 	"<form action='/' method='post'><input>asdf</input><button type='submit'/></form>"
# __END__

# @@ pdf
# pdf.text "H"
