class Comment < ApplicationRecord
  belongs_to :trend, dependent: :destroy
end
