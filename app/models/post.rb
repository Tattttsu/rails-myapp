class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
  validate :before_end_day

  def before_end_day
    if end_day != nil
      errors.add(:end_day, "今日以降の日付を入力してください") if end_day < Date.today
    end
  end
end

