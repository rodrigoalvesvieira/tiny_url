require File.expand_path('spec/spec_helper')

describe TinyUrl do
 
  it "has a version" do
    TinyUrl::VERSION.should =~ /^\d+\.\d+\.\d+$/
  end
  
  it "can tinify url" do
    url = TinyUrl.make_request "google.com"
    url.should_not be_nil    
  end
end
