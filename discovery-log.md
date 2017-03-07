:# 3.5.17
- use_transpose
	This will bring the entire ring down a number of keys that you choose by
	a number.  This is useful for when you want to efficiently change chords
	for a scale you've set up, or you want to lower the sound a couple
	octaves without having to worry about changing the entire ring.
	
	*example*: (ring :d, :e, :f) will play these keys on middle D and up.
		   If you do use_transpose -12, it will bring it down an entire
		   octave.
- This is an awesome riff:
	with_fx :echo do
 	   live_loop :vortex do
    	   use_random_seed (ring 800, 767, 780, 860).tick
    	   use_transpose -12
    	   notes = (scale :e3, :minor_pentatonic, num_octaves: 3)
    	   16.times do
     		play notes.choose, release: 0.1, amp: 1.5
      		sleep 0.125
    	   end
  	end

*What I like about this is how you can string together random seeds to build out a melody
It will always be 16 16th notes, repeated again and again. So you can control exactly how
it sounds, but still using the method of discovery*










