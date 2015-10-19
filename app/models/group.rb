class Group < ActiveRecord::Base
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
  has_many(
    :groupings,
    class_name: "Grouping",
    foreign_key: :group_id,
    primary_key: :id
  )
  has_many(
    :contacts,
    through: :groupings,
    source: :contact
  )
end
