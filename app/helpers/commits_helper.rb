module CommitsHelper
  require 'json'
  require 'net/http'
  def commit_getter
    user = 'diazgio'
    repo= 'task-test'
    url = "https://api.github.com/repos/#{user}/#{repo}/commits"
    data = Net::Http:get(url)
    dataArray = JSON.parse(data.body.to_s)
  end
end
