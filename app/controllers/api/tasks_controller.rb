class Api::TasksController < Api::BaseController
  def index
    render json: true
  end
end