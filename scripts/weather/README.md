# Script: weather

Provides current weather information from openweathermap.

![alt text](./weather.png "weather.png")
## Dependencies
	curl jq
	openweathermap api-key   

## Module

```ini
[module/weather]
type=custom/script
tail=true
interval=600
exec="/path/to/script/weather.sh {LATITUDE} {LONGITUDE}"
```

