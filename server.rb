require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @fav_links = [
    'http://www.jam3.com/',
    'https://activetheory.net/',
    'http://cloudsovercuba.com/',
    'http://residente.com/en/',
    'http://www.elcolombiano.com/'
  ]
  erb :favourites
end
