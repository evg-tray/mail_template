class AccountMailer < ApplicationMailer

  def notify(message, account)
    title = template_to_text(message.title, account)
    @text = template_to_text(message.text, account)
    mail(to: account.email, subject: title)
  end

  private

  def template_to_text(template, account)
    template.gsub(/{{name}}/, account.name).
        gsub(/{{balance}}/, account.balance.to_s).
        gsub(/{{currency}}/, account.currency)
  end
end
