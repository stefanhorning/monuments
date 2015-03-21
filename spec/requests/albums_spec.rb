require 'rails_helper'

RSpec.describe "Albums", :type => :request do
  describe "GET /albums" do
    it "works! (now write some real specs)" do
      get albums_path
      expect(response.status).to be(302)
    end
  end
end
