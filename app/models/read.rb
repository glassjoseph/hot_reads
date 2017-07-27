class Read < ApplicationRecord
  validates :url, presence: true
  scope :past_day, -> { where(created_at: (Time.now - 24.hours)..Time.now) }

  def self.top_links
    self.past_day.group(:url).count
    .sort_by {|k, v| -v}.map {|k, v| k}.take(10)
  end

end
