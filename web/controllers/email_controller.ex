defmodule Emails.EmailController do
  use Emails.Web, :controller

  alias Emails.Email

  def index(conn, _params) do
     # emails = Repo.all(Email)
    emails = [
      %{id: 1,
        name: "Elvis Aaron Presley",
        email: "elvis@example.com"},
      %{id: 2,
        name:  "Michael Joseph Jackson",
        email: "jacko@example.com"}
    ]

    render(conn, "index.json", emails: emails)
  end

end
