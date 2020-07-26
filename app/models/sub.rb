class Sub < ApplicationRecord
   has_many :days
   accepts_nested_attributes_for :days
  
   #def view_name_and_id
    #    self.name + '(' + self.id.to_s + ')'
    #end
end
