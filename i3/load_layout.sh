#!/bin/bash

i3-msg "workspace 1; append_layout ~/.config/i3/workspace_brave_corebird.json"
i3-msg "workspace 9; append_layout ~/.config/i3/workspace_discord.json"
i3-msg "workspace 10; append_layout ~/.config/i3/workspace_geary.json"
i3-msg "workspace 2; append_layout ~/.config/i3/workspace_empty.json"

# And finally we fill the containers with the programs they had
(brave &)
(corebird &)
(discord-canary &)
(geary &)
