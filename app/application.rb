require 'pry'
class Application 
  
  @@items = ["Bananas", "Carrots", "Apples", "Kiwis"]
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last 
      item = @@items.find {|i| i.
     
    end 
  end 
end 
