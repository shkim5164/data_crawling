Rails.application.routes.draw do
  get 'down/health', as: 'health'

  get 'down/gx', as: 'gx'

  get 'down/pt', as: 'pt'

  get 'down/golf', as: 'golf'

  get 'down/yoga', as: 'yoga'

  get 'down/pila', as: 'pila'

  get 'down/swim', as: 'swim'

  get 'down/squash', as: 'squash'

  get 'down/airobic', as: 'airobic'

  get 'down/screengolf', as: 'screengolf'

  get 'down/sauna', as: 'sauna'

  get 'down/jimjil', as: 'jimjil'

  get 'down/spinning', as: 'spinning'

  get 'down/crossfit', as: 'crossfit'

  get 'down/boxing', as: 'boxing'

  get 'down/masage', as: 'masage'

  get 'down/dance', as: 'dance'

  get 'down/pingpong', as: 'pingpong'

  get 'down/baseball', as: 'baseball'

  get 'down/gumdo', as: 'gumdo'

  get 'down/climbing', as: 'climbing'

  get 'down/kickboxing', as: 'kickboxing'

  get 'down/fighting', as: 'fighting'

  get 'down/soonhwan', as: 'soonhwan'

  get 'down/flyingyoga', as: 'flyingyoga'

  get 'down/falldance', as: 'falldance'

  get 'down/nail', as: 'nail'

  get 'down/beauty', as: 'beauty'

  get 'down/etc', as: 'etc'
  
  get 'down/ems', as: 'ems'
  get 'down/bale', as: 'bale'
  get 'down/mungsang', as: 'mungsang'
  get 'down/jumping', as: 'jumping'
  get 'down/bodyfix', as: 'bodyfix'
  get 'down/danggu', as: 'danggu'
  get 'down/bowling', as: 'bowling'
  get 'down/yanggung', as: 'yanggung'

  
  
  get 'home3/index'
  
  get 'home3/jongro'

  get 'home3/junggu'

  get 'home3/yongsan'

  get 'home3/sungdong'

  get 'home3/gwangjin'

  get 'home3/dongdaemoon'

  get 'home3/jungrang'

  get 'home3/sungbuk'

  get 'home3/gangbuk'

  get 'home3/dobong'

  get 'home3/nowon'

  get 'home3/enpung'

  get 'home3/seodaemoon'

  get 'home3/mapo'

  get 'home3/yangcheon'

  get 'home3/gangseo'

  get 'home3/guro'

  get 'home3/gumcheon'

  get 'home3/yungdeongpo'

  get 'home3/dongjak'

  get 'home3/gwanak'

  get 'home3/seocho'

  get 'home3/gangnam'

  get 'home3/songpa'

  get 'home3/gangdong'

  get 'home3/detail'


  get 'home3/exdown', as: 'admin'
  
  
  get 'home3/except'
  get 'home3/except2'
  get 'home3/except3'
  
  get 'home3/index2'
  get 'home3/yoyak'
  get 'home3/savej'
  root 'home3#exdown'
  
  get 'home3/sibal', as: 'sibal'
  
  
  get 'refresh/index'
  get 'refresh/crawling'
  get 'refresh/done'
  
  get 'home3/kkk', as: 'kkk'
  get 'home3/kkk2', as: 'kkk2'
   get 'home3/kkk3', as: 'kkk3'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
