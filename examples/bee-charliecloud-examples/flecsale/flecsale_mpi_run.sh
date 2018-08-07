#! /bin/bash
export OMPI_MCA_btl_vader_single_copy_mechanism=none
export OMPI_MCA_btl=^openib
unset OMPI_MCA_btl_tcp_if_exclude; unset OMPI_MCA_oob_tcp_if_include
export SLURM_MPI_TYPE="pmi2" 

env|egrep -i mpi 

ch-run -w -v --no-home -b output --cd /mnt/0 /var/tmp/flecsale -- /home/flecsi/flecsale/build/apps/hydro/2d/hydro_2d -m  /home/flecsi/flecsale/specializations/data/meshes/2d/square/square_32x32.g
