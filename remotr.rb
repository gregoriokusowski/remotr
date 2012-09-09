# encoding: UTF-8
require 'sinatra'

get '/' do
  erb :index
end

get '/show/:command' do
  p "runnin' command #{params[:command]}"
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
  notes || "Não foi possível carregar as notas desse slide."
end
