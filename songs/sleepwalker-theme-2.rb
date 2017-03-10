use_bpm 108

define :thanksmatt do |r,u,b,y|
  16.times do
    play (ring u, r, :b4,u, r, b, u, :g4).tick
    sleep y
  end
end

with_fx :reverb do
  with_fx :nhpf do
    live_loop :test do
      use_synth_defaults amp: 1, attack: 0.125, release: 0.125
      use_synth (knit :beep, 7, :fm, 8).tick
      thanksmatt :g4, :c4, :b4, 0.25
      thanksmatt :f4, :c4, :b4, 0.25
      thanksmatt :e4, :c4, :g4, 0.25
      thanksmatt :e4, :b3, :g4, 0.25
    end
  end
end

live_loop :dreams do
  use_synth_defaults amp: 0.1, attack: 4, attack_level: 2, decay_level: 2, decay: 2
  play :e4
  sleep 8
  play :c4
  sleep 16
end

live_loop :happy_audience do
  use_bpm (knit 13.5, 1, 54, 4, 108, 8, 27, 2, 54, 4).tick
  sample :loop_mika, amp: 0.7, beat_stretch: 8
  sleep 2
end

live_loop :laughter do
  use_synth_defaults attack: 4, sustain: 4, release: 4
  use_synth :fm
  play_chord [:c4, :e4, :g4, :b4]
  sleep 10
  play_chord [:c4, :e4, :g4, :a4]
  sleep 10
  play_chord [:c4, :d4, :e4, :g4]
  sleep 10
end

