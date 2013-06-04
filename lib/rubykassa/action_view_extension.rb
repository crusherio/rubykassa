module Rubykassa
  module ActionViewExtension
    def link_to_pay phrase, invoice_id, total
      total, invoice_id  = total.to_s, invoice_id.to_s

      link_to phrase, Rubykassa.pay_url(invoice_id, total, params)
    end
  end
end