class Book < ActiveRecord::Base
attr_accessible :titulo, :autor, :clase, :descripcion, :cover
 has_attached_file :cover
 before_validation :capitalizing_titulo
	before_validation :capitalizing_autor


	validates_presence_of :titulo
	validates_presence_of :autor
	
	def capitalizing_titulo
	     unless self.titulo.nil?
		x = self.titulo.split() 
		s = []
		x.each do |d|
			s << d.capitalize
		end
		self.titulo = s.join(" ")
	    end
	end

	def capitalizing_autor
	   unless self.autor.nil?
		x = self.autor.split() 
		s = []
		x.each do |d|
			s << d.capitalize
		end
		self.autor = s.join(" ")
	   end
	end
end
