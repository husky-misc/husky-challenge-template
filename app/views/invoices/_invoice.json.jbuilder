json.extract! invoice, :id, :invoice_number, :invoice_date, :customer_name, :customer_notes, :total_amount_due, :emails, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
