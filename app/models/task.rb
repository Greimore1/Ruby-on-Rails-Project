class Task < ApplicationRecord
  validates :title, presence: true
  validates :status, inclusion: { in: %w[Not\ Started In\ Progress Completed] }

  def self.status_options
    %w[Not\ Started In\ Progress Completed]
  end
end
