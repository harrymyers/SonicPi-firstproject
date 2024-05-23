hat = "C:/Users/Harry Myers/Desktop/ginseng drum kit vol.3/ginseng drum kit VOL 3/hats/gin$eng hat 4.wav"
clap = "C:/Users/Harry Myers/Desktop/ginseng drum kit vol.3/ginseng drum kit VOL 3/snares_claps/gin$eng clap 1.wav"
noise = "C:/Users/Harry Myers/Desktop/Pokemon Cries - Honedge  Doublade  Aegislash.mp3"
melody = "C:/Users/Harry Myers/Desktop/ginseng drum kit vol.3/ginseng drum kit VOL 3/melodies_samples/7.wav"


use_sample_bpm hat, num_beats: 4

live_loop :hat do
  1. times do
    sample hat
    sleep 4
  end
  2. times do
    sample hat
    sleep 1
  end
  1. times do
    sample hat
    sleep 2
  end
  sleep 12
  sample hat
  sleep 2
  sample hat
  sleep 10
  
end

live_loop :clap do
  sleep 8
  sample clap
  sleep 8
  
end

live_loop :noise do
  sample noise, start: 0.44, finish: 0.54, amp: 0.2
  sleep 40
  sample noise, start: 0.44, finish: 0.54, amp: 0.2, rate: 0.8
  sleep 4
  sample noise, start: 0.44, finish: 0.54, amp: 0.2, rate: 0.6
  sleep 4
  sample noise, start: 0.44, finish: 0.54, amp: 0.2, rate: 0.9
  sleep 2
  sample noise, start: 0.44, finish: 0.54, amp: 0.2, rate: 0.9
  sleep 14
end

live_loop :melody do
  if tick >= 128
    sample melody, amp: 0.5, beat_stretch: 128
    sleep 128
    sample melody, amp: 0.5, beat_stretch: 128, rate: 0.5
    sleep 128
  else
    sleep 1  # This makes the loop wait for the specified number of beats
  end
end


live_loop :bass do
  if tick >= 64
    sample :subpulse, amp: 3
    play :f2, attack: 0.1, release: 8, amp: 3
    sleep 12
    play :c2, attack: 0.1, release: 4, amp: 3
    sleep 4
    play :c2, attack: 0.1, release: 4, amp: 3
    sleep 16
    
    play :f2, attack: 0.1, release: 8, amp: 3
    sleep 12
    play :c2, attack: 0.1, release: 2, amp: 3
    sleep 2
    play :c2, attack: 0.1, release: 2, amp: 3
    sleep 2
    play :c2, attack: 0.1, release: 4, amp: 3
    sleep 12
    play :a2, attack: 0.1, release: 4, amp: 3
    sleep 4
  else
    sleep 1
  end
end









