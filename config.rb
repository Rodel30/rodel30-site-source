activate :directory_indexes
activate :autoprefixer

set :relative_links, true
set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"
set :layout, "layouts/application"

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
end

helpers do

  def icon(icn)
    "<i class='fa fa-#{icn}'></i>"
  end
end
