module ApplicationHelper
  def active_class?(link_path)
    current_page?(link_path) ? 'active' : ''
  end
  
  def page_header(text)
    content_for(:page_header) { text.to_s }
  end
  
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Welcome to BookXChange!"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def gravatar_for(user, size = 30, title = user.name)
      image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
  end
  
end
