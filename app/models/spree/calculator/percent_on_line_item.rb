module Spree
  class Calculator
    class PercentOnLineItem < Calculator
      preference :percent, :decimal, default: 0

      def self.description
        Spree.t(:percent_per_item)
      end

      def compute(object, _object_a = nil, _object_b = nil, _object_c = nil)
        (object.amount * preferred_percent) / 100
      end
    end
  end
end
