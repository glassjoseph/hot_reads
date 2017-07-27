require 'rails_helper'

RSpec.describe "it returns top ten most read links" do
  it "returns the urls in order of reads" do
    10.times do
      Read.create(url: "https://www.turing.io")
    end
    9.times do
      Read.create(url: "https://www.google.com")
    end
      Read.create(url: "https://www.wikipedia.com")
      Read.create(url: "https://www.wikipedia.com")
      Read.create(url: "https://www.wikipedia.com")
      Read.create(url: "https://www.amazon.com")
      Read.create(url: "https://www.amazon.com")
      Read.create(url: "https://www.facebook.com")
      Read.create(url: "https://www.random1.com")
      Read.create(url: "https://www.random2.com")
      Read.create(url: "https://www.random3.com")
      Read.create(url: "https://www.random4.com")
      Read.create(url: "https://www.random5.com")
      Read.create(url: "https://www.random6.com")


      get ("/api/v1/reads")

      top_links = JSON.parse(response.body)

      expect(top_links[0]).to eq("https://www.turing.io")
      expect(top_links[1]).to eq("https://www.google.com")
      expect(top_links[2]).to eq("https://www.wikipedia.com")
      expect(top_links.length).to eq(10)
      expect(response).to be_success
  end
end
