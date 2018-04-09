class Attack < Handler

	def self.remove_radar_to_partners(params)
		target = remove_humans(last_targets(params)).sort_by { |hsh| hsh[:damage] }.reverse		
		#calculate distance
		position = Position.calculate(params).last
		Formate.format(position, target)
		#make data format
	end

	def self.priorize_tx(params)
		#prioritize tx objects
		target = last_targets(params).reverse
        target.select{|t| t[:type] == "T-X"}.each do |tr| target.delete(tr);target.insert(0,tr)  end
		position = Position.calculate(params).last
		Formate.format(position, target)
	end

	def self.priorize(params)
		#prioritize the first position
		locations = Position.calculate(params)
		if params["attack-mode"].include? "furthest-first"
		location = locations.sort_by {|p| p[:calculate]}.last
		target = last_targets(params).sort_by { |hsh| hsh[:damage] }
		else
		location = locations.sort_by {|p| p[:calculate]}.first
		target = params["radar"].first["targets"]
		end
		Formate.format(location, remove_humans(target).sort_by { |hsh| hsh[:damage] }.reverse)
	end


	def self.remove_humans(target)
		#erase human coordinates so as not to attack them
		target = (target).select {|target|target.reject! if target["type"].exclude? "Human"}
	end


	def self.last_targets(params)
		params["radar"].last["targets"]
	end

end
