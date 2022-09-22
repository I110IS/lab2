class Attack < ApplicationRecord
belongs_to:monster
belongs_to:victim
validate:eres_muy_asustador_para_esta_victima


def eres_muy_asustador_para_esta_victima
    edad=((Time.zone.now - victim.birthdate.to_time) / 1.year.seconds).floor / linea que calcula la edad, es una solucion que encontre en https://medium.com/@craigsheen/calculating-age-in-rails-9bb661f11303   /
    if (monster.scare_level>5 && edad<18)
        puts(holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa)
        errors.add(:monster.scare_level,message:"tienes un nivel de susto mayor a 5, no puedes atacar a menores de 18")
       
    end
    
    puts("llegueee")
end

end

