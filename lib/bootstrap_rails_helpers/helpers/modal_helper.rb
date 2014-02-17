module BootstrapRailsHelpers
  module Helpers
    module ModalHelper

      def modal_link opts
        link_to opts[:name], opts[:url], :class => "btn #{opts[:class]}", :role => 'button', :data => { 'toggle' => 'modal', 'target' => opts[:target], 'remote' => opts[:remote] }
      end

      def modal_button opts
        content_tag( :div, opts[:button], :class => "btn #{opts[:class]}", :data => { 'controls-modal' => opts[:id] } )
      end

      def modal opts, &block
        (opts[:button].present? ? modal_button(opts) : '') +
          content_tag( :div, :class => 'hide modal', :id => opts[:id] ) do
          content_tag( :div, :class => 'modal-header' ) do
            content_tag( :a, 'x', :class => 'close', :data => { 'dismiss' => 'modal' }, :href => '#' ) +
              content_tag( :h3, opts[:title] )
          end + content_tag( :div ){ yield }
          end
      end

      def modal_body &block
        content_tag( :div, :class => 'modal-body' ){ yield }
      end

      def modal_footer opts = {}, &block
        content_tag( :div, :class => 'modal-footer' ) do
          if block
            yield
          elsif form = opts[:form]
            form.buttons do
              form.commit_button( opts[:submit] || 'Submit', :button_html => { :class => 'btn primary large' } ) +
                form.commit_button( 'Cancel', :button_html => { :class => 'btn large close' } )
            end
          end
        end
      end

    end
  end
end

