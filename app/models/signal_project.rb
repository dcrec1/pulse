class SignalProject < CruiseControlProject
  def build_status_url
    feed_url.gsub /\w*\.rss/, "status.xml"
  end
end
