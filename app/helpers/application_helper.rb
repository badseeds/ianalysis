module ApplicationHelper
  # Returns a title on a per-page basis.
  def title
    base_title = "iAnalysis polling and surveying community"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  def logo
  	image_tag("logo2.png", :alt => "iAnalysis", :class => "round")
  end
  
  def survey2
    image_tag("survey3.png", :alt => "iAnalysis", :class => "round")
  end
end
