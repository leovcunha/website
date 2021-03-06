class API::PingController < APIController
  skip_before_action :authenticate_user!

  def index
    render json: {
      status: {
        website: true,
        database: true
      }
    }, status: 200
  end
end
