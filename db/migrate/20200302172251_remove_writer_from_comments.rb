class RemoveWriterFromComments < ActiveRecord::Migration[6.0]
  def change

    remove_column :comments, :writer, :string
  end
end
