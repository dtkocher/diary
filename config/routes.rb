Diary::Application.routes.draw do
  resources :entry

  root to: "static_pages#home"
end
