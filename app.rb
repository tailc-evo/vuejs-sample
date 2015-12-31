require "sinatra/base"

class App < Sinatra::Base
  get "/" do
    slim :index
  end

  get "/table" do
    content_type :json

    {
      status: true,
      table: [
        { name: "Alice", age: 23, address: "New York" },
        { name: "Bob", age: 30, address: "San Francisco" },
      ]
    }.to_json
  end
end
