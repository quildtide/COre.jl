module COre

include("corelist.jl")

eval(:(export $(first.(COrelist)...)))

for i in COrelist
    eval(:(const $(i.first) = $(i.second)))
end

end # module
