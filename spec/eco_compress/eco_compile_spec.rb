require "spec_helper"

describe "Eco.compile" do

  files = %w(capture hello helpers projects with-comment)

  files.each do |file|
    describe "#{file}.eco" do
      it "should equals to min.js file" do
        result = Eco.compile File.read("./spec/fixtures/#{file}.eco")
        result.should == File.read("./spec/fixtures/#{file}.min.js")
      end
    end
  end

end
