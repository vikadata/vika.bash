#!/usr/bin/env bash
source "approvals.bash"

approve "../vika"
approve "../vika --help"
approve "../vika login TEST_TOKEN"
# approve "ls -s" "ls_size"
# ... more tests