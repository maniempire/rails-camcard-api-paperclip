class BusinessCard < ActiveRecord::Base
  
  has_attached_file :image, styles: { thumb: ["64x64#", :jpg],
                            original: ['1024x768>', :jpg] },
                  convert_options: { thumb: "-quality 75 -strip",
                                     original: "-quality 85 -strip" }
  
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg"] }
  
  
end
