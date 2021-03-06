class EventStatus < ActiveRecord::Base
  CLOSE = 7
  CANCELED = 6
  IN_PROGRESS = 5
  REGISTRATION_OPENS = 4
  PENDING = 3
  ANNOUNCED = 2
  UNKNOW = 1

  def self.list_status
    EventStatus.all.map do |t|
      [t.name, t.id]
    end
  end
end
