using GoogleLanguageService
using Test

@testset "GoogleLanguageService.jl" begin
    analyze_entities_result = analyze_entities("The rain in Spain stays mainly in the plain.")
    @test typeof(analyze_entities_result) == AnalyzeEntitiesResponse
    @test [x.name for x in analyze_entities_result.entities] == ["rain", "plain", "Spain"]
end
