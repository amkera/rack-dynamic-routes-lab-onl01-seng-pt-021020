class Application 
  
  @@items = ["Bananas", "Carrots", "Apples", "Kiwis"]
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name
end 
