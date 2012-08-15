class Event < ActiveRecord::Base
  attr_accessible :caption, :course_id, :credit, :description, :start_year, :start_month, :start_day,
  :end_year, :end_month, :end_day, :media, :name, :course_id
  belongs_to :course
end
