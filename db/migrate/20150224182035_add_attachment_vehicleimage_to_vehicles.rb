class AddAttachmentVehicleimageToVehicles < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.attachment :vehicleimage
    end
  end

  def self.down
    remove_attachment :vehicles, :vehicleimage
  end
end
