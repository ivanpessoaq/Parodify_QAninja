require "httparty"

module Helpers
  def apagarUser(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
