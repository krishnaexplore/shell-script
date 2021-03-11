#!/bin/bash

t="/epdata112/rdk2/dap/20200405_110047/20200405_110048/dap/</LookupDir><EpiFile></EpiFile><EpfFile></EpfFile><JumpFile></JumpFile><FullTextBaseLocation>/epdata112/rdk2/dap/20200405_110047/20200405_110048/dap</FullTextBaseLocation><EplDir></EplDir><EpgDir>/epdata112/rdk2/dap/20200405_110047/20200405_110048/dap/</EpgDir><ImageServerURL>http"
searchstring="</LookupDir>"
rest=${t#*$searchstring}
echo $(( ${#t} - ${#rest} - ${#searchstring} ))