# Taylor Window Julia Implementation

Taylow Window implementation in Julia

A small project I used to learn Julia. The code is not yet optimised for performance but hopefully it's readable. 

It's a port of this javascript implementation https://github.com/fasiha/taylorwin.js

## What I Learnt

* Julia Syntax
* Development using Visual Studio Code on Linux
* Taylor Windowing Algorythm for Signal Processing


## Getting started

```
julia> include("src/taylorwin.jl")
taylorwin (generic function with 1 method)

julia> n = 10 #number of Taylor coefficients
10

julia> nbar = 5 #number of constant sidelobes
5

julia> sll = -25 #peak sidelobe level
-25

julia> taylorwin(n,nbar,sll)
10-element Array{Float64,1}:
 0.5808633750039796
 0.7224112904521843
 1.0205726892009739
 1.2683173314484133
 1.407835313894449 
 1.407835313894449 
 1.2683173314484133
 1.0205726892009739
 0.7224112904521843
 0.5808633750039796

```

## Running the tests

```
julia --project=@. --compiled-modules=no test/runtests.jl
```



