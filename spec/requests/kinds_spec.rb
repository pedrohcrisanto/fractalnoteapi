require 'rails_helper'

RSpec.describe "Kinds", type: :request do
  describe "GET /kinds" do
    it "works!" do
      get kinds_path
      expect(response).to have_http_status(200)
    end
  end
end
