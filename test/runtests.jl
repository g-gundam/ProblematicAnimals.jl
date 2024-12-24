using ProblematicAnimals
using Test

@testset "ProblematicAnimals.jl" begin
    cat = Cat()
    dog = Dog()
    @test sound(cat) == "meow"
    @test sound(dog) == "bark"
end
