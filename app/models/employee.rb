class Employee < ApplicationRecord
    #An employee can be connected to a single dog
    belongs_to :dog

    def unique_alias
        
    end
end
