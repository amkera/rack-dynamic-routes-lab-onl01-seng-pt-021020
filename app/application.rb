require 'pry'
class Application 
  
  @@items = ["Bananas", "Carrots", "Apples", "Kiwis"]
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last 
      item = @@items.find {|i| i.name = item_name}
      
        if item.nil?
          resp.write "Item not found"
          rep.status = 400 
        else 
          rep.write
     
    end 
  end 
end 
