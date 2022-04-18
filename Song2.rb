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

3.times do
  speak :g4,:g3,:g4,:g3
end
1.times do
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

live_loop :depeche do
  3.times do
    speak :g4,:g3,:g4,:g3
  end
  1.times do
    speak :c5,:c4,:b4,:b3
  end
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
  2.times do
    spell :g2,:g1,:c3,:c2,:b2,:b1
  end
  spell :c3,:c2,:f3,:f2,:e3,:e2
  spell :c3,:c2,:c3,:c2,:c3,:c2
end

live_loop :kick do
  sample :bd_zum
  live_loop :snare do
    sleep 1
    sample :sn_dub, amp: 2
    sample :sn_dub
    sleep 1
  end
  sleep 1
end
