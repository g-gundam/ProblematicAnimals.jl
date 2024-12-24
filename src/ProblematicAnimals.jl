module ProblematicAnimals

abstract type AbstractAnimal end
struct Cat <: AbstractAnimal end
struct Dog <: AbstractAnimal end

sound(cat::Cat) = "meow"
sound(dog::Dog) = "bark"

export AbstractAnimal
export Cat
export Dog
export sound

end
