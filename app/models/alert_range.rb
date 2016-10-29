class AlertRange < ApplicationRecord
	belongs_to :user
 	scope :all_alert_ranges_active, -> (time) { where("start_time <= ? AND end_time >= ?", time, time) }

	def is_alarm_needed(time)
		if self.start_time <= time and self.end_time >= time
			if self.last_alert.nil?
				return true
			else
				if self.last_alert + interval*60 < time
					return true
				end
			end
		end

		return false
	end

	def alert
		self.user.phones.order(:hierarchy_location)
	end
end
