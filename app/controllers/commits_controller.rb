class CommitsController < ApplicationController
  require 'json'
  require 'net/http'

  def show
    user = Commit.find(params[:id])
    url = URI.parse("https://api.github.com/repos/#{user.user_name}/#{user.repo_name}/commits")
    data = Net::HTTP.get(url)
    dataArray = JSON.parse(data.to_s)

    if user
      render json: {
        dataArray: dataArray
      }
    else
      render json: { error: error }
    end
  end
  
end
