require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe CommandT::Scanner do
  before :all do
    @pwd = Dir.pwd
    Dir.chdir File.join(File.dirname(__FILE__), '..', '..', 'fixtures')
    @scanner = CommandT::Scanner.new
  end

  after :all do
    Dir.chdir @pwd
  end

  describe 'paths method' do
    it 'should return a list of regular files' do
      @scanner.paths.should == ['./bar/abc', './bar/xyz', './baz', './bing',
        './foo/alpha/t1', './foo/alpha/t2', './foo/beta']
    end
  end
end
