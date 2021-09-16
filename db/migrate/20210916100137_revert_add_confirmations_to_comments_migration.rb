require_relative '20210916063424_add_confirmation_to_comment'

class RevertAddConfirmationsToCommentsMigration < ActiveRecord::Migration[5.2]
  def change
    revert AddConfirmationToComment
  end
end
