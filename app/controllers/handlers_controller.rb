class HandlersController < ActionController::API

	def new
		@attack = Handler.parsed(params)
		render json:  @attack
    end	
   
end
