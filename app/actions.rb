# Homepage (Root path)
get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all.order(first_name: :ASC)
  @contacts.to_json
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  @contact.to_json
end