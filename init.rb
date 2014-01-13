lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_flash_chart'

ActionView::Base.send :include, OpenFlashChart::View
OpenFlashChart::Base.send :include, OpenFlashChart::View
ActionController::Base.send :include, OpenFlashChart::Controller
ActionController::Base.send :include, OpenFlashChart
ActiveRecord::Base.send :include, OpenFlashChart::View
ActiveRecord::Base.send :include, OpenFlashChart::Controller
ActiveRecord::Base.send :include, OpenFlashChart
