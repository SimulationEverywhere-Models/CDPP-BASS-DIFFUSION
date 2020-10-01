%#include (variables.inc)

[top]
components : BassDiffusion

[BassDiffusion]
type : cell
width : 23
height : 23 %Same as dim : (100,100)
delay : transport %we're not sure about this
defaultDelayTime : 100 %we're not sure about this
border : wrapped
neighbors : BassDiffusion(-2,-2) BassDiffusion(-2,-1) BassDiffusion(-2,0) BassDiffusion(-2,1) BassDiffusion(-2,2)
neighbors : BassDiffusion(-1,-2) BassDiffusion(-1,-1) BassDiffusion(-1,0) BassDiffusion(-1,1) BassDiffusion(-1,2)
neighbors : BassDiffusion(0,-2) BassDiffusion(0,-1) BassDiffusion(0,0) BassDiffusion(0,1) BassDiffusion(0,2)
neighbors : BassDiffusion(1,-2) BassDiffusion(1,-1) BassDiffusion(1,0) BassDiffusion(1,1) BassDiffusion(1,2)
neighbors : BassDiffusion(2,-2) BassDiffusion(2,-1) BassDiffusion(2,0) BassDiffusion(2,1) BassDiffusion(2,2)
initialValue : 0
initialCellsValue : init.val
localtransition : BassDiffusion-rule

[BassDiffusion-rule]
rule : 1 100 { (0,0) = 1 } 
%rule : 1 100 { (0,0) = 0 and ( #Macro(p) + ( #Macro(q)*statecount()/#Macro(k)) ) > 0.06780 }
rule : 1 100 { (0,0) = 0 and ( 0.00255 + ( 0.13052*statecount(1)/24) ) > 0.051 }
%rule : 1 100 { (0,0) = 0 and statecount (1) > 3}
rule : 0 100 { t } 