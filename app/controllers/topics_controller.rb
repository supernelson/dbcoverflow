get "/topics" do
  @topics = Topic.all
  erb :"/topics/index"
end

get "/topics/new" do
  erb :"/topics/new"
end

post "/topics" do
  topic = Topic.new(params[:topic])
  if topic.save
    redirect "/topics/#{topic.id}"
  else
    @errors = ["Failed to create topic"]
  end
end

get "/topics/:id" do
  topic = Topic.find(params[:id])
  erb :"/topics/show", locals: {topic: topic}
end
