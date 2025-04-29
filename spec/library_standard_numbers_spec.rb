# frozen_string_literal: true

RSpec.describe LibraryStandardNumbers do
  it "has a version number" do
    expect(LibraryStandardNumbers::VERSION).not_to be nil
  end

  it "validates LCCNs" do
    expect(LibraryStandardNumbers::LCCN.valid?("n78-890351")).to be true
    expect(LibraryStandardNumbers::LCCN.valid?("n78-89035100444")).to be false
  end
end
