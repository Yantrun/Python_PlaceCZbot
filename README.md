# Python PlaceCZ Bot

Spouští se jako `python bot.py -u user pass`
Run with `python bot.py -u user pass`

 config.toml pro více účtů
 config.toml for more accounts
 ```
[[users]]
username = ""
password = ""
```
# Proxy support
Proxy is supported via ENV variables:
- HTTP_PROXY
- HTTPS_PROXY
- WS_PROXY
- WSS_PROXY

Use HTTP proxy for all of them

# Easy installation on Windows
Run *windows_install.bat* to install Python3 and Pipy on Windows with one click.

**windows_run.bat** expects you to use config.toml as configuration file for accounts