class Formate < Attack

		def self.format(data, target)
			#adjusts the response to the required format
			position = {:position => {:x => data[:x], :y => data[:y]}, :targets => target.map do |e| e[:type] end} 
		end
end
