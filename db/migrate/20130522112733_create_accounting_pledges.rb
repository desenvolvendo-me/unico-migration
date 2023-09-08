class CreateAccountingPledges < ActiveRecord::Migration[6.1]
  def change
    create_table "accounting_pledges" do |t|
      t.integer  "management_unit_id"
      t.date     "emission_date"
      t.integer  "budget_allocation_id"
      t.decimal  "value",                    :precision => 10, :scale => 2
      t.integer  "pledge_category_id"
      t.datetime "created_at",                                              :null => false
      t.datetime "updated_at",                                              :null => false
      t.integer  "expense_kind_id"
      t.integer  "accounting_historic_id"
      t.integer  "contract_id"
      t.text     "description"
      t.integer  "reserve_fund_id"
      t.string   "material_kind"
      t.integer  "founded_debt_contract_id"
      t.string   "pledge_modality"
      t.integer  "licitation_process_id"
      t.integer  "code"
      t.integer  "creditor_id"
      t.integer  "expense_nature_id"
      t.integer  "descriptor_id"
      t.integer  "precatory_id"
      t.integer  "modality"
      t.integer  "special_inscription_id"
      t.hstore   "custom_data"
      t.string   "licitation_process"
      t.integer  "licitation_process_year"
      t.integer  "capability_id"
      t.integer  "main_pledge_id"
      t.boolean  "leftover_pledge"
      t.integer  "year"
      t.decimal  "initial_value_not_processed",  :precision => 10, :scale => 2
      t.decimal  "initial_value_processed",  :precision => 10, :scale => 2
      t.text     "historic_complement"
    end
  end
end
