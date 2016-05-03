require "sinatra"
require "artii"
require "sinatra/reloader" if development?
require_relative "lib/ascii_converter.rb"

get "/ascii/?:p1?/?:p2?" do
  #word = params.fetch("word")

  artii = Artii::Base.new :font => "#{params[:p2]}"
  @word = artii.asciify(params[:p1])

  erb :wordfy
end
