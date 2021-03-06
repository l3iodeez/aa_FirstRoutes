class ContactShare < ActiveRecord::Base
  validates :contact_id, presence: true, uniqueness: {scope: :user_id}
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
  belongs_to(
    :contact,
    class_name: "Contact",
    foreign_key: :contact_id,
    primary_key: :id
  )
  has_many(
    :contacts,
    class_name: "Contact",
    foreign_key: :contact_id,
    primary_key: :id
  )
end
