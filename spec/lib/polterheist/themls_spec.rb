require 'spec_helper'

describe Polterheist::TheMLS do
  describe "#locate_property" do
    let(:result) { subject.locate_property address }

    context "not located" do
      let(:address) { "8622 LEHIGH Ave" }
      
      it "returns false" do
        result.should be_false
      end
    end

    context "located" do
      let(:address) { "7654 WESTLAND Ave" }

      it "can be further parsed" do
        doc = Nokogiri::HTML.parse(result)
        img_src = doc.css(".mainImage img").first.attr :src
        img_src.should match /(jpg|png)/
      end
    end
  end
end
