require 'bob'

RSpec.describe 'Bob' do
  let(:bob) { Bob.new }

  # you can also use a before block to create a new
  # instance of Bob, but keep in mind that it'd need
  # to be as an instance variable so it can be
  # retrieved in each test:
  #
  #   before do
  #     @bob = Bob.new
  #   end

  # organize specs by putting them inside describe or context blocks. I like
  # to use describe to outline a specific function or feature, and context
  # to outline what circumstances are needed in order for the test to
  # operate.
  #
  # Here's an example based on our conversation about managing discount
  # codes:
  #
  #   describe 'discount code management' do
  #     context 'as an admin' do
  #       before do
  #         @user = Admin.new
  #         # ... etc.
  #       end
  #       it 'assigns a liaison to a discount code'
  #     end
  #   end

  describe 'answers statements' do
    it 'as "Whatever."' do
      expect(bob.hey('The weather sure is nice today.')).to \
        eq 'Whatever.'
    end
  end

  describe 'answers shouting' do
    it 'as "Woah, chill out!"' do
      expect(bob.hey('WATCH OUT!')).to eq 'Woah, chill out!'
    end

    it 'gibberish as "Woah, chill out!"' do
      gibberish = ('A'..'Z').to_a.shuffle[0, 10].join
      expect(bob.hey(gibberish)).to eq 'Woah, chill out!'
    end
  end

  describe 'answers questions' do
    it 'answers "Did you do your homework?" as "Sure."' do
      expect(bob.hey('Did you do your homework?')).to \
        eq 'Sure.'
    end

    it 'answers a numeric question as "Sure."' do
      expect(bob.hey('Can I borrow 20 dollars?')).to eq 'Sure.'
    end
  end

  # mark pending specs in one of the following ways:
  #
  # * use `xit` instead of `it` for the example
  # * type `skip` as the first line of the spec. You can also add a label
  #   explaining why it's skipped (`skip "save for later"`)
  # * type `pending` as the first line of the spec. These specs will fail
  #   if they pass.
  # * DO NOT comment out specs or leave empty `do...end` blocks. RSpec
  #   will ignore the former, and pass the latter without actually
  #   doing anything.

  # Here are some pending specs for you to work with, if you'd like.

  xit 'answers gibberish questions as "Sure."' do
    gibberish = ('a'..'z').to_a.shuffle[0, 10].join
    expect(bob.hey("#{gibberish}?")).to eq 'Sure.'
  end

  xit 'answers a forceful statement as "Whatever."' do
    expect(bob.hey("Let's cut class and hang out at the 7-11!")).to \
      eq 'Whatever.'
  end

  xit 'answers "Whatever." when acronyms are used in regular speech' do
    expect(bob.hey("It's OK if you don't want to go to the DMV.")).to \
      eq 'Whatever.'
  end

  xit 'answers forceful (yelling) questions as "Woah, chill out!"' do
    expect(bob.hey("WHY HAVEN'T YOU STARTED YOUR HOMEWORK?")).to eq \
      'Woah, chill out!'
  end
end
