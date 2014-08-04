require 'Term'
require 'rspec'
require 'definition_class'

describe 'Term' do
  before do
    Term.clear
  end

  it 'is initialized with a term' do
    new_term = Term.new 'Carrot'
    new_term.input_term.should eq 'Carrot'
  end

  it 'accepts a definition and attaches it to a term' do
    new_term = Term.new 'Carrot'
    new_definition = Definition_class.new 'An orange vegetable'
    new_term.definition_input(new_definition)
    new_term.definition[0].new_description.should eq 'An orange vegetable'
  end

  describe '.all' do
    it 'creates an empty array' do
      Term.clear
      Term.all.should eq []
    end
  end

  describe '.clear' do
    it 'clears all the terms and definitions' do
      Term.clear.should eq []
    end
  end
end
