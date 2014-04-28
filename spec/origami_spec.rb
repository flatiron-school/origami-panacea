require 'spec_helper'

describe Origami do

  let(:paper) { Origami.new }

  describe '#square' do
    it 'has four sides of equal length' do
      expect(paper.square).to eq("four equal sides")
    end

    it 'turns into a perfect triangle when folded on a diagonal' do
      expect(paper.square.diagonal_fold).to eq("triangle")
    end
  end

  describe '#baloon' do
    it 'is three dimensional' do
      expect(paper.balloon).to eq("has a height, width, and depth")
    end

    it 'has 6 sides' do
      expect(paper.balloon.sides.count).to eq(6)
    end
  end

  describe '#crane' do
    it 'should have two wings' do
      expect(paper.crane.wings.count).to eq(2)
    end   

    it 'should have a tail' do
      expect(paper.crane.wings.count).to eq(2)
    end

    it 'should have a head' do
      expect(paper.crane.wings.count).to eq(2)
    end
  end
end