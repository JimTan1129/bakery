require "sinatra"
require "httparty"

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
bf = Cake.new("Preme", "Take your case home!", "$79.99" , "https://i.pinimg.com/originals/e5/c7/73/e5c773a24777e97c9f5b2c82d6b95f00.png")
bape = Cake.new("Milo Cake", "Take Your Monkey's Home", "$67.99" , "https://i.pinimg.com/originals/dd/11/e5/dd11e527cfba799e993f771da9027a5d.jpg")
ones = Cookie.new("Jordan 1s" "Retro Cookie" , "$20.99" "https://dqzrr9k4bjpzk.cloudfront.net/images/12675289/811267455.jpg")


get "/" do
  erb :home
end

get "/cake" do
  @cakes = [preme, bf, bape]
  erb :cake
end

get "/cookie" do
  @cookie = [cook, kie, ees]
  erb :cookie
end

get "/muffin" do
  @muffin = [kanye, mag ,y3]
  erb :muffin
end

get "/events" do
  erb :events
end
