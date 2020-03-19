using Mocking
Mocking.activate()

using Test

tests = ["test_taylorwin.jl"]

println("Running tests:")
for test in tests
    println("Testing ",test)
    include(test)
end
