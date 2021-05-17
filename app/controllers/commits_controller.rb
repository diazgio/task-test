class CommitsController < ApplicationController
  def index
    data = commit_getter
  end
end
