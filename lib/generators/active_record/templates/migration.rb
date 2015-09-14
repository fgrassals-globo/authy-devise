class DeviseAuthyAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def self.up
    change_table :<%= table_name %> do |t|
      t.string    :authy_id
      t.datetime  :last_sign_in_with_authy
      t.boolean   :authy_enabled, :default => false
      t.boolean   :authy_required, :default => false
    end

    add_index :<%= table_name %>, :authy_id
  end

  def self.down
    change_table :<%= table_name %> do |t|
      t.remove :authy_id, :last_sign_in_with_authy, :authy_enabled, :authy_required
    end
  end
end

