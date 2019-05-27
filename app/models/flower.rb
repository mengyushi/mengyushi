class Flower < ActiveRecord::Base

  def self.search(search) 
    if search
      where(['en LIKE ?', "%#{search}%"])
    else
      all 
    end
  end
  
end