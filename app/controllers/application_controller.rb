class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/notes" do
    @posts = Post.all
     post = @posts 
     post.to_json
  end

  get '/notes/:id' do 
    @notes = Post.find_by(id:params[:id])
    @notes.to_json

  end

  post "/notes" do
   @post=Post.create(params)
    post = @post
    post.to_json()
  end

  put '/notes/:id' do 
    # no view
    # update particular object with new attributes
    @post = Post.find_by(id:params[:id])
    @post.update(name: params[:name], updated: params[:updated])
    redirect "/notes/#{@notes.id}"
  end

  delete '/notes/:id' do 
    # no view to render
    # get_post
    @post = Post.find_by(id:params[:id])
    @post.destroy
    redirect '/notes'
  end  
end
