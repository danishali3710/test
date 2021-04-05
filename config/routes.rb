Rails.application.routes.draw do
  resources :scrapers do
    match '/scrape', to: 'scrapers#scrape', via: :post, on: :collection
  end

  root to: 'scrapers#index'
end
