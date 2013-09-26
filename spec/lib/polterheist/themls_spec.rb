require 'spec_helper'

describe Polterheist::TheMLS do
  describe "#locate_property" do
    it "returns the MLS number" do
      result = subject.locate_property "8622 LEHIGH Ave"
      result[:mls_number].should eq 0
    end
  end
end
