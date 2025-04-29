# frozen_string_literal: true

RSpec.describe LibraryStandardNumbers do
  it "has a version number" do
    expect(LibraryStandardNumbers::VERSION).not_to be nil
  end

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
  it "normalizes ISBNs" do
    expect(LibraryStandardNumbers::ISBN.normalize("0-306-40615-2")).to eq "9780306406157"
  end
  it "returns nil when attempting to normalize an invalid ISBN" do
    expect(LibraryStandardNumbers::ISBN.normalize("na078-890351")).to be_nil
  end
  it "validates ISBNs" do
    expect(LibraryStandardNumbers::ISBN.valid?("9781449373320")).to be true
  end
end
