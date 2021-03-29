require 'rails_helper'

RSpec.describe ArticlesController do
  describe '#index' do
    it 'returns a succes response' do 
      get '/articles'
      expect(response).to have_http_status(:ok)
    end

    it 'returns a proper JSON' do 
      article = create.Article
      get '/articles'
      body = JSON.parse(response.body)
      expect(body).to eq (
        data: [
          {
            id: article.id,
            type: 'articles',
            attributes: {
              title: article.title,
              content: article.content,
              slug: article.slug
            }
          }
        ]
      )
    end
  end

end