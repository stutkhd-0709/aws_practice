class ApplicationController < ActionController::API
  def index
    # for test
    val = ActiveRecord::Base.connection.select_value("SELECT 1")
    render json: {
      message: 'hello world',
      val: val,
    }
  end

  def health_check
    render json: {
      ok: true,
    }
  end
end
