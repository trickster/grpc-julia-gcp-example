using HTTP

include("language_service_pb.jl")


# construct data
doc = Document()
doc._type = Document_Type.PLAIN_TEXT
doc.language = "en"

ent = AnalyzeEntitiesRequest()
ent.document = doc


iob = IOBuffer()
writeproto(iob, ent)
write_proto_bytes = take!(iob)

headers = Dict(
    "X-Goog-Api-Key" => "API_KEY",
    "User-Agent" => "myapp/0.1",
    "Content-Type" => "application/x-protobuf",
)

 # we get the bytes
data_response_bytes = HTTP.request(
    "POST",
    "https://language.googleapis.com/\$rpc/google.cloud.language.v1.LanguageService/AnalyzeEntities",
    headers,
    write_proto_bytes,
).body
entreponse = AnalyzeEntitiesResponse()



# create into IOBuffer from ByteArray
response_buffer = IOBuffer(data_response_bytes)
readproto(IOBuffer(data_response_bytes), entreponse)

"""
entreponse
AnalyzeEntitiesResponse(Entity[Entity("rain", 7, #undef, 0.6791929f0, EntityMention[EntityMention(TextSpan("rain", -1), 2, #undef)], #undef), Entity("plain", 7, #undef, 0.17278467f0, EntityMention[EntityMention(TextSpan("plain", -1), 2, #undef)], #undef), Entity("Spain", 2, #undef, 0.14802246f0, EntityMention[EntityMention(TextSpan("Spain", -1), 1, #undef)], #undef)], "en")
"""
