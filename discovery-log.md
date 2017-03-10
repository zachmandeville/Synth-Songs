# 3.9.17
- knit! Wonderful Knit!

	I discovered a single word that is changing my sonic-pi life considerably: knit. You can use
	this to repeat certain parts of a ring.  And so this is reducing the length of my rings by
	half to a quarter and making every so much preeeeettier (meaning i can actually udnerstand
	what I am doing.)

	For example: let's say you want to do a bass line that is lower C for three beats, walks up
	to E for three beats, then goes back down to C to stay for the remainder of the phrase.
	Before I was putting in this:
	
	`(ring :c, :c, :c, :d, :e, :e, :e, :d, :c, :c, :c, :c, :c, :c, :c, :c).tick`
	
	which looks awful, but is also hard to track.  With knit, you can set repetitive parts of
	the ring, so it'd look like this:
	
	`(knit :c, 3, :d, 1, :e, 3, :d, 1, :c, 8).tick`
	
	So much easier to read, and understand!  
	
-use_synth_defaults

	It's a little embarassing that I am just now understanding this.  Again, it doesn't do
	anything toooo special, it just keeps the song so clean.  I was typing out the same attack
	and delay for every chord change with a synth.  By setting synth defaults at the top of the
	loop you only have to set these once.

	An even better benefit is it is now easier to listen to a riff and subtly change the sound
	by affecting the defaults in real time.  Incredible!

- define :some do |coolshit|

	I am still not fully understanding this, but it's getting a bit better. Defining functions
	makes it much easier to play around with a repeating phrase or melody with slight changes,
	or just not have to put in the same line so many times.  But I still don't feel like i'm
	fully getting how they work.  But I put in a lot of work on them today.  By defining a
	single function, i was able to reduce the code of a song by half...which is probably better
	code...but it also just makes the song so much easier to scan.  I am finding sonic pi really
	interesting because when the code is done well it reads like sheet music.  I really like
	that there is a musical quality now just in the elegance an cleanliness of code.

# 3.5.17
- use_transpose

	This will bring the entire ring down a number of keys that you choose by a number.  This is
	useful for when you want to efficiently change chords for a scale you've set up, or you want
	to lower the sound a couple octaves without having to worry about changing the entire ring.
	
	*example*: (ring :d, :e, :f) will play these keys on middle D and up.  If you do
	use_transpose -12, it will bring it down an entire octave.
- This is an awesome riff:

	```ruby
	with_fx :echo do 
 	   live_loop :vortex do 
	      use_random_seed (ring 800, 767, 780, 860).tick
	      use_transpose -12 
	      notes = (scale :e3, :minor_pentatonic, num_octaves: 3) 
	      16.times do play
	         notes.choose, release: 0.1, amp: 1.5 
	         sleep 0.125 
	      end 
	   end
	```

*What I like about this is how you can string together random seeds to build out a melody It will
always be 16 16th notes, repeated again and again. So you can control exactly how it sounds, but
still using the method of discovery*
