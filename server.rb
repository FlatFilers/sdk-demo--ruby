require 'sinatra'
require 'erb'
require 'jwt'

EMBED_ID = 'YOUR_EMBED_ID'
PRIVATE_KEY = 'YOUR_PRIVATE_KEY'

set :port, 4242

get '/' do
  payload = {
    embed: EMBED_ID,
    sub: 'max.blank@flatfile.io'
  }
  @token = JWT.encode payload, PRIVATE_KEY, algorithm='HS256'
  erb :index
end