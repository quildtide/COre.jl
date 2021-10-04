using COre
using Test

idents = last.(COre.COrelist)
ommitted = [:<:, :(===), :Core, :Main]

@test isempty(setdiff(names(Core), vcat(idents, ommitted)))