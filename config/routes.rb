Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'

  # # get ':username', to: 'dummy#index', as: :user1
  # match 'photos', to: 'dummy#index', via: :all

  # # get 'photos2', to: 'dummy#index', constraints: { subdomain: 'admin' }

  # namespace :admin do
  #   constraints subdomain: 'admin' do
  #     resources :photos
  #   end
  # end

end
