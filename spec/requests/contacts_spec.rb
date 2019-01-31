require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  describe "GET /contacts" do
    it "works!" do
      get contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
