# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct CustomHttpPattern <: ProtoType
    kind::AbstractString
    path::AbstractString
    CustomHttpPattern(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CustomHttpPattern

mutable struct HttpRule <: ProtoType
    selector::AbstractString
    get::AbstractString
    put::AbstractString
    post::AbstractString
    delete::AbstractString
    patch::AbstractString
    custom::CustomHttpPattern
    body::AbstractString
    response_body::AbstractString
    additional_bindings::Base.Vector{HttpRule}
    HttpRule(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct HttpRule
const __fnum_HttpRule = Int[1,2,3,4,5,6,8,7,12,11]
const __oneofs_HttpRule = Int[0,1,1,1,1,1,1,0,0,0]
const __oneof_names_HttpRule = [Symbol("pattern")]
meta(t::Type{HttpRule}) = meta(t, ProtoBuf.DEF_REQ, __fnum_HttpRule, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, __oneofs_HttpRule, __oneof_names_HttpRule, ProtoBuf.DEF_FIELD_TYPES)

mutable struct Http <: ProtoType
    rules::Base.Vector{HttpRule}
    fully_decode_reserved_expansion::Bool
    Http(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Http

export Http, HttpRule, CustomHttpPattern
