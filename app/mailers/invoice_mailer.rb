class InvoiceMailer < ApplicationMailer
  def created
    @invoice = params[:invoice]

    emails = @invoice.emails.split(',')

    mail(to: emails, subject: "Invoice #{@invoice.id}")
  end
end
