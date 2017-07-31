class RenameComentsToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_table :coments, :posts #この行を追加！
  end
end
