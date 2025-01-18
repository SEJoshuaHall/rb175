require 'rackup'

class MyApp
  def call(env)
    body = "<h2>Hello in style!</h2>"
    ['200', {"Content-Type" => "text/html"}, [env.to_s]]
  end
end

Rackup::Handler::WEBrick.run MyApp.new