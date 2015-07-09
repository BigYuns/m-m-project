class AddYoutubeurlToMagnetic < ActiveRecord::Migration
  def change
    add_column :magnetics, :youtube_url, :string
  end
end
