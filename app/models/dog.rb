class Dog < ApplicationRecord
    #A dog can have many employees
    has_many :employees
end
