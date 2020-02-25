# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
# import ._ProtoBuf_Top_.google

struct __enum_EncodingType <: ProtoEnum
    NONE::Int32
    UTF8::Int32
    UTF16::Int32
    UTF32::Int32
    __enum_EncodingType() = new(0,1,2,3)
end #struct __enum_EncodingType
const EncodingType = __enum_EncodingType()

struct __enum_Document_Type <: ProtoEnum
    TYPE_UNSPECIFIED::Int32
    PLAIN_TEXT::Int32
    HTML::Int32
    __enum_Document_Type() = new(0,1,2)
end #struct __enum_Document_Type
const Document_Type = __enum_Document_Type()

mutable struct Document <: ProtoType
    _type::Int32
    content::AbstractString
    gcs_content_uri::AbstractString
    language::AbstractString
    Document(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Document
const __oneofs_Document = Int[0,1,1,0]
const __oneof_names_Document = [Symbol("source")]
meta(t::Type{Document}) = meta(t, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, __oneofs_Document, __oneof_names_Document, ProtoBuf.DEF_FIELD_TYPES)

mutable struct Sentiment <: ProtoType
    magnitude::Float32
    score::Float32
    Sentiment(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Sentiment
const __fnum_Sentiment = Int[2,3]
meta(t::Type{Sentiment}) = meta(t, ProtoBuf.DEF_REQ, __fnum_Sentiment, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)

struct __enum_PartOfSpeech_Tag <: ProtoEnum
    UNKNOWN::Int32
    ADJ::Int32
    ADP::Int32
    ADV::Int32
    CONJ::Int32
    DET::Int32
    NOUN::Int32
    NUM::Int32
    PRON::Int32
    PRT::Int32
    PUNCT::Int32
    VERB::Int32
    X::Int32
    AFFIX::Int32
    __enum_PartOfSpeech_Tag() = new(0,1,2,3,4,5,6,7,8,9,10,11,12,13)
end #struct __enum_PartOfSpeech_Tag
const PartOfSpeech_Tag = __enum_PartOfSpeech_Tag()

struct __enum_PartOfSpeech_Aspect <: ProtoEnum
    ASPECT_UNKNOWN::Int32
    PERFECTIVE::Int32
    IMPERFECTIVE::Int32
    PROGRESSIVE::Int32
    __enum_PartOfSpeech_Aspect() = new(0,1,2,3)
end #struct __enum_PartOfSpeech_Aspect
const PartOfSpeech_Aspect = __enum_PartOfSpeech_Aspect()

struct __enum_PartOfSpeech_Case <: ProtoEnum
    CASE_UNKNOWN::Int32
    ACCUSATIVE::Int32
    ADVERBIAL::Int32
    COMPLEMENTIVE::Int32
    DATIVE::Int32
    GENITIVE::Int32
    INSTRUMENTAL::Int32
    LOCATIVE::Int32
    NOMINATIVE::Int32
    OBLIQUE::Int32
    PARTITIVE::Int32
    PREPOSITIONAL::Int32
    REFLEXIVE_CASE::Int32
    RELATIVE_CASE::Int32
    VOCATIVE::Int32
    __enum_PartOfSpeech_Case() = new(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
end #struct __enum_PartOfSpeech_Case
const PartOfSpeech_Case = __enum_PartOfSpeech_Case()

struct __enum_PartOfSpeech_Form <: ProtoEnum
    FORM_UNKNOWN::Int32
    ADNOMIAL::Int32
    AUXILIARY::Int32
    COMPLEMENTIZER::Int32
    FINAL_ENDING::Int32
    GERUND::Int32
    REALIS::Int32
    IRREALIS::Int32
    SHORT::Int32
    LONG::Int32
    ORDER::Int32
    SPECIFIC::Int32
    __enum_PartOfSpeech_Form() = new(0,1,2,3,4,5,6,7,8,9,10,11)
end #struct __enum_PartOfSpeech_Form
const PartOfSpeech_Form = __enum_PartOfSpeech_Form()

struct __enum_PartOfSpeech_Gender <: ProtoEnum
    GENDER_UNKNOWN::Int32
    FEMININE::Int32
    MASCULINE::Int32
    NEUTER::Int32
    __enum_PartOfSpeech_Gender() = new(0,1,2,3)
end #struct __enum_PartOfSpeech_Gender
const PartOfSpeech_Gender = __enum_PartOfSpeech_Gender()

struct __enum_PartOfSpeech_Mood <: ProtoEnum
    MOOD_UNKNOWN::Int32
    CONDITIONAL_MOOD::Int32
    IMPERATIVE::Int32
    INDICATIVE::Int32
    INTERROGATIVE::Int32
    JUSSIVE::Int32
    SUBJUNCTIVE::Int32
    __enum_PartOfSpeech_Mood() = new(0,1,2,3,4,5,6)
end #struct __enum_PartOfSpeech_Mood
const PartOfSpeech_Mood = __enum_PartOfSpeech_Mood()

struct __enum_PartOfSpeech_Number <: ProtoEnum
    NUMBER_UNKNOWN::Int32
    SINGULAR::Int32
    PLURAL::Int32
    DUAL::Int32
    __enum_PartOfSpeech_Number() = new(0,1,2,3)
end #struct __enum_PartOfSpeech_Number
const PartOfSpeech_Number = __enum_PartOfSpeech_Number()

struct __enum_PartOfSpeech_Person <: ProtoEnum
    PERSON_UNKNOWN::Int32
    FIRST::Int32
    SECOND::Int32
    THIRD::Int32
    REFLEXIVE_PERSON::Int32
    __enum_PartOfSpeech_Person() = new(0,1,2,3,4)
end #struct __enum_PartOfSpeech_Person
const PartOfSpeech_Person = __enum_PartOfSpeech_Person()

struct __enum_PartOfSpeech_Proper <: ProtoEnum
    PROPER_UNKNOWN::Int32
    PROPER::Int32
    NOT_PROPER::Int32
    __enum_PartOfSpeech_Proper() = new(0,1,2)
end #struct __enum_PartOfSpeech_Proper
const PartOfSpeech_Proper = __enum_PartOfSpeech_Proper()

struct __enum_PartOfSpeech_Reciprocity <: ProtoEnum
    RECIPROCITY_UNKNOWN::Int32
    RECIPROCAL::Int32
    NON_RECIPROCAL::Int32
    __enum_PartOfSpeech_Reciprocity() = new(0,1,2)
end #struct __enum_PartOfSpeech_Reciprocity
const PartOfSpeech_Reciprocity = __enum_PartOfSpeech_Reciprocity()

struct __enum_PartOfSpeech_Tense <: ProtoEnum
    TENSE_UNKNOWN::Int32
    CONDITIONAL_TENSE::Int32
    FUTURE::Int32
    PAST::Int32
    PRESENT::Int32
    IMPERFECT::Int32
    PLUPERFECT::Int32
    __enum_PartOfSpeech_Tense() = new(0,1,2,3,4,5,6)
end #struct __enum_PartOfSpeech_Tense
const PartOfSpeech_Tense = __enum_PartOfSpeech_Tense()

struct __enum_PartOfSpeech_Voice <: ProtoEnum
    VOICE_UNKNOWN::Int32
    ACTIVE::Int32
    CAUSATIVE::Int32
    PASSIVE::Int32
    __enum_PartOfSpeech_Voice() = new(0,1,2,3)
end #struct __enum_PartOfSpeech_Voice
const PartOfSpeech_Voice = __enum_PartOfSpeech_Voice()

mutable struct PartOfSpeech <: ProtoType
    tag::Int32
    aspect::Int32
    case::Int32
    form::Int32
    gender::Int32
    mood::Int32
    number::Int32
    person::Int32
    proper::Int32
    reciprocity::Int32
    tense::Int32
    voice::Int32
    PartOfSpeech(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct PartOfSpeech

struct __enum_DependencyEdge_Label <: ProtoEnum
    UNKNOWN::Int32
    ABBREV::Int32
    ACOMP::Int32
    ADVCL::Int32
    ADVMOD::Int32
    AMOD::Int32
    APPOS::Int32
    ATTR::Int32
    AUX::Int32
    AUXPASS::Int32
    CC::Int32
    CCOMP::Int32
    CONJ::Int32
    CSUBJ::Int32
    CSUBJPASS::Int32
    DEP::Int32
    DET::Int32
    DISCOURSE::Int32
    DOBJ::Int32
    EXPL::Int32
    GOESWITH::Int32
    IOBJ::Int32
    MARK::Int32
    MWE::Int32
    MWV::Int32
    NEG::Int32
    NN::Int32
    NPADVMOD::Int32
    NSUBJ::Int32
    NSUBJPASS::Int32
    NUM::Int32
    NUMBER::Int32
    P::Int32
    PARATAXIS::Int32
    PARTMOD::Int32
    PCOMP::Int32
    POBJ::Int32
    POSS::Int32
    POSTNEG::Int32
    PRECOMP::Int32
    PRECONJ::Int32
    PREDET::Int32
    PREF::Int32
    PREP::Int32
    PRONL::Int32
    PRT::Int32
    PS::Int32
    QUANTMOD::Int32
    RCMOD::Int32
    RCMODREL::Int32
    RDROP::Int32
    REF::Int32
    REMNANT::Int32
    REPARANDUM::Int32
    ROOT::Int32
    SNUM::Int32
    SUFF::Int32
    TMOD::Int32
    TOPIC::Int32
    VMOD::Int32
    VOCATIVE::Int32
    XCOMP::Int32
    SUFFIX::Int32
    TITLE::Int32
    ADVPHMOD::Int32
    AUXCAUS::Int32
    AUXVV::Int32
    DTMOD::Int32
    FOREIGN::Int32
    KW::Int32
    LIST::Int32
    NOMC::Int32
    NOMCSUBJ::Int32
    NOMCSUBJPASS::Int32
    NUMC::Int32
    COP::Int32
    DISLOCATED::Int32
    ASP::Int32
    GMOD::Int32
    GOBJ::Int32
    INFMOD::Int32
    MES::Int32
    NCOMP::Int32
    __enum_DependencyEdge_Label() = new(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82)
end #struct __enum_DependencyEdge_Label
const DependencyEdge_Label = __enum_DependencyEdge_Label()

mutable struct DependencyEdge <: ProtoType
    head_token_index::Int32
    label::Int32
    DependencyEdge(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DependencyEdge

mutable struct TextSpan <: ProtoType
    content::AbstractString
    begin_offset::Int32
    TextSpan(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct TextSpan

mutable struct Token <: ProtoType
    text::TextSpan
    part_of_speech::PartOfSpeech
    dependency_edge::DependencyEdge
    lemma::AbstractString
    Token(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Token

mutable struct Sentence <: ProtoType
    text::TextSpan
    sentiment::Sentiment
    Sentence(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Sentence

struct __enum_EntityMention_Type <: ProtoEnum
    TYPE_UNKNOWN::Int32
    PROPER::Int32
    COMMON::Int32
    __enum_EntityMention_Type() = new(0,1,2)
end #struct __enum_EntityMention_Type
const EntityMention_Type = __enum_EntityMention_Type()

mutable struct EntityMention <: ProtoType
    text::TextSpan
    _type::Int32
    sentiment::Sentiment
    EntityMention(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct EntityMention

struct __enum_Entity_Type <: ProtoEnum
    UNKNOWN::Int32
    PERSON::Int32
    LOCATION::Int32
    ORGANIZATION::Int32
    EVENT::Int32
    WORK_OF_ART::Int32
    CONSUMER_GOOD::Int32
    OTHER::Int32
    PHONE_NUMBER::Int32
    ADDRESS::Int32
    DATE::Int32
    NUMBER::Int32
    PRICE::Int32
    __enum_Entity_Type() = new(0,1,2,3,4,5,6,7,9,10,11,12,13)
end #struct __enum_Entity_Type
const Entity_Type = __enum_Entity_Type()

mutable struct Entity_MetadataEntry <: ProtoType
    key::AbstractString
    value::AbstractString
    Entity_MetadataEntry(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Entity_MetadataEntry (mapentry)

mutable struct Entity <: ProtoType
    name::AbstractString
    _type::Int32
    metadata::Base.Dict{AbstractString,AbstractString} # map entry
    salience::Float32
    mentions::Base.Vector{EntityMention}
    sentiment::Sentiment
    Entity(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Entity

mutable struct ClassificationCategory <: ProtoType
    name::AbstractString
    confidence::Float32
    ClassificationCategory(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ClassificationCategory

mutable struct AnalyzeSentimentRequest <: ProtoType
    document::Document
    encoding_type::Int32
    AnalyzeSentimentRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeSentimentRequest

mutable struct AnalyzeSentimentResponse <: ProtoType
    document_sentiment::Sentiment
    language::AbstractString
    sentences::Base.Vector{Sentence}
    AnalyzeSentimentResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeSentimentResponse

mutable struct AnalyzeEntitySentimentRequest <: ProtoType
    document::Document
    encoding_type::Int32
    AnalyzeEntitySentimentRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeEntitySentimentRequest

mutable struct AnalyzeEntitySentimentResponse <: ProtoType
    entities::Base.Vector{Entity}
    language::AbstractString
    AnalyzeEntitySentimentResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeEntitySentimentResponse

mutable struct AnalyzeEntitiesRequest <: ProtoType
    document::Document
    encoding_type::Int32
    AnalyzeEntitiesRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeEntitiesRequest

mutable struct AnalyzeEntitiesResponse <: ProtoType
    entities::Base.Vector{Entity}
    language::AbstractString
    AnalyzeEntitiesResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeEntitiesResponse

mutable struct AnalyzeSyntaxRequest <: ProtoType
    document::Document
    encoding_type::Int32
    AnalyzeSyntaxRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeSyntaxRequest

mutable struct AnalyzeSyntaxResponse <: ProtoType
    sentences::Base.Vector{Sentence}
    tokens::Base.Vector{Token}
    language::AbstractString
    AnalyzeSyntaxResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnalyzeSyntaxResponse

mutable struct ClassifyTextRequest <: ProtoType
    document::Document
    ClassifyTextRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ClassifyTextRequest

mutable struct ClassifyTextResponse <: ProtoType
    categories::Base.Vector{ClassificationCategory}
    ClassifyTextResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ClassifyTextResponse

mutable struct AnnotateTextRequest_Features <: ProtoType
    extract_syntax::Bool
    extract_entities::Bool
    extract_document_sentiment::Bool
    extract_entity_sentiment::Bool
    classify_text::Bool
    AnnotateTextRequest_Features(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnnotateTextRequest_Features
const __fnum_AnnotateTextRequest_Features = Int[1,2,3,4,6]
meta(t::Type{AnnotateTextRequest_Features}) = meta(t, ProtoBuf.DEF_REQ, __fnum_AnnotateTextRequest_Features, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)

mutable struct AnnotateTextRequest <: ProtoType
    document::Document
    features::AnnotateTextRequest_Features
    encoding_type::Int32
    AnnotateTextRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnnotateTextRequest

mutable struct AnnotateTextResponse <: ProtoType
    sentences::Base.Vector{Sentence}
    tokens::Base.Vector{Token}
    entities::Base.Vector{Entity}
    document_sentiment::Sentiment
    language::AbstractString
    categories::Base.Vector{ClassificationCategory}
    AnnotateTextResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct AnnotateTextResponse

export EncodingType, Document_Type, Document, Sentence, Entity_Type, Entity_MetadataEntry, Entity, Token, Sentiment, PartOfSpeech_Tag, PartOfSpeech_Aspect, PartOfSpeech_Case, PartOfSpeech_Form, PartOfSpeech_Gender, PartOfSpeech_Mood, PartOfSpeech_Number, PartOfSpeech_Person, PartOfSpeech_Proper, PartOfSpeech_Reciprocity, PartOfSpeech_Tense, PartOfSpeech_Voice, PartOfSpeech, DependencyEdge_Label, DependencyEdge, EntityMention_Type, EntityMention, TextSpan, ClassificationCategory, AnalyzeSentimentRequest, AnalyzeSentimentResponse, AnalyzeEntitySentimentRequest, AnalyzeEntitySentimentResponse, AnalyzeEntitiesRequest, AnalyzeEntitiesResponse, AnalyzeSyntaxRequest, AnalyzeSyntaxResponse, ClassifyTextRequest, ClassifyTextResponse, AnnotateTextRequest_Features, AnnotateTextRequest, AnnotateTextResponse
# mapentries: "Entity_MetadataEntry" => ("AbstractString", "AbstractString")
