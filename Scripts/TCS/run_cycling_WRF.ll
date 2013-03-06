#!/bin/bash -l
# @ job_name = test_4x64
# @ wall_clock_limit = 06:00:00
# @ node = 4
# @ tasks_per_node = 64
# @ notification = error
# @ output = $(job_name).$(jobid).out
# @ error = $(job_name).$(jobid).out
# @ environment = $NEXTSTEP; $NOWPS; MEMORY_AFFINITY=MCM; MP_SYNC_QP=YES; \
#                MP_RFIFO_SIZE=16777216; MP_SHM_ATTACH_THRESH=500000; \
#                MP_EUIDEVELOP=min; MP_USE_BULK_XFER=yes; \
#                MP_RDMA_MTU=4K; MP_BULK_MIN_MSG_SIZE=64k; MP_RC_MAX_QP=8192; \
#                PSALLOC=early; NODISCLAIM=true
#=====================================
# @ job_type = parallel
# @ class = verylong
# @ node_usage = not_shared
# Specifies the name of the shell to use for the job
# @ shell = /bin/bash -l
#=====================================
## this is necessary in order to avoid core dumps for batch files
## which can cause the system to be overloaded
# ulimits
# @ core_limit = 0
## necessary to force use of infiniband network for MPI traffic
# @ network.MPI = sn_all,not_shared,US,HIGH
#=====================================
# @ queue


## job settings
# get PBS names (needed for folder names)
export JOBNAME="${LOADL_JOB_NAME}"
export INIDIR="${LOADL_STEP_INITDIR}" # experiment root (launch directory)
# directory setup
export RUNNAME="${NEXTSTEP}" # step name, not job name!
export WORKDIR="${INIDIR}/${RUNNAME}/" # step folder
export WRFOUT="${INIDIR}/wrfout/" # output directory
export SCRIPTDIR="${INIDIR}/scripts/" # location of component scripts (pre/post processing etc.)
export BINDIR="${INIDIR}/bin/" # location of executables (WRF and WPS)
# N.B.: use absolute path for script and bin folders
# important scripts
export WRFSCRIPT="run_cycling_WRF.pbs" # WRF suffix assumed
export WPSSCRIPT="run_cycling_WPS.pbs" # WRF suffix assumed, WPS suffix substituted: ${JOBNAME%_WRF}_WPS
export ARINTERVAL="" # default: every time
export ARSCRIPT="" # archive script to be executed after WRF finishes
# WRF and WPS wallclock  time limits (no way to query from queue system)
export WRFWCT='' # WRF wallclock  time limit; e.g. '06:00:00'
export WPSWCT='' # WPS wallclock  time limit; e.g. '01:00:00'

## WRF settings
# N.B.: these settings serve as fallback options when inferring from namelist fails
export GHG='' # GHG emission scenario
export RAD='' # radiation scheme
export LSM='' # land surface scheme
