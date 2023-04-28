using HTTP
using JSON3
using DataFrames
using Open5e

base_url = "https://api.open5e.com/monsters/"

cr3 = "?challenge_rating=3"

req_str = base_url * cr3

resp = HTTP.get(req_str; require_ssl_verification = false)

js_resp = JSON3.read(resp.body)

# tmp = js_resp

# a = JSON3.generate_type(tmp)
# b = JSON3.generate_exprs(a; root_name = :MonsterReq)
# z = JSON3.generate_struct_type_module(b, :Open5e)

# #to create structs from the given JSON
# JSON3.write_exprs(z, "./src/monster_types.jl")

#everything above will get deleted eventually

#and to coerce result to a vector of Monster structs
mms = JSON3.read(resp.body, MonsterReq)

#next step is to coerce the results type into a df
#look into last comment here: https://discourse.julialang.org/t/mapping-vector-mytype-to-a-dataframe/24797/13
#and into the StructArrays pkg
#although it might be worth trying to implement a solution myself first

#this works, although there are potentiall faster ways
#also need to specify column types I think
function enframe(v::AbstractArray{<:Monster})
    nms = fieldnames(typeof(v[1]))
    n_obs = length(v)
    n_cols = length(nms)


    x = [Vector{Any}(undef, n_obs) for _ in 1:n_cols]

    for i ∈ 1:n_cols
        x[i] = getproperty.(v, nms[i])
    end
    
    r = DataFrame(hcat(x...), collect(nms))
    
    return r
end