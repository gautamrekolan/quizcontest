class Question < ActiveRecord::Base
  has_and_belongs_to_many :subjects
  has_many :choices
  accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:choice].blank? }, :allow_destroy => true
end
