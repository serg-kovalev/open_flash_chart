module OpenFlashChart
  class Railtie < ::Rails::Railtie
    initializer 'open_flash_chart' do |_app|
      ActiveSupport.on_load(:active_record) do
        ::ActiveRecord::Base.send :include, ::OpenFlashChart::View
        ::ActiveRecord::Base.send :include, ::OpenFlashChart::Controller
        ::ActiveRecord::Base.send :include, ::OpenFlashChart
      end
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, ::OpenFlashChart::View
        ::OpenFlashChart::Base.send :include, ::OpenFlashChart::View
        if defined?(::ActionController::Base)
          ::ActionController::Base.send :include, ::OpenFlashChart::Controller
          ::ActionController::Base.send :include, ::OpenFlashChart
        end
      end
    end
  end

  class Engine < ::Rails::Engine
  end
end

