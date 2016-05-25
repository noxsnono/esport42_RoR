class Cell < ActiveRecord::Base
  self.per_page = 16

  def participant_1_name
    result = Participant.unscoped.find_by(id: self.participant_1_id)
    user = User.unscoped.find_by(id: result.user_id) if !result.nil?
    return user.username if !result.nil?

    ""
  end

  def participant_2_name
    result = Participant.unscoped.find_by(id: self.participant_2_id)
    user = User.unscoped.find_by(id: result.user_id) if !result.nil?
    return user.username if !result.nil?

    ""
  end
end
