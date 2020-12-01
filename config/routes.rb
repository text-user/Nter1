Rails.application.routes.draw do
    root 'tweets#index'
    get 'tweets'     =>  'tweets#index'  #一覧表示
    get 'tweets/new'  => 'tweets#new' #投稿画面
    post 'tweets'     => 'tweets#create' #投稿後画面
end
