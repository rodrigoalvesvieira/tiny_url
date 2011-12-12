require "tiny_url/version"
require "net/http"
require "clipboard"

module TinyUrl
  def self.tinify(url)
    
    uri = URI.parse "http://tinyurl.com/api-create.php?url=http://#{url}"
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    tiny_url = response.body
    
    Clipboard.copy tiny_url
    
    puts "Copied tiny url to clipboard!"
    puts "The generated tiny url is #{tiny_url}, you're gonna see the page..."
    sleep 1
    `open #{tiny_url}`
  end
  
  def self.silently_tinify(url)
    uri = URI.parse "http://tinyurl.com/api-create.php?url=http://#{url}"
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    tiny_url = response.body
  end
end
