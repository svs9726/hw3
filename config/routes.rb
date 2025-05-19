Rails.application.routes.draw do
  resources "places" do 
    resources "entries"
  end
end
