class CreateCommits < ActiveRecord::Migration[6.1]
  def change
    create_table :commits do |t|
      t.string :user_name
      t.string :repo_name
      t.timestamps
    end
  end
end
