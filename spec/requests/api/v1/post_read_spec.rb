require 'rails_helper'

RSpec.describe "it can receive a read" do
  it "receives a read and creates record" do

    expect(Read.count).to eq(1)
    post ("/api/v1/reads?url='https://www.turing.io'")

    expect(Read.count).to eq(1)
    expect(Read.last.url).to eq("https://www.turing.io")
  end
end
