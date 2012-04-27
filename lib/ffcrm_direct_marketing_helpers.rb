require "ffcrm_direct_marketing_helpers/engine"

module FfcrmDirectMarketingHelpers
  class LeadCallback < FatFreeCRM::Callback::Base
    def show_lead_sidebar_bottom(view, context={})
      "<li><tt>Original Contact:</tt><dt>#{context[:lead].original_contact}</dt></li>"
    end
  end
end
