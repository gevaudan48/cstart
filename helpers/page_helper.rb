module PageHelper

  def page_title(page = current_page)
    page.data.title_seo ? page.data.title_seo : page.data.title  || data.settings.site.title
  end

  def page_description(page = current_page)
    page.data.description ? page.data.description : data.settings.site.description
  end

  def page_url(page = current_page)
    data.settings.site.url + page.url 
  end

end