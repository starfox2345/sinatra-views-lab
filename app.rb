class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		name = "Joe"
		ERB.new("<h1>Goodbye #{name}</h1>").result
	end

	get '/date' do
		today = Date.today.strftime("%A, %B %d, %Y")
		ERB.new("<h1>The date is #{today}</h1>").result
	end
end
