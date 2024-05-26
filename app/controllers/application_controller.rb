class ApplicationController < ActionController::API
  def index
    render json: {
      message: 'hello world'
    }
  end

  def health_check
    render json: {
      ok: true,
    }
  end
end
