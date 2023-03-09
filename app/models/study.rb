class Study < ApplicationRecord
    belongs_to :user
    validates :acaname, presence: true
    validates :location, presence: true
    validates :degree, presence: true
    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :description, presence: true
end