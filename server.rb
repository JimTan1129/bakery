require "sinatra"
require "httparty"
require "./mailer.rb"

class Cake
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Cookie
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Muffin
  attr_accessor :name, :description, :price, :img
  def initialize (name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end



preme = Cake.new("Case", "Hypebeast Only!", "Price.$69.99" , "https://i.pinimg.com/originals/e4/56/36/e456361a21fe357084607ee9ef49080e.jpg")
bf = Cake.new("Preme", "Take your case home!", "Price.$79.99" , "https://i.pinimg.com/originals/e5/c7/73/e5c773a24777e97c9f5b2c82d6b95f00.png")
bape = Cake.new("Milo Cake", "Take Your Monkey's Home", "Price.$67.99" , "https://i.pinimg.com/originals/dd/11/e5/dd11e527cfba799e993f771da9027a5d.jpg")
ones = Cookie.new("Jordan 1s", "Retro Cookie", "Price.$20.99", "https://dqzrr9k4bjpzk.cloudfront.net/images/12675289/811267455.jpg")
zebra = Muffin.new("Yeezy-V2", "Take your shoes home", "Price.$24.99", "https://scontent-atl3-1.cdninstagram.com/vp/dbbfc55979690fd06bfdea78f0ffa643/5D9948D7/t51.2885-15/e35/16585514_261124854298597_4817039107907649536_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com")
mag = Muffin.new("Air-Mag", "Back To the Future!", "Price.$34.99", "https://pmcfootwearnews.files.wordpress.com/2017/01/nike-mag-eat-good-nyc-cupcake.jpg")
yay = Muffin.new("Yeezy 750", "Make America Great Again", "Price.$34.99", "http://eatgood.nyc/wp-content/uploads/2015/05/kanyewest.png")

def send_email(rec)
  Newsletter.welcome(rec).deliver_now
end


get "/" do
  erb :home
end

get "/cake" do
  @cakes = [preme, bf, bape]
  erb :cake
end

get "/cookie" do
  @cookie = [ones]
  erb :cookie
end

get "/muffin" do
  @muffin = [zebra, mag, yay]
  erb :muffin
end

get "/thanks" do
  send_email(params[:email])
  erb :thanks
end


api_key = 'DDKTHTQAQOPATQN2FJOV'

get "/events" do
  @req = HTTParty.get("https://www.eventbriteapi.com/v3/events/search/?q=bakery&token=#{api_key}")
  data = JSON.parse(@req.body)
  @events = data['events']
  erb :events
end
