class TalksController < ApplicationController
  before_filter :find_user

  def index
    @talks = Talk.where(refinery_user: @user)
    render template: "talks/index"
  end

  private

  def find_user
    id = params[:id]
    if to_integer(id)
      @user = Refinery::User.find(id)
    else
      @user = Refinery::User.find_by(username: id)
    end

    unless @user
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def to_integer(i)
    i.to_i if i.match(/^\d+$/)
  end
end
