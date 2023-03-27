module Open5e

using HTTP
using JSON3
using StructTypes

#exports
export 

##monsters
MonsterReq,
Monster,
SpecialAbilitie,
LegendaryAction,
Reaction,
Action,
Skill,
Speed


#includes
include("monster_types.jl")


end
