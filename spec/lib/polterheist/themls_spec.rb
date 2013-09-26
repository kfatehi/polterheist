require 'spec_helper'

describe Polterheist::TheMLS do
  describe "#locate_property" do
    context "when no homes are found" do
      let(:address) { "8622 LEHIGH Ave" }
      it "returns false" do
        res = subject.locate_property "8622 LEHIGH Ave"
        res.should be_false
      end
    end
  end
end
