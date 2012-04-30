module FfcrmDirectMarketingHelpers
  class Engine < ::Rails::Engine
    initializer "ffcrm_direct_marketing_helpers.configure_rails_initialization", :after => true do
      Lead.class_eval do
        before_validation(:on => :create) do
          self.original_contact = self.full_name
          self.original_contact_job ||= self.job
        end
      end
    end
  end
end
