class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.date :invoice_date
      t.string :customer_name
      t.text :customer_notes
      t.float :total_amount_due
      t.string :emails

      t.timestamps
    end
  end
end
