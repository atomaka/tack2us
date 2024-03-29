require 'spec_helper'

describe Paste do
  before do
    @paste = FactoryGirl.create(:paste)
  end

  subject { @paste }

  it { should respond_to(:content) }

  it { should be_valid }

  describe "when content is blank" do
    before { @paste.content = " " }
    it { should_not be_valid }
  end
end
