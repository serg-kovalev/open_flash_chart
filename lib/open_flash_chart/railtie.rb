require 'open_flash_chart'

module OpenFlashChart
  class Railtie < ::Rails::Railtie
    initializer 'open_flash_chart' do |_app|
      if definded?(ActionView::Base)     
        ActionView::Base.send :include, OpenFlashChart::View
        OpenFlashChart::Base.send :include, OpenFlashChart::View
      end
      if defined?(ActionController::Base)
        ActionController::Base.send :include, OpenFlashChart::Controller
        ActionController::Base.send :include, OpenFlashChart
      end
      if defined?(ActiveRecord::Base)
        ActiveRecord::Base.send :include, OpenFlashChart::View
        ActiveRecord::Base.send :include, OpenFlashChart::Controller
        ActiveRecord::Base.send :include, OpenFlashChart
      end
    end
  end
end
