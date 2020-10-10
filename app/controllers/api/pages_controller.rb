class Api::PagesController < Api::BaseController
  def test
    render json: { success: true }
  end
end