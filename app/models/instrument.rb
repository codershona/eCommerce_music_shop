class Instrument < ApplicationRecord


	 mount_uploader :image, ImageUploader
      serialize :image, JSON 
     # If you use SQLite, add this line

   belongs_to :user, optional: true

validates :title, :brand, :price, :model, presence: true
validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed. "}
validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. "}
validates :price, length: { maximum: 7 }


 BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
 FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
 CONDITION = %w{ New Excellent Mint Used Fair Poor }







end
