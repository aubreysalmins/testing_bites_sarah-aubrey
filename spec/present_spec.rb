require "present"

RSpec.describe Present do
  context "when contents has already been wrapped" do
    it "returns an error message" do
      present = Present.new
      present.wrap("toy")
      expect { present.wrap("toy") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when no contents to unwrap" do
    it "returns an error message" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "when a contents is wrapped" do
    it "returns contents of present" do
      present = Present.new
      expect(present.wrap("toy")).to eq "toy"
    end
  end

  context "when a present is unwrapped" do
    it "returns the contents of present" do
      present = Present.new
      present.wrap("toy")
      expect(present.unwrap).to eq "toy"
    end
  end
end