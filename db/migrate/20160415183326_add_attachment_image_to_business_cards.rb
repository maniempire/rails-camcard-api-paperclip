class AddAttachmentImageToBusinessCards < ActiveRecord::Migration
  def self.up
    change_table :business_cards do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :business_cards, :image
  end
end
