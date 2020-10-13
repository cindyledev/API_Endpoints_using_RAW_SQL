class Task < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :project, counter_cache: true
  
  validates :name, presence: true
  
  def self.index_json
    sql = Q.tasks.index
    select_array sql
  end
end