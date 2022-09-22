class Attack < ApplicationRecord
belongs_to :monster
#belongs_to :victim
has_many :victim
validate :eres_muy_asustador_para_esta_victima


def eres_muy_asustador_para_esta_victima
    edad = (Time.now.year - victim.birthdate.year).to_i
    if (monster.scare_level > 5) && (edad<18)
        errors.add(:monster.scare_level,message:"tienes un nivel de susto mayor a 5, no puedes atacar a menores de 18")
    end  
end
end
