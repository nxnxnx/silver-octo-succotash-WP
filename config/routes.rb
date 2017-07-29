Rails.application.routes.draw do
  devise_for :users
  #devise generated
  devise_for :admins

  resources :bars
  resources :foos
  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'welcome#index'

  get "expensive"    => "welcome#expensive_query"
  get "make_objects" => "welcome#make_objects"

=begin #beginning of the comment
  scope path: '/career', controller: 'career' do
	  get 'ladder' => :ladder
	  get 'development' => :development
	  get 'path' => :path
	  get 'counselling' => :counselling
  end

  scope path: '/job', controller: 'job' do
	  get 'internship' => :internship
	  get 'part-time' => :part-time
	  get 'full-time' => :full-time
	  get 'exchange' => :exchange
  end

  scope path: '/events', controller: 'events' do
    get 'fairs' => :fairs
    get 'workshop' => :workshop
  end

  scope path: '/students', controller: 'students' do
    get '/lists' => :lists
    get '/news' => :news
    get '/publication' => :publication
  end

  scope path: '/alumni', controller: 'alumni' do
    get 'events' => :events
    get 'networking' => :networking
    get 'reunions' => :reunions
  end
=end #end of the comment

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
