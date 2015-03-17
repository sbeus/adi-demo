#!/bin/bash

#-----------------------------------------------------------------------------------

start=20040101
  end=20050101


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
    -n stmmettest3 \
    -s sgp \
    -f C1 \
    -b $start \
    -e $end \
    -R


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
    -d sgpmettempavgclosestC1.c1 \
    -s $start \
    -e $end \
    -p 100 \
    -r $DATASTREAM_DATA_OUT \
    -w $QUICKLOOK_DATA \
    -v all