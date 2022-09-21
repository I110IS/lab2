class Monster < ApplicationRecord
    validates:name,presence:true
    validate:los_nombres_no_se_repiten

def los_nombres_no_se_repiten
    if(Monster.where(:name).count>0)
        errors.add(:name,message: "No se puede repetir los nombres de los monstruos")
    end
end
end