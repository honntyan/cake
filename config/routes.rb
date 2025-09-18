Rails.application.routes.draw do
  devise_for :users

  # 健康チェック
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # トップページ
  root "tweets#index"

  # Tweets関連
  resources :tweets do
    # コレクション用カスタムルート
    get 'kokkie', on: :collection
    get 'chokolate', on: :collection
    get 'cake', on: :collection
    get 'potetotip', on: :collection
    get 'appulpai', on: :collection
    get 'wagasi', on: :collection
   get 'imomoti', on: :collection
   get 'kanure', on: :collection
   get 'kurakka', on: :collection
   get 'makaron', on: :collection
   get 'nattu', on: :collection
   get 'okaki', on: :collection
   get 'poteto', on: :collection
   get 'purettueru', on: :collection
   get 'senbei', on: :collection
   get 'zeri', on: :collection


    # いいね
    post 'like', on: :member
  end

  # コメント
  resources :comments, only: [:create]

  # Perfume
  resources :perfumes
end
