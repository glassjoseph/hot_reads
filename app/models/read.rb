class Read < ApplicationRecord
  validates :url, presence: true
  scope :past_day, -> { where(created_at: (Time.now - 24.hours)..Time.now) }

  def self.top_links
  end

end
