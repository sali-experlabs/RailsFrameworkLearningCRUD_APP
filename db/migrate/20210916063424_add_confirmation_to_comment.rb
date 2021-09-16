class AddConfirmationToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :commenter_confirm, :string
  end
end
