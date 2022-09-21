class Attack < ApplicationRecord
has_many:monster
has_many:victim

/
validate:eres_muy_asustador_para_esta_victima


def eres_muy_asustador_para_esta_victima
    if (monster.scare_level>5 && victim.birthdate<18)
        errors.add(:monster.scare_level,message:"tienes un nivel de susto mayor a 5, no puedes atacar a menores de 18")
        puts(holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa)
    end
end
/
end   