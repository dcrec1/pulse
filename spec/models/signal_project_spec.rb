
require File.dirname(__FILE__) + '/../spec_helper'

describe SignalProject do
   
  before(:each) do
    @project = SignalProject.new(:name => "my_signal_project", :feed_url => "http://foo.bar.com:3434/signal/projects/signal.rss")
  end

  describe "#build_status_url" do
    it "should use projects/status.xml" do
      @project.build_status_url.should == "http://foo.bar.com:3434/signal/projects/status.xml"
    end
  end
end
