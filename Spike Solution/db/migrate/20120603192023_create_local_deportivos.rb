class CreateLocalDeportivos < ActiveRecord::Migration
  def change
    create_table :local_deportivos do |t|
      t.string :nombre
      t.string :direccion
      t.text :descripcion
      t.text :servicios
      t.string :contacto
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
