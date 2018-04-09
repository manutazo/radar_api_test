class Handler < ApplicationRecord
	attr_accessor :params

	def self.parsed(params)
		fail 'Ups! the location is missing' unless params["attack-mode"].present?

		params["attack-mode"].map do |attack|
			if attack.include? "avoid-crossfire"
				@objetive = Attack.remove_radar_to_partners(params)
			elsif attack.include? "priorize-t-x"
				@objetive = Attack.priorize_tx(params)
			else
				@objetive  = Attack.priorize(params)
			end
		end
		return @objetive
	end



end
