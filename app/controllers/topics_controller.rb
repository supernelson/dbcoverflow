get "/topics" do
  @topics = Topic.all
  erb :"/topics/index"
end

get "/topics/new" do
  erb :"/topics/new"
end

post "/topics" do
  # redirect to where?
end

get "/topics/:id" do
  erb :"/topics/show"
end