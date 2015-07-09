class AddAttachmentToMagnetic < ActiveRecord::Migration
  def change
    add_column :magnetics, :attachment, :string
  end
end
