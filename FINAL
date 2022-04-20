use_bpm 82
use_synth :piano
note = [:d5,:b4,:a4,:d5,:d5,:b4,:b4]

live_loop :caaspp do
  n = 0
  7.times do
    play (note[n])
    sleep 1/4.0
    n = n + 1
  end
  stop
end

whoops = "C:/Users/davis/Downloads/oops.wav"
cassette = "C:/Users/davis/Downloads/Cassette.wav"
ohno = "C:/Users/davis/Downloads/ohno.wav"
smashing = "C:/Users/davis/Downloads/smashing.wav"

sleep 2.5
sample whoops, amp: 8
sleep 2.5
sample cassette, amp: 16, beat_stretch: 16
sleep 16

use_bpm 94
define :halen do |l, m, n, o, p|
  play l
  sleep 1/4.0
  play m
  sleep 1/4.0
  play n
  sleep 1/4.0
  play o
  sleep 1/4.0
  play p
  sleep 1/4.0
end

live_loop :yearg do
  14.times do
    with_fx :reverb do
      with_fx :reverb do
        halen :a4, :d4, :g4, :d4, :f4
        halen :a4, :d4, :g4, :c5, :d4
        halen :d5, :d4, :a4, :c5, :g4
      end
    end
  end
  stop
end

sleep 16

define :pizza do |q, r, s, t, u|
  play q, amp: 10, sustain: t, sustain_level: u
  play r, amp: 10, sustain: t, sustain_level: u
  play s, amp: 10, sustain: t, sustain_level: u
end

2.times do
  use_synth :pluck
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        pizza :bb2, :f2, :bb1, 7, 4
      end
    end
  end
  sample :drum_splash_soft, amp: 0.4
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        pizza :d3, :a2, :d2, 7, 4
      end
    end
  end
  sample :drum_splash_soft
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      pizza :bb2, :f2, :bb1, 4, 4
    end
  end
end
sample :drum_splash_soft
sleep 2
n=0.2
2.times do
  sample :drum_bass_soft, amp: n
  sleep 1.0
  n=n+0.2
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      pizza :c3, :g2, :c2, 3, 4
    end
  end
end

define :alfredo do |v, w, x|
  play v, amp: 10
  play w, amp: 10
  play x, amp: 10
end

sleep 3
use_synth :pluck
with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      alfredo :c3, :g2, :c2
      sleep 1/4.0
      alfredo :c3, :g2, :c2
      sleep 1/4.0
      alfredo :d3, :a2, :d2
    end
  end
end

7.times do
  sleep 1/1.5
  alfredo :d3, :a2, :d2
end
sample ohno, amp: 20
7.times do
  sleep 1/1.5
  alfredo :d3, :a2, :d2
end
sample cassette, amp: 16, beat_stretch: 15
sleep 15

use_bpm 128
use_synth :dsaw

define :speak do |n,m,o,p|
  play :g4
  play :g3
  sleep 1
  play :g4
  play :g3
  sleep 1/2.0
  play :g4
  play :g3
  sleep 1/4.0
  play n
  play m
  sleep 1/2.0
  play n
  play m
  sleep 1/4.0
  play o
  play p
  sleep 1/2.0
  play :a4
  play :a3
  sleep 1/2.0
  play :b4
  play :b3
  sleep 1/2.0
end

define :bomp do
  play :c5
  play :c4
  sleep 1
  play :b4
  play :b3
  sleep 1
  play :a4
  play :a3
  sleep 1
  play :b4
  play :b3
  sleep 1
end

3.times do
  speak :g4,:g3,:g4,:g3
end
define :modem do |a, b|
  use_synth :dsaw
  play a
  play b
  use_synth :saw
  play a
  play b
  sleep 1
end

1.times do
  modem :c5, :c4
  modem :b4, :b3
  modem :a4, :a3
  modem :b4, :b3
end

define :spell do |n,m,o,p,q,r|
  use_synth :saw
  play n
  play m
  sleep 1/2.0
  play n
  play m
  sleep 2
  play o
  play p
  sleep 1
  play q
  play r
  sleep 1/2.0
end

live_loop :mode do
  3.times do
    2.times do
      spell :g2,:g1,:c3,:c2,:b2,:b1
    end
    spell :c3,:c2,:f3,:f2,:e3,:e2
    spell :c3,:c2,:c3,:c2,:c3,:c2
  end
  1.times do
    use_synth :saw
    play :g2
    play :g1
    sleep 1/2.0
    play :c3
    play :c2
  end
  7.times do
    sleep 1/2.0
    play :c3
    play :c2
  end
  sample ohno, amp: 20
  9.times do
    sleep 1/2.0
    play :c3
    play :c2
  end
  sample smashing, amp: 6
  stop
end

live_loop :drum do
  16.times do
    sample :bd_zum
    sleep 1
    sample :sn_dub, amp: 2
    sample :sn_dub
    sleep 1
  end
  stop
end

sleep 8

use_synth :dsaw
1.times do
  speak :g4,:g3,:g4,:g3
end
1.times do
  speak :c5,:c4,:b4,:b3
end

live_loop :depeche do
  3.times do
    speak :g4,:g3,:g4,:g3
  end
  1.times do
    speak :c5,:c4,:b4,:b3
  end
  stop
end
