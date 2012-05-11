require 'sinatra'

get '/show/:command' do
  %x[
    osascript -e 'Tell application "Keynote"
      show #{params[:command]}
    end tell'
  ]
end
