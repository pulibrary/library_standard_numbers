# frozen_string_literal: true

RSpec.describe LibraryStandardNumbers::LCCN do
  it "validates LCCNs" do
    expect(LibraryStandardNumbers::LCCN.valid?("n78-890351")).to be true
    expect(LibraryStandardNumbers::LCCN.valid?("n78-89035100444")).to be false
  end
  it "normalizes LCCNs" do
    expect(LibraryStandardNumbers::LCCN.normalize("n  78890351 ")).to eq "n78890351"
  end
  it "returns nil when attempting to normalize an invalid LCCN" do
    expect(LibraryStandardNumbers::LCCN.normalize("na078-890351")).to be_nil
  end
end
