# == Schema Information
#
# Table name: course_links
#
#  id         :bigint           not null, primary key
#  link       :string
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#
class Course::Link < ApplicationRecord
  belongs_to :course

  acts_as_list
  default_scope -> { order(position: :asc, created_at: :desc) }

  def self.table_name_prefix
    'course_'
  end
end
