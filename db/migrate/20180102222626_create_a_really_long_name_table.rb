class CreateAReallyLongNameTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sorry_i_didnt_name_the_table_that_caused_this_problem_for_me do |t|
    end
  end
end
