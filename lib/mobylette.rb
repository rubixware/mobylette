#
# Rails automatic mobile request support
module Mobylette
  require 'action_view'
  require 'action_view/template/resolver'
  require 'mobylette/respond_to_mobile_requests'
  require 'mobylette/resolvers/chained_fallback_resolver'
  require 'mobylette/mobile_user_agents'
  require 'mobylette/devices'

  # TestHelpers
  # require "mobylette/helmet"

  require 'mobylette/railtie'
end

# Creating the :mobile format alias
require 'action_controller'
Mime::Type.register_alias 'text/html', :mobile
