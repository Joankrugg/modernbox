Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/new'

  get 'artists/create'

  get 'artists/show'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
