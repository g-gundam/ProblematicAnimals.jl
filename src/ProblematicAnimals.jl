module ProblematicAnimals

abstract type AbstractAnimal end
struct Cat <: AbstractAnimal end
struct Dog <: AbstractAnimal end

sound(cat::Cat) = "meow"
sound(dog::Dog) = "bark"

# Structs defined in a notebook seem to become invisible while in this function.
function why(a::AbstractAnimal)
    sound(a)
end

export AbstractAnimal
export Cat
export Dog
export sound
export why

end
