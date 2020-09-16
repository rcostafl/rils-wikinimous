Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # show all articles
  # Parameters:
  # => 1: the route;
  # => 2: destination (object article, from class ArticlesController))
  # => 3: prefix (can be a symble or a string)
  get('/articles', to: 'articles#index', as: :articles)

  # Create a new article
  get('/articles/new', to: 'articles#new', as: :new_article)

  # detail one article
  get('/articles/:id', to: 'articles#show', as: :article)
  post('/articles', to: 'articles#create')

  # Updadate an article
  get('/articles/:id/edit', to: 'articles#edit', as: :edit_article)
  patch('/articles/:id', to: 'articles#update')

  # delete an article
  delete('articles/:id', to: 'articles#destroy')
end
