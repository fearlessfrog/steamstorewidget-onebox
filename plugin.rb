# name: Store Store Widget Onebox
# about: Simple Steam Store display box for Discourse
# version: 0.1
# authors: fearlessfrog
# url: https://github.com/fearlessfrog/steamstorewidget-onebox

Onebox = Onebox

module Onebox
  module Engine
    class SteamStoreWidgetOnebox
      include Engine
      
      matches_regexp(/^(https?:\/\/)?([\da-z\.-]+)(steampowered.com\/)(.)+\/?$/)

      def to_html
        # Use the Steam support iframe widget over https
        widget_url = @url.gsub('/app/','/widget/')
        widget_url = widget_url.gsub('http:','https:')
        "<iframe src='#{widget_url}' frameborder='0' width='100%' height='190'></iframe>"
      rescue
        @url
      end

    end
  end
end
