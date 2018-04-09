Rails.application.routes.draw do
	post '/radar', to: "handlers#new"
end
