class User < Omnisocial::User
  # Make any customisations here
  #has_attached_file :photo, 
   #  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
    # :path => "/:style/:filename"
    #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     # Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }

end
