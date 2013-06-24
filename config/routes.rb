Diary::Application.routes.draw do
  resources :entry

  root to: "pages#home"
end
