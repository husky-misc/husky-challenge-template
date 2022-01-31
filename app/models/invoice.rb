class Invoice < ApplicationRecord
  after_save do
    InvoiceMailer.with(invoice: self).created.deliver_now
  end
end
