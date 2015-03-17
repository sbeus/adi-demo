#!/bin/bash

#-----------------------------------------------------------------------------------

start=20030101
  end=20131231


echo "Running ADI ..."

#-----------------------------------------------------------------------------------
# Run ADI data consolidator.
#
# /apps/process/bin/data_consolidator \
#     -n <...> The name of the process as defined in PCM
#     -s <...> 3-character site code
#     -f <...> 2-character facility code
#     -b <...> Start date
#     -e <...> End date
#     -D <...> Debug level (e.g., 2)
#     –R       "Reprocessing" mode allows multiple runs of same or overlapping date ranges

/apps/process/bin/data_consolidator \
    -n stmmettest2 \
    -s nsa \
    -f C1 \
    -b $start \
    -e $end \
    -R


echo "Creating plots ..."

#-----------------------------------------------------------------------------------
# Generate plots.
#
# /apps/tool/bin/dq_inspector_dmf \
#     -d <...> Datastream
#     -s <...> Start date
#     -e <...> End date
#     -p <...> Image DPI (100 is default)
#     -r <...> Read directory
#     -w <...> Write directory
#     -v <...> Variables (or "all")

/apps/tool/bin/dq_inspector_dmf_py3 \
    -d nsamettempavgC1.c1 \
    -s $start \
    -e $end \
    -p 100 \
    -r $DATASTREAM_DATA_OUT \
    -w $QUICKLOOK_DATA \
    -v all


echo "http://dev.arm.gov/~$USER/adi-demo/demo2"
