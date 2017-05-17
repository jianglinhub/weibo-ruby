Rails.application.routes.draw do

  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'login' => 'sessions#destroy'
  
  # 自动创建所有路由，资源路由
  # resources :posts
  # 中间属于posts路由的扩展路由
  resources :posts do
    # 添加一条集合路由扩展
    # get 'recent', :on => :collection
    collection do
      get 'recent'
    end

    # 成员路由，会附带资源的id号
    member do
      get 'recent'
    end
  end

  # 定义一般get路由，定义处理控制器和action，命名路由
  # get 'posts/:id', :to => 'posts#show', :as => 'show_post'
  # post 'posts/:id', :to => 'posts#show'

  # 排出show路由
  # resources :posts, :except => :show
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
