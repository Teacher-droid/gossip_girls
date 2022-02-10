class JoinContents < ActiveRecord::Migration[5.2]
  def change

# Je vais ajouter aux rendez-vous un docteur
      add_reference :appointments, :medic, foreign_key: true
      add_reference :appointments, :patient, foreign_key: true
      add_reference :patients, :medic, foreign_key: true



  end
end
