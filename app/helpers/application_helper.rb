# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(title)
    content_for(:title) do
      title
    end

    return "<h1>#{title}</h1>"
  end
end
