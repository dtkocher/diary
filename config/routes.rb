Diary::Application.routes.draw do
  get "entry/index"

  root to: "entry#index"
end
