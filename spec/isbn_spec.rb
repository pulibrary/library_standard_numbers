# frozen_string_literal: true

RSpec.describe LibraryStandardNumbers::ISBN do
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
