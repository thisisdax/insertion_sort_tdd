require "spec_helper"
require_relative '../lib/sort.rb'

describe EngageSort do
  it 'should Sort an empty Array' do
    engage = EngageSort.new
    engage.tddSort([1,2,3,4])
    expect(engage.tddSort([])).to eq([])
  end

  it 'should Sort Array with 1 item' do
    engage = EngageSort.new
    expect(engage.tddSort([1])).to eq([1])
  end

  it 'should Sort Array with 2 items (reversed order), return correct order Array' do
    engage = EngageSort.new
    expect(engage.tddSort([2,1])).to eq([1,2])
  end

  it 'should Sort Array with 3 items, 2nd and 3rd is in reverse order' do
    engage = EngageSort.new
    expect(engage.tddSort([1,3,2])).to eq([1,2,3])
  end

  it 'should Sort Array with 4 items, and having 2 smaller numbers at the back' do # next test case
    engage = EngageSort.new
    expect(engage.tddSort([1,4,3,2])).to eq([1,2,3,4])
    expect(engage.tddSort([1,4,2,3])).to eq([1,2,3,4])
  end

  it 'should Sort Array with values existing more than once' do # added 2 more test cases after
    engage = EngageSort.new
    expect(engage.tddSort([2,4,1,3,1])).to eq([1,1,2,3,4])
    expect(engage.tddSort([1,1,4,2,2,3])).to eq([1,1,2,2,3,4])
  end

  it 'should SortArray with negative values' do
    engage = EngageSort.new
    expect(engage.tddSort([-1,-2,-3,3,0,2,1])).to eq([-3,-2,-1,0,1,2,3])
    expect(engage.tddSort([-1,0,-4,2,3,4])).to eq([-4,-1,0,2,3,4])
  end
end
