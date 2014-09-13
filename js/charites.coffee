h      = require './helpers'
Bubble = require './bits/Bubble'
Burst  = require './bits/Burst'

class Charites
  Bubble: Bubble
  Burst:  Burst

charites = new Charites

if (typeof define is "function") and define.amd
  define "charites", [], -> charites

# TODO
#  add size option
#  fill syntax sugar
#  position syntax sugar
#  inclde rate to size calc
  
wrapper = document.getElementById 'js-wrapper'
bubble = new charites.Bubble
  parent:   wrapper
  radius:    {50: 100}
  lineWidth: { 3: 1 }
  shape:     'star'
  duration: 500
  cnt:      5
  color:    'deeppink'
  # angle: {45: 45}
  # bitRadius: {10: 2  }
  delay: 0
  lineCap: 'none'
  position: x: 200, y: 200
  # degree: 180
  bitRadius: 20
  bitRadiusEnd: 20
  rateEnd: 1.5
  # angle: {0: 360}
  # isShowEnd: true
  # rate:    {.5: 1.5}
  # rateEnd: 1.5
  # lineDash: [400,100]
  # lineDashEnd: [100,1000]

for i in [0..20]
  a = h.rand(1,20)
  r = h.rand(-20,20)
  bubble.chain
    lineWidthEnd: 40
    angleEnd:     r
    # position: x:e.x, y:e.y
    # bitSpikes: 3
    duration: 1000
    # fillEnd: '#0F0'
    color: 'green'
    colorEnd: 'black'
    bitRadiusEnd: 20
    # lineDashEnd: [400,100]


window.addEventListener 'click', (e)->
  # bubble.setPosition e.x, e.y
  a = h.rand(1,20)
  r = h.rand(-20,20)
  # console.log a
  bubble.run
    # lineWidthEnd: a
    # angleEnd:     r
    position: x:e.x, y:e.y
    # bitSpikes: 3
    duration: 500
    # fillEnd: '#0F0'
    # colorEnd: 'black'
    # bitRadiusEnd: 20


















