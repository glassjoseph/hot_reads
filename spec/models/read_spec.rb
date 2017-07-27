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
end
