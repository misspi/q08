class WelcomeController < ApplicationController
  def index
    # En un futuro cuando hagan login
    # habrá que cambiar esto por:
    # self.smerf_user_id = current_user.id
     self.smerf_user_id = 1
  end
end
