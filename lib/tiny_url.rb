# encoding: UTF-8
require "tiny_url/version"
require "net/http"
require "clipboard"

module TinyUrl
  # API Base URL
  BASE_URL = "http://tinyurl.com/api-create.php?url=%s"
  
  module_function
  def tinify(url, open=nil, copy_to_clipboard=true)
    if tiny_url = make_request(url)
      sucess_message(tiny_url, open, copy_to_clipboard) 
      return true
    end
    puts "Something wrong..." and return false
  end
  def sucess_message(tiny_url,open,copy)
    Clipboard.copy(tiny_url) and puts "Copied the shortened tinyurl to clipboard!" if copy
    puts "The generated tiny url is #{tiny_url}"
    system("open",tiny_url) if open
  end
  def make_request(url)
    URI.parse(url) rescue raise(ArgumentError.new("Invalid URL")) 
    Net::HTTP.get(URI.parse(BASE_URL % url)) rescue return false
  end
end
