class ApplicationController < ActionController::Base

  def reset
    respond_to do |format|
      format.json do
        render json: {}, status: :ok
      end
    end
  end

  def select
    respond_to do |format|
      format.json do
        render json: {
          "hero":"npc_dota_hero_lina","command":"SELECT"
        }
      end
    end
  end

  def chat
    respond_to do |format|
      format.json do
        render json: {}, status: :ok
      end
    end
  end

  def levelup
    respond_to do |format|
      format.json do
        render json: {
          abilityIndex: -1
        }
      end
    end
  end

  def update
    respond_to do |format|
      format.json do
        render json: {
          "x": "4000", "y": "4000", "z": "380", "command": "MOVE"
        }
      end
    end
  end

end
