# frozen_string_literal: true

module TimelineRailsHelper
  class Railtie < ::Rails::Railtie
    class Engine < ::Rails::Engine # :nodoc:
      initializer "timeline_rails_helper.assets" do |app|
        %w[stylesheets].each do |sub|
          app.config.assets.paths << root.join("assets", sub).to_s
        end
      end
      initializer 'timeline_rails_helper', group: :all do |_app|
        ActiveSupport.on_load(:action_controller) do
          include TimelineRailsHelper::Helpers
        end

        ActiveSupport.on_load(:action_view) do
          include TimelineRailsHelper::Helpers
        end
      end
    end
  end
end
