module BootstrapRailsHelpers
  module Helpers
    module FlashHelper

      def show_flash_messages
        f_names = [:notice, :warning, :message, :error]
        fl = ''

        for name in f_names
          if flash[name]
            fl = fl + content_tag(:div, content_tag(:a, 'x', :class => 'close', :href => '#') + content_tag(:p, flash[name]), :class => [ 'alert-message', 'fade', 'in', name.to_s ], 'data-alert' => 'alert' )
          end
          flash[name] = nil;
        end
        return fl
      end

      def js_flash_messages
        "$('#flash').html( '#{escape_javascript(show_flash_messages)}' );"
      end

    end
  end
end


