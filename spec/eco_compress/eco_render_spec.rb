require "spec_helper"

describe "Eco.render" do

  describe "capture.eco" do
    it "should equals to min.out file" do
      option = {
        :items => [
          {:name => "Foo", :price => 1000}
        ]
      }
      result = Eco.render(File.read("./spec/fixtures/capture.eco"), option)
      result.should == File.read("./spec/fixtures/capture.min.out")
    end
  end

  describe "hello.eco" do
    it "should equals to min.out file" do
      option = {:name => "Sam"}
      result = Eco.render(File.read("./spec/fixtures/hello.eco"), option)
      result.should == File.read("./spec/fixtures/hello.min.out")
    end
  end

  describe "projects.eco" do
    describe "when projects is empty" do
      it "should equals to min.out.1 file" do
        option = {:projects => []}
        result = Eco.render(File.read("./spec/fixtures/projects.eco"), option)
        result.should == File.read("./spec/fixtures/projects.min.out.1")
      end
    end
    describe "when projects is not empty" do
      it "should equals to min.out.2 file" do
        option = {
          :projects => [
            {
              :url => "http://foo.bar/",
              :name => "Foo",
              :description => "Bar"
            }
          ]
        }
        result = Eco.render(File.read("./spec/fixtures/projects.eco"), option)
        result.should == File.read("./spec/fixtures/projects.min.out.2")
      end
    end
  end

  describe "with-comment.eco" do
    it "should equals to min.out file" do
      result = Eco.render(File.read("./spec/fixtures/with-comment.eco"))
      result.should == File.read("./spec/fixtures/with-comment.min.out")
    end
  end

end
