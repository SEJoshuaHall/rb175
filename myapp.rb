# myapp.rb
class MyApp
  def call(env)
    body = "<h2>Hello in style!</h2>"
    [200, {"content-type" => "text/html"}, [body]]
  end
end

class FriendlyGreeting
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, body = @app.call(env)
    new_body = ["A warm welcome to you!\n", body.first]
    
    [
      200,
      { "content-type" => "text/plain" },
      new_body
    ]
  end
end

class Wave
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, body = @app.call(env)
    new_body = ["Wave from afar!\n", body.first]
    
    [
      200,
      { "content-type" => "text/plain" },
      new_body
    ]
  end
end