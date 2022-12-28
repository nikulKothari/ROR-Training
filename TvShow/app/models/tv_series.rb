class TvSeries < ApplicationRecord
  acts_as_favoritable
  belongs_to :channel
  validates :name, :start_time, :end_time, :channel_id, presence: true
  def self.search(search)
    joins(:channel).where('tv_series.name like (?) OR channels.name like (?)', "%#{search}%", "%#{search}%")
   end 
end
