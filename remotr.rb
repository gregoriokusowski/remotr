# encoding: UTF-8
require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  erb :index
end

get '/show/:command' do
  command = params[:command]
  if !%w(next previous).include? command
    raise "Invalid command #{command}"
  end
  p "runnin' command #{command}"
  %x[
    osascript -e 'Tell application "Keynote"
      show #{params[:command]}
    end tell'
  ]
end

get '/notes/current' do
  notes = %x{
            osascript -e 'tell application "Keynote"
              tell front slideshow
                get notes of current slide
              end tell
            end tell'
          }
  notes || "It was not possible to load notes for the current slide"
end
