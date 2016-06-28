class Message < ActiveRecord::Base
  belongs_to :visitor
  def self.search(search)
    joins(:visitor).where("content Like ? or fullname Like ?", "%#{search}%","%#{search}%")
  end
  def mark_read
    update(status: true) if status == false
    #code
  end
end