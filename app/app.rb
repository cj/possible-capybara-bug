class Receptionist < Padrino::Application
  set :root, File.dirname(__FILE__)
  set :haml, { :format => :html5 }
  set :less, { :load_paths => [ "#{File.dirname(__FILE__)}/assets/stylesheets" ] }

  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  # This is for liquid
  # register Padrino::Liquid
  register Sinatra::Can
  register Sinatra::AssetPack
end