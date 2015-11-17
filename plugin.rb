
Onebox = Onebox

module Onebox
  module Engine
    class SteamStoreWidgetOnebox
      include Engine
      
      matches_regexp(/^(http?:\/\/)?([\da-z\.-]+)(steampowered.com\/)(.)+\/?$/)

      def to_html
        # Use the Steam support iframe widget
        widget_url = @url.gsub('/app/','/widget/')
        
        "<iframe src='#{widget_url}' frameborder='0' width='646'' height='190'></iframe>"
      rescue
        @url
      end

    end
  end
end
