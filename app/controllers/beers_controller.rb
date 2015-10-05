class BeersController < ApplicationController

  def kind
    @kind = params[:kind]
    unless Beer::KINDS.include?(@kind)
      raise ActionController::RoutingError.new(@kind)
    end
  end

end