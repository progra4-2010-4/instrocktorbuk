class Book < ActiveRecord::Base
attr_accessible :titulo, :autor, :clase, :descripcion, :cover


 has_attached_file :cover
end
