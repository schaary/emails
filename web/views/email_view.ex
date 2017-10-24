defmodule Emails.EmailView do
  use Emails.Web, :view

  def render("index.json", %{emails: emails}) do
    %{data: render_many(emails, Emails.EmailView, "email.json")}
  end

  def render("show.json", %{email: email}) do
    %{data: render_one(email, Emails.EmailView, "email.json")}
  end

  def render("email.json", %{email: email}) do
    %{id: email.id,
      email: email.email}
  end
end
