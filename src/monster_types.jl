import StructTypes

mutable struct Speed
    swim::Union{Nothing, Int64}
    burrow::Union{Nothing, Int64}
    walk::Int64
    hover::Union{Nothing, Bool}
    fly::Union{Nothing, Int64}
    climb::Union{Nothing, Int64}
    Speed() = new()
end

mutable struct Skill
    athletics::Union{Nothing, Int64}
    perception::Union{Nothing, Int64}
    stealth::Union{Nothing, Int64}
    intimidation::Union{Nothing, Int64}
    history::Union{Nothing, Int64}
    deception::Union{Nothing, Int64}
    performance::Union{Nothing, Int64}
    persuasion::Union{Nothing, Int64}
    medicine::Union{Nothing, Int64}
    religion::Union{Nothing, Int64}
    insight::Union{Nothing, Int64}
    arcana::Union{Nothing, Int64}
    nature::Union{Nothing, Int64}
    Skill() = new()
end

mutable struct Action
    name::String
    desc::String
    attack_bonus::Union{Nothing, Int64}
    damage_dice::Union{Nothing, String}
    damage_bonus::Union{Nothing, Int64}
    Action() = new()
end

mutable struct Reaction
    name::String
    desc::String
    Reaction() = new()
end

mutable struct LegendaryAction
    desc::String
    name::String
    LegendaryAction() = new()
end

mutable struct SpecialAbilitie
    name::String
    desc::String
    SpecialAbilitie() = new()
end

mutable struct Monster
    slug::String
    name::String
    size::String
    type::String
    subtype::String
    group::Union{Nothing, String}
    alignment::String
    armor_class::Int64
    armor_desc::Union{Nothing, String}
    hit_points::Int64
    hit_dice::String
    speed::Speed
    strength::Int64
    dexterity::Int64
    constitution::Int64
    intelligence::Int64
    wisdom::Int64
    charisma::Int64
    strength_save::Union{Nothing, Int64}
    dexterity_save::Union{Nothing, Int64}
    constitution_save::Union{Nothing, Int64}
    intelligence_save::Union{Nothing, Int64}
    wisdom_save::Union{Nothing, Int64}
    charisma_save::Union{Nothing, Int64}
    perception::Union{Nothing, Int64}
    skills::Skill
    damage_vulnerabilities::String
    damage_resistances::String
    damage_immunities::String
    condition_immunities::String
    senses::String
    languages::String
    challenge_rating::String
    cr::Float64
    actions::Array{Action, 1}
    reactions::Union{Array{Reaction, 1}, String}
    legendary_desc::String
    legendary_actions::Union{Array{LegendaryAction, 1}, String}
    special_abilities::Array{SpecialAbilitie, 1}
    spell_list::Array{String, 1}
    img_main::Union{Nothing, String}
    document__slug::String
    document__title::String
    document__license_url::String
    Monster() = new()
end

mutable struct MonsterReq
    count::Int64
    next::Union{String, Nothing}
    previous::Union{Nothing, String}
    results::Array{Monster, 1}
    MonsterReq() = new()
end

StructTypes.StructType(::Type{Speed}) = StructTypes.Mutable()
StructTypes.StructType(::Type{Skill}) = StructTypes.Mutable()
StructTypes.StructType(::Type{Action}) = StructTypes.Mutable()
StructTypes.StructType(::Type{Reaction}) = StructTypes.Mutable()
StructTypes.StructType(::Type{LegendaryAction}) = StructTypes.Mutable()
StructTypes.StructType(::Type{SpecialAbilitie}) = StructTypes.Mutable()
StructTypes.StructType(::Type{Monster}) = StructTypes.Mutable()
StructTypes.StructType(::Type{MonsterReq}) = StructTypes.Mutable()

