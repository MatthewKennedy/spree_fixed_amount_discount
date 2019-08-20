config = Rails.application.config
config.spree.calculators.promotion_actions_create_item_adjustments << Spree::Calculator::LineItemsFlatRate
