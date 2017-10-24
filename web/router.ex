defmodule Emails.Router do
  use Emails.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Emails do
    pipe_through :api

   resources "/emails", EmailController, except: [:new, :edit] 
  end
end
