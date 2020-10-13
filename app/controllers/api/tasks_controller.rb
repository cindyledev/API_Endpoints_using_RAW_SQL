class Api::TasksController < Api::BaseController
  def index
    render json: Task.index_json
  end
end