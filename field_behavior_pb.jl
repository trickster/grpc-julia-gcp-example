# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

struct __enum_FieldBehavior <: ProtoEnum
    FIELD_BEHAVIOR_UNSPECIFIED::Int32
    OPTIONAL::Int32
    REQUIRED::Int32
    OUTPUT_ONLY::Int32
    INPUT_ONLY::Int32
    IMMUTABLE::Int32
    __enum_FieldBehavior() = new(0,1,2,3,4,5)
end #struct __enum_FieldBehavior
const FieldBehavior = __enum_FieldBehavior()

export FieldBehavior
