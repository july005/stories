class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :char_name
      t.integer :char_age
      t.boolean :char_glasses
      t.string :char_haircolor
      t.string :char_friend_name
      t.text :char_friend_why
      t.string :char_activity
      t.text :char_activity_whylove
      t.boolean :char_activity_everdifficult
      t.text :char_activity_whydifficult
      t.string :char_feelings
      t.string :char_action_from_feeling
      t.string :char_result_from_action
      t.string :char_learn_from_action
      t.string :char_action_from_learn
      t.string :story_title

      t.timestamps null: false
    end
  end
end
