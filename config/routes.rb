Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/breakfast_cereals' => 'breakfast_cereals#index'
    get '/breakfast_cereals/:id' => 'breakfast_cereals#show'
    post '/breakfast_cereals' => 'breakfast_cereals#create'
    patch '/breakfast_cereals/:id' => 'breakfast_cereals#update'
    delete '/breakfast_cereals/:id' => 'breakfast_cereals#destroy'
  end
end
