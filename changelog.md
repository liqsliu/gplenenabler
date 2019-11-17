# Changelog
## Changelog
### v2.9.1
- Revival of dnscrypt-proxy2  magisk-module of bluemeda 
- updated binary & configuration files to upstream version 2.0.31
- redirection script included for manual copy to bootup auto-start directory. 
- updated README.MD
### v2.9.0
- Revival of dnscrypt-proxy2  magisk-module of bluemeda 
- updated binary & configuration files to upstream version 2.0.29
### v2.8.9
- Revival of dnscrypt-proxy2  magisk-module of bluemeda 
- updated binary & configuration files to upstream version 2.0.28
### v2.8.7
- changed path of configuration file [dnscrypt-toml] from /system/etc/ to /data/media/0/ [or /sdcard]
- updated binary & configuration files to 2.0.25
- Removed automatic redirection of dns-request and let dnscrypt-proxy do its job only.
### v2.8.5
- Fix #40
### v2.8.4
- Fix failed to copy or backup config file
### v2.8.3
- Fix permission issue
- Add option to replace or backup-restore config file
### v2.8.2
- Fix "binary file is missing"
### v2.8.1
- Update Magisk 18100 requirements
### v2.8.0
- Update binary files 2.0.22
### v2.7.0
- Update binary files 2.0.21
### v2.6.0
- Update binary files to 2.0.19
### v2.5.0
- Update binary files to 2.0.16
- add exception for cloudflare fallback resolver.
## v2.4.0
* Update binary files to 2.0.14
## v2.3.0
* Update binary files to 2.0.10 
* Add option to choose auto redirect DNS or manually set with 3rd-party app.
## v2.2.0
* Update binary files to 2.0.8
## v2.1.3
* __If you have previous version, please uninstall it first then reinstall it again or you can change listen port manually in `dnscrypt-proxy.toml` file.__
* Fix Tethering Client cannot Resolve DNSCrypt
* Fix Chromecast devices not showing [jedisct1/dnscrypt-proxy#226](https://github.com/jedisct1/dnscrypt-proxy/issues/226)
* Add binary files for x86 and x86_64 (test)
## v2.1.2
* Bug Fixes
## v2.1.1
* Bug fixes
## v2.1
* Bug fixes
## v2.0
* Resolve download.dnscrypt.info first before executing `iptables`
* Don't override dnscrypt-proxy.toml if exist
* Update binary files to v2.0.6
## v1.1
* Change listen port to 5353 (avoid conflict while tethering)
## v1.0
* Initial release
* dnscrypt-proxy v2.0.5

