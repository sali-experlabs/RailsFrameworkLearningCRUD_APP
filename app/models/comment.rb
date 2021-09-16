class Comment < ApplicationRecord
    belongs_to :article
    validates :commenter, confirmation: true
    validates :commenter_confirmation, presence: true
end
