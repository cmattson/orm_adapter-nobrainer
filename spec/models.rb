class User
  include NoBrainer::Document
  field :name
  field :rating
  has_many :notes, foreign_key: :owner_id
end

class Note
  include NoBrainer::Document
  field :body, default: 'made by orm'
  belongs_to :owner, foreign_key: :owner_id, class_name: 'User'
end
