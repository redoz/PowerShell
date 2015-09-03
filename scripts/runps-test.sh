#!/bin/bash

CWD=$(pwd)
SCRIPTDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

cd "$SCRIPTDIR"
PSMODULEPATH="$SCRIPTDIR/Modules" LD_LIBRARY_PATH="$SCRIPTDIR" ./host_cmdline -c ../coreclr -alc Microsoft.PowerShell.CoreCLR.AssemblyLoadContext.dll -tpa xunit.console.netcore.exe xunit.console.netcore.exe "$@"
