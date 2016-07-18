class ApplicationController < ActionController::Base

  def reset
    # show no message
    respond_to do |format|
      format.json do
        render json: {
          msg: "reset"
        }
      end
    end
  end

  def select
    respond_to do |format|
      format.json do
        render json: {
          msg: "select"
        }
      end
    end
  end

  def chat
  end

  def levelup
  end

  def update
  end

end
