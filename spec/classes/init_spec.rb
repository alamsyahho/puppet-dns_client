require 'spec_helper'
describe 'resolver' do

  context 'with defaults for all parameters' do
    it { should contain_class('resolver') }
  end
end
