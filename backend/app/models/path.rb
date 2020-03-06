class Path < ApplicationRecord
belongs_to :town
scope :filter_by_town, -> (town_id) {where town_id: town_id}
end
