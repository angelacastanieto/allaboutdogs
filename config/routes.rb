Rails.application.routes.draw do
  root 'dog#with_data'
  get 'dog/with_data'
  get 'dog/no_data'
  get 'dog/static_styled'
  get 'dog/static_html_only'
  get 'dog/new'
  post 'dog/create'
end
