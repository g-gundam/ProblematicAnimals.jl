### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 373d3472-c245-11ef-0372-e53b349031fc
begin
	push!(LOAD_PATH, "../Project.toml")
	using ProblematicAnimals
end

# ╔═╡ a5a9af5d-32ed-4949-9507-433696fdf424
cat = Cat()

# ╔═╡ 9790e1a4-a175-42a8-8995-a21c67bd5fe4
dog = Dog()

# ╔═╡ 0e31d61e-ee84-4b25-b773-29a5843ef95d
why(cat)

# ╔═╡ 0f50fe8b-df23-4039-bf4f-6ef2c33ce7db
why(dog)

# ╔═╡ 0dff2581-4cad-40f7-a971-93f054096574
# This broke `sound(cat)` and `sound(dog)` in the notebook.
struct Pig <: AbstractAnimal end

# ╔═╡ c34d2e9b-26ee-414c-8b3d-f98cbf1a1af6
sound(pig::Pig) = "oink"

# ╔═╡ 6d91c197-a74c-4ac1-a1cf-40da4a6ef171
# This worked until I defined the Pig struct.
sound(cat)

# ╔═╡ 625f0407-d011-47df-b54b-2016746878c7
# This worked until I defined the Pig struct.
sound(dog)

# ╔═╡ bb3524fe-4551-4675-b5e5-4e21741ef069
pig = Pig()

# ╔═╡ aa9fb99f-193b-4ad1-a86d-2a2311094b9e
sound(pig)

# ╔═╡ a619e257-6df5-4481-9a5f-269eb390ef25
# The Pig struct is invisible to why(a::AbstractAnimal).
# Why?
why(pig)

# ╔═╡ a7e0d44c-7b1e-48c1-a39f-ef5453ee3d8c


# ╔═╡ Cell order:
# ╠═373d3472-c245-11ef-0372-e53b349031fc
# ╠═a5a9af5d-32ed-4949-9507-433696fdf424
# ╠═9790e1a4-a175-42a8-8995-a21c67bd5fe4
# ╠═6d91c197-a74c-4ac1-a1cf-40da4a6ef171
# ╠═625f0407-d011-47df-b54b-2016746878c7
# ╠═0e31d61e-ee84-4b25-b773-29a5843ef95d
# ╠═0f50fe8b-df23-4039-bf4f-6ef2c33ce7db
# ╠═0dff2581-4cad-40f7-a971-93f054096574
# ╠═c34d2e9b-26ee-414c-8b3d-f98cbf1a1af6
# ╠═bb3524fe-4551-4675-b5e5-4e21741ef069
# ╠═aa9fb99f-193b-4ad1-a86d-2a2311094b9e
# ╠═a619e257-6df5-4481-9a5f-269eb390ef25
# ╠═a7e0d44c-7b1e-48c1-a39f-ef5453ee3d8c
