class Experience < ApplicationRecord
    belongs_to :user
    validates :expname, presence: true
    validates :title, presence: true
    validates :description, presence: true
    validates :years, presence: true
  end
  