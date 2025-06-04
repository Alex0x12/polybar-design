# Script: kbdlayout

Provides current keyboard layout and Caps Lock status.

![alt text](./kbdlayout1.png "kbdlayout1.png")
 
![alt text](./kbdlayout2.png "kbdlayout2.png")
## Dependencies
	xset, grep, awk

## Module

```ini
[module/weather]
type=custom/script
tail=true
interval=0.1
exec="/path/to/script/kbdlayout.sh"
```

