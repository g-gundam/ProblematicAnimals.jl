# ProblematicAnimals

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://g-gundam.github.io/ProblematicAnimals.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://g-gundam.github.io/ProblematicAnimals.jl/dev/)
[![Build Status](https://github.com/g-gundam/ProblematicAnimals.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/g-gundam/ProblematicAnimals.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/g-gundam/ProblematicAnimals.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/g-gundam/ProblematicAnimals.jl)

This project exists solely to debug and hopefully solve a problem I'm having with Pluto.jl notebooks.

## Start with very simple code

```julia
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
```

## It should work like this.

```julia-repl
julia> cat = Cat()
Cat()

julia> sound(cat)
"meow"

julia> why(cat)
"meow"
```

## However, I can't get a subtype defined in a notebook to work.

```julia
struct Pig <: AbstractAnimal end

sound(pig::Pig) = "oink"

pig = Pig()

sound(pig) # "oink"

why(pig) # The `sound(pig::Pig)` function is invisible to the why(a) function.
```

## How can I get `why(pig)` to work?
