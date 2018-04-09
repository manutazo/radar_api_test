class Position < Attack
	def self.calculate(params)
		#calculates distance and puts it in hash
		x = [0,0]
        locations = params["radar"].map do |e| position = {:x => e["position"]["x"], :y => e["position"]["y"], :calculate => Math.sqrt(((e["position"]["x"].to_i-x[0])**2) + ((p_y = e["position"]["y"].to_i-x[1])**2))} end
	end
end

