# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include Smerf

  include UsersAndSessions
  layout'cuestionario'

  # Scrub sensitive parameters from your log filter_parameter_logging :password

  helper_method :qt
  helper_method :current_user, :current_user_session
  


  private
  def qt(*symbols)
    last = symbols.pop
    I18n.t(last, :scope => symbols)
  end

end
