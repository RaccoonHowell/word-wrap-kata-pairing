require './wordwrap'

describe Wrapper do
    before do
        @wrapper = described_class.new
    end

    it 'can return an empty string when called with empty string' do
        expect(@wrapper.wrap("", 1)).to eq("")
    end

    it 'can return a string if it is shorter than the number given' do
        expect(@wrapper.wrap("test", 5)).to eq("test")
    end

    it 'can return a string that is longer than the number given and split it onto a new line' do
        expect(@wrapper.wrap("raccoon", 5)).to eq("racco\non")
    end

    it 'can return a string that is longer than the number given and split it onto a new line' do
        expect(@wrapper.wrap("christmas", 6)).to eq("christ\nmas")
    end
end