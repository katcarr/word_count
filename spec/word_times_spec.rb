require('rspec')
require('word_times')

describe('String#word_times') do

  it("returns a 0 if nothing is sent in as an argument") do
    expect("life".word_times('')).to(eq(0))
  end

  it("returns a 0 if the method is called on the empty string") do
    expect("".word_times('great')).to(eq(0))
  end

  it("returns a 0 if the method is called on the empty string and nothing is sent as an argument") do
    expect("".word_times('')).to(eq(0))
  end

  it("returns a 0 if the word to count does not match a one word string") do
    expect("life".word_times('good')).to(eq(0))
  end

  it("returns a 0 if the word to count is not in a multi-word string") do
    expect("life is great".word_times('good')).to(eq(0))
  end

  it("returns a 1 if the word to count matches a one word string") do
    expect("great".word_times('great')).to(eq(1))
  end

  it("returns a 1 if the word to count matches one word in a multi-word string") do
    expect("life is great".word_times('great')).to(eq(1))
  end

  it("returns the correct number of instances that the word to count occurs in a multi-word string") do
    expect("It's great to be great".word_times('great')).to(eq(2))
  end

  it("returns the correct number of instances that the word to count occurs in a multi-word string for all variations of capitalization") do
    expect("It's GReat to be greaT".word_times('great')).to(eq(2))
  end

  it("returns the correct number of instances that the word to count occurs in a multi-word string for all variations of capitalization") do
    expect("It's GReat to be greaT".word_times('GREAT')).to(eq(2))
  end

  it("returns the correct number of instances that the word to count occurs in a multi-word object string for contractions") do
    expect("It's to be it's".word_times("it's")).to(eq(2))
  end

  it("does not count instances of the word to find that occur as segments in the string") do
    expect("Great to eat".word_times('eat')).to(eq(1))
  end

end
