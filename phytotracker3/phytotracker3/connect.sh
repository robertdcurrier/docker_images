#!/bin/bash
docker exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" -ti phytotracker3_dev_tools_1 /bin/bash