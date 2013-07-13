module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Helpful Links").join(" - ")
      end
    end
  end
end
