require_dependency 'spree/calculator'

module Spree
  class Calculator::LineItemsFlatRate < Calculator
    preference :amount, :decimal, default: 0
    preference :currency, :string, default: -> { Spree::Config[:currency] }

    def self.description
      Spree.t(:fixed_amount_line_items)
    end

    def compute(object)
      if object && preferred_currency.casecmp(object.currency.upcase).zero?
        (object.amount / object.order.amount) * preferred_amount
      else
        0
      end
    end
  end
end
