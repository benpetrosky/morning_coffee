

class NewsController < ApplicationController
  def index

    @results = GoogleCustomSearchApi.search("obama")
    @results2 = GoogleCustomSearchApi.search("Lebron James")
    @results3 = GoogleCustomSearchApi.search("cnn")

  end
end
