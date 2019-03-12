Rails.application.routes.draw do
  get 'tweets/index'

  get 'tweets/new'

  get 'tweets/create'

  get 'tweets/confirm'

  get 'tweets/show'

  get 'tweets/edit'

  get 'tweets/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
