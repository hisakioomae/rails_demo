class Coment < ApplicationRecord
  validates :content, {presence: true}
end
