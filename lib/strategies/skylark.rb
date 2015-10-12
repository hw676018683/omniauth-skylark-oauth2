require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Skylark < OmniAuth::Strategies::OAuth2
      option :name, :skylark

      option :client_options, {
        :site => "http://skylarkly.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :name => raw_info["name"],
          :nickname => raw_info["nickname"],
          :phone => raw_info["phone"],
          :qq => raw_info["qq"],
          :headimgurl => raw_info["headimgurl"],
          :organization_ids => raw_info["organization_ids"],
          :namespace_id => raw_info["namespace_id"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/user.json').parsed
      end
    end
  end
end