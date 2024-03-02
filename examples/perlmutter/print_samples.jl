# source $HOME/.bash_profile
# mpiexecjl --project=./ -n <number_of_tasks> julia examples/perlmutter/train.jl

using Pkg
Pkg.activate("./")

include("data.jl")

dim, start, finish = parse.(Int, ARGS[1:3])

# Use `/global/cfs/projectdirs/m3863/mark/training-data/training-samples/v5` if not copied to scratch
dataset_path = "/pscratch/sd/r/richardr/v5/$(dim)³"
print_filenames(dataset_path, start, finish)
