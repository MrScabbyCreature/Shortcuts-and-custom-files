#### This file explains problems and solutions when installing unity on ubuntu>=18 (with gnome default).

1. Touchpad not working

    * Reason:  
      "libinput Tapping Enabled" is set to 0

    * Solution:  
      open terminal and run:
      ```
      xinput list # find id of touchpad  
      xinput list-props <id> # now find of of prop "libinput Tapping Enabled"  
      xinput set-prop <id> <prop-id> 1
      ```
      
2. Scroll is inverted

    * Reason:  
      "Natural Scrolling Enabled" is set to 0

    * Solution:  
      open terminal and run:
      ```
      xinput list # find id of touchpad  
      xinput list-props <id> # now find of of prop "Natural Scrolling Enabled"  
      xinput set-prop <id> <prop-id> 1
      ```

3. Workspace keys for up and down not working 

    * Reason:  
      The shortcut keys are different  

    * Solution:  
        1. Install dconf-editor  
           ```
           sudo apt install dconf-editor
           ```
