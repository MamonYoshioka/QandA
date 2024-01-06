Rails.application.routes.draw do
  # rootの設定
  root "questions#index"
  # CRUDを設定する
  resources :questions
end
