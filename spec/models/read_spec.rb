require 'rails_helper'

RSpec.describe Read, type: :model do
  it "is invalid without a url" do
    read = Read.new
    expect(read).to be_invalid
  end

  it "is valid with a url" do
    read = Read.new(url: "https://www.turing.io")
    expect(read).to be_valid
  end

  it "can return top ten read links" do
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

    top_links = Read.top_links

    expect(top_links.class).to eq(Array)
    expect(top_links[0]).to eq("https://www.turing.io")
    expect(top_links[1]).to eq("https://www.google.com")
    expect(top_links[2]).to eq("https://www.wikipedia.com")
    expect(top_links.length).to eq(10)
  end
end
