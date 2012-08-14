class Event < ActiveRecord::Base
  attr_accessible :caption, :course_id, :credit, :description, :end_date, :media, :name, :start_date, :course_id
  belongs_to :course
end
