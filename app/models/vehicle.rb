class Vehicle < ActiveRecord::Base
  belongs_to :user
  has_many :repairs, dependent: :destroy
  has_attached_file :vehicleimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "default-vehicle.png"  
  validates_attachment_content_type :vehicleimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
                                                                    
end
