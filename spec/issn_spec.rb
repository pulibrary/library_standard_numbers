# frozen_string_literal: true

RSpec.describe LibraryStandardNumbers::ISSN do
  it "validates ISSNs" do
    expect(LibraryStandardNumbers::ISSN.valid?("0378-5955")).to be true
    expect(LibraryStandardNumbers::ISSN.valid?("XXXX-XXXX")).to be false
  end
  it "normalizes ISSNs" do
    expect(LibraryStandardNumbers::ISSN.normalize("0378-5955")).to eq "03785955"
  end
  it "returns nil when attempting to normalize an invalid ISSN" do
    expect(LibraryStandardNumbers::ISSN.normalize("XXXX-XXXX")).to be_nil
  end
end
