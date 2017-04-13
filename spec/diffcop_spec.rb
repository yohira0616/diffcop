require 'spec_helper'

RSpec.describe Diffcop do
  before do
    @executor = Diffcop::Executor.new
  end

  it 'has a version number' do
    expect(Diffcop::VERSION).not_to be nil
  end

  describe '#rb_files' do
    it 'got some_controller.rb and awesome.rb' do
      diff_files = "app/controllers/some_controller.rb\napp/models/great_model/awesome.rb\napp/views/some/index.erb\n/javasciprt/src/index.js"
      result = @executor.send(:rb_files,diff_files)
      expect(result).to eq 'app/controllers/some_controller.rb app/models/great_model/awesome.rb'
    end

    it 'got empty' do
      diff_files = "app/views/some/index.erb\njavasciprt/src/index.js"
      result = @executor.send(:rb_files,diff_files)
      expect(result).to eq ''
    end

    it 'got some_controller.rb' do
      diff_files = "app/controllers/some_controller.rb\napp/views/some/index.erb\n/javasciprt/src/index.js"
      result = @executor.send(:rb_files,diff_files)
      expect(result).to eq 'app/controllers/some_controller.rb'
    end
  end

end
