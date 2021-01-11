Rails.application.routes.draw do
    devise_for :users
    root  'tweets#index'
    get   'tweets'     =>  'tweets#index'  #一覧表示
    get   'tweets/new' => 'tweets#new' #投稿画面
    post  'tweets'     => 'tweets#create' #tweets情報をテーブルに保存
    get   'users/:id'  => 'users#show' #詳細
    get   'tweets/:id' => 'tweets#show' # tweetの詳細
    delete  'tweets/:id' => 'tweets#destroy' #tweet削除
end
