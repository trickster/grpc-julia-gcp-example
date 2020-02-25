module GoogleLanguageService

using Logging
using HTTP
include("language_service_pb.jl")

export Document, AnalyzeEntitiesRequest, AnalyzeEntitiesResponse, Document_Type, API_KEY, analyze_entities

API_KEY = get(ENV, "API_KEY", nothing)

function analyze_entities(text::String)

    if API_KEY == nothing
        throw("API_KEY not found")
    else
        @info "Using API_KEY from current environment"
    end

    doc = Document(
        _type = Document_Type.PLAIN_TEXT,
        language = "en",
        content = text
    )

    # analyse
    ent = AnalyzeEntitiesRequest(
        document = doc
    )

    # create bytebuffer
    iob = IOBuffer()
    writeproto(iob, ent)
    write_proto_bytes = take!(iob)

    # Make API call
    headers = Dict(
        "X-Goog-Api-Key" => API_KEY,
        "User-Agent" => "myapp/0.1",
        "Content-Type" => "application/x-protobuf",
    )

    @info "Making HTTP request to gRPC endpoint"
    data_response_bytes = HTTP.request(
        "POST",
        "https://language.googleapis.com/\$rpc/google.cloud.language.v1.LanguageService/AnalyzeEntities",
        headers,
        write_proto_bytes,
    ).body # this is byte array

    api_response = AnalyzeEntitiesResponse()
    response_buffer = IOBuffer(data_response_bytes)
    readproto(IOBuffer(data_response_bytes), api_response)

    return api_response
end

end # module
