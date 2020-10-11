#### This file explains problems and solutions when installing unity on ubuntu>=18 (with gnome default).

1. Touchpad not working

    * Reason:  
      "libinput Tapping Enabled" is set to 0

    * Solution:  
        1. Temporary  
         open terminal and run:
         ```
         xinput list # find id/name of touchpad  
         xinput list-props <id/name> # now find that of prop "libinput Tapping Enabled"  
         xinput set-prop <id/name> <prop-id/name> 1
         ```
        2. Permanent  
          Create ~/.xsessionrc and put the command in it   
          Example: `xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1`
          
      
2. Scroll is inverted

    * Reason:  
      "Natural Scrolling Enabled" is set to 0

    * Solution:  
        1. Temporary  
         open terminal and run:
         ```
         xinput list # find id/name of touchpad  
         xinput list-props <id/name> # now find that of prop "Natural Scrolling Enabled"  
         xinput set-prop <id/name> <prop-id/name> 1
         ```
        2. Permanent  
          Create ~/.xsessionrc and put the command in it  
          Example: `xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Natural Scrolling Enabled" 1`

3. Workspace keys for up and down not working 

    * Reason:  
      The shortcut keys are different  

    * Solution:  
        1. Install dconf-editor  
           ```
           sudo apt install dconf-editor
           ```
        2. Open dconf-editor from applications and go to /org/gnome/desktop/wm/keybindings/
        3. Set
            * switch-to-workspace-up
            * switch-to-workspace-down
            * move-to-workspace-up
            * move-to-workspace-down
