class PlanetsController < ApplicationController
require 'net/http'
require 'rexml/document'
def index
	# Web search for "madonna"
	url = 'http://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&order=dec&format=xml&select=pl_hostname,ra,dec '

	# get the XML data as a string
	xml_data = Net::HTTP.get_response(URI.parse(url)).body

	# extract event information
	doc = REXML::Document.new(xml_data)
	@planets = []
	doc.elements.each('VOTABLE/RESOURCE/TABLE/DATA/TABLEDATA') do |fld|
	  params = []
	  fld.elements.each('TR') do |tr|
	  	tds = tr.get_elements('TD')

	  	record = {
	  		:pl_hostname => tds[0].text,
	  		:ra => tds[1].text,
	  		:dec => tds[2].text,
	  		:id => tds[3].text
	  	}
	  	@planets << record
	  end
	end
	# print all events
	#titles.each_with_index do |title, idx|
	#   print "#{title} => #{links[idx]}\n"
	end
end