require 'net/http'
require 'uri'
require 'json'

module PenguinNet
    API_URI = "http://penguinnet220180224010104.azurewebsites.net/api/blockchain/"

    def generateKeys
      uri_call = URI(API_URI + "createnewkeyinfo")
      response = JSON.parse(Net::HTTP.get(uri_call),symbolize_names: true)
    end

    module_function :generateKeys
end
