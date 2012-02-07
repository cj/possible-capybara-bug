##
# Setup global project settings for your apps. These settings are inherited by every subapp. You can
# override these settings in the subapps as needed.
#
Padrino.configure_apps do
  enable :sessions
  set :session_secret, 'af86dssdg687f6g8df7g68s76f7s68g7f6dg8s76df8s76fs8g7f6fd8g'
end

# Mounts the core application for this project
Padrino.mount("Receptionist").to('/')