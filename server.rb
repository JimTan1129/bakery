require "sinatra"
require "httparty"

class Cake
  attr_accessor :name, :description, :price
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end
end

class Cookie
  attr_accessor :name, :description, :price
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end
end

class Muffin
  attr_accessor :name, :description, :price
  def initialize (name, description, price)
    @name = name
    @description = description
    @price = price
  end
end



preme = Cake.new("Preme", "hypebeast only!", "$69.99")
bf = Cake.new("Case", "Take your case home!", "$79.99")
bape = Cake.new("Milo Cake", "Take Your Monkey's Home", "$67.99")

get "/" do
  erb :home
end

get "/cake" do
  @cakes = [preme, bf, bape]
  erb :cake
end

get "/cookie" do
  erb :cookie
end

get "/muffin" do
  @muffin = [kanye, mag, adidas]
  erb :muffin
end
