module BootstrapRailsHelpers
  module Helpers
    module TableFilterHelper

      def table_filter_col opts = {}, &block
        content_tag( :td, :class => opts[:class] ) do
          content_tag( :div, :class => 'filterwrapper' ) do
            content_tag( :a, '', :class => 'clearfilter', :href => '#', :onclick => "$(this).next().val('').trigger('keyup'); return false;" ) +
              content_tag( :input, '', :name => 'filter['+opts[:name]+']', :class => opts[:size] || 'medium', :placeholder => opts[:placeholder], :value => params[:filter] && params[:filter][opts[:name]] )
          end
        end
      end

      def table_filtermsg opts = {}
        content_tag( :tr, :class => 'filteringmsg', :style => "display:#{opts[:show] ? '' : 'none'};" ) do
          content_tag( :td, :colspan => '100%' ) do
            raw("Found #{opts[:count]} rows that match the filter." + link_to( 'Reset', opts[:url] || '#', :remote => opts[:remote] ))
          end
        end
      end

    end
  end
end

