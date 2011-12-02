module BootstrapRailsHelpers
  module Helpers
    autoload :TableHelper, 'bootstrap_rails_helpers/helpers/table_helper'
    autoload :TableFilterHelper, 'bootstrap_rails_helpers/helpers/table_filter_helper'
    autoload :ModalHelper, 'bootstrap_rails_helpers/helpers/modal_helper'
    autoload :FlashHelper, 'bootstrap_rails_helpers/helpers/flash_helper'
  end
end

class ActionView::Base
  include BootstrapRailsHelpers::Helpers::TableHelper
  include BootstrapRailsHelpers::Helpers::TableFilterHelper
  include BootstrapRailsHelpers::Helpers::ModalHelper
  include BootstrapRailsHelpers::Helpers::FlashHelper
end

