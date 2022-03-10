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

    it 'can split at whitespace and remove trailing whitespace from end of word' do
        expect(@wrapper.wrap("christmas day", 10)).to eq("christmas\nday")
    end

    it 'can split at whitespace and remove trailing whitespace from start of word' do
        expect(@wrapper.wrap("christmas day", 9)).to eq("christmas\nday")
    end

    it 'can split early when the space is before column' do
        expect(@wrapper.wrap("the top", 5)).to eq("the\ntop")
    end

    it 'can split early when the space is before column' do
        expect(@wrapper.wrap("the rabbit", 6)).to eq("the\nrabbit")
    end
end