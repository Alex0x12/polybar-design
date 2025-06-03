# Script: usdtbalance

Provides USDT balance information.

![alt text](./usdtbalance.png "usdtbalance.png")

## Module

```ini
[module/usdt]
type=custom/script
tail=true
interval=60
exec="/path/to/script/usdtbalance.sh {Wallet} {Blockchain}"
```

