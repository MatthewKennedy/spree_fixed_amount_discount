module SpreeFixedAmountDiscount
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false
    end
  end
end
