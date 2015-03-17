#!/bin/bash

#-----------------------------------------------------------------------------------

start=20110101
  end=20120101


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
    -n stmmettest1 \
    -s twp \
    -f C3 \
    -b $start \
    -e $end \
    –R


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

/apps/tool/bin/dq_inspector_dmf \
    -d twpmettempavgC3.c1 \
    -s $start \
    -e $end \
    -p 100 \
    -r $QUICKLOOK_DATA \
    -w $DATASTREAM_DATA_OUT \
    -v all