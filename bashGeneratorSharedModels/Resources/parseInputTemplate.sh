﻿

# if command line tells us to parse an input file
if [ "${inputFile}" != "" ]; then
    # load parameters from the file
    inputConfig=$(jq . < "${inputFile}")
__FILE_TO_SETTINGS__

    # we need to parse the again to see if there are any overrides to what is in the config file
    parseInput "$@"
fi