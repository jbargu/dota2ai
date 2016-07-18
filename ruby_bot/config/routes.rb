Rails.application.routes.draw do

  post "reset" => "application#reset"
  post "select" => "application#select"
  post "chat" => "application#chat"
  post "levelup" => "application#levelup"
  post "update" => "application#update"

end
