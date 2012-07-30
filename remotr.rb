require 'sinatra'

get '/' do
  erb :index
end

get '/show/:command' do
  %x[
    osascript -e 'Tell application "Keynote"
      show #{params[:command]}
    end tell'
  ]
end

get '/notes/current' do
  %x[
    osascript -e 'tell application "Keynote"
      tell front slideshow
        get notes of current slide
      end tell
    end tell'
  ]
end
