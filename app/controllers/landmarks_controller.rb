class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    if params[:landmark][:name] != "" && params[:landmark][:year_completed] != ""
      @landmark = Landmark.find_or_create_by(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])
    end
    
    redirect to "/landmarks/#{@landmark.id}"
  end
end
