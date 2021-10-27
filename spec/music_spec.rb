require 'music'

describe Music do
  subject(:music) { described_class.new }
  # it 'should have soundwaves input as an array' do
  #   music = Music.new
  #   expect(music).to be_an_instance_of(Array)
  # end 

  it 'should adjust frequencies to the upper limit' do 
    expect(music.adjust([1500])).to eq([1000])
  end 

  it 'should adjust frequencies to the lower limit' do 
    expect(music.adjust([10])).to eq([40])
  end 

  it 'should not adjust if within the limit' do 
    expect(music.adjust([50])).to eq([50])
  end 

  it 'should raise an error message when an element is < 1' do 
    expect{ music.adjust([-1]) }.to raise_error "Sound waves are not parsed correctly"
  end

  it 'should readjust to my changed upper limit' do 
    expect(music.adjust([1500], 1500)).to eq([1500])
    # testing having a readjusted upper limit of 1500
  end 

  it 'should readjust to my changed lower limit' do 
    expect(music.adjust([30], 1000, 30)).to eq([30])
    # testing having a readjusted lower limit of 30
    # is there anything I can put to just stick to the UPPER_LIMIT_DEFAULT
  end 

  it 'should raise an error message when the input is not an array' do 
    expect{ music.adjust(1) }.to raise_error "Sound waves are not parsed correctly"
  end 

  # testing if one frequency can be tested within 100ms - this needs to test this x 44,100
  it 'should process a full second of music within 100ms' do   
      expect{ music.adjust([30]) }.to perform_under(0.1)
      # TRIED: expect{ music.adjust([30]) }.to perform_under(0.1).sample(44100).times
      # but the test just runs on and on 
  end

end 