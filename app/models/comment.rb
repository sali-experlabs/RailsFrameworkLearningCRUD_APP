class MyValidator < ActiveModel::Validator

    def validate(record)
        unless record.commenter.starts_with? 'X'
            record.errors.add :commenter, "Commentor name must start with 'X'"
        end
    end

end

class Comment < ApplicationRecord
    belongs_to :article
    validates :commenter, confirmation: true
    # validates :commenter, format: { with: /\A[a-zA-Z]+\z/,
    # message: ": only allows letters" }
    include ActiveModel::Validations
    validates_with MyValidator
    # validates :commenter_confirmation, presence: true
end
