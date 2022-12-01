class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power 

    STRENGTH = ['Strong', 'Weak', 'Average']

    validates :strength, inclusion: {in: STRENGTH, 
    message: "must be one of: #{STRENGTH.join(', ')}"}
end
