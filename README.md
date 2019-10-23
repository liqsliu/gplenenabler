# dnscrypt-proxy2 for Android [Revival] [Original magisk module of bluemeda - Revived](https://github.com/Magisk-Modules-Repo/dnscrypt-proxy/) 

A flexible DNS proxy, with support for modern encrypted DNS protocols such as [DNSCrypt v2](https://github.com/DNSCrypt/dnscrypt-protocol/blob/master/DNSCRYPT-V2-PROTOCOL.txt) and [DNS-over-HTTP/2](https://tools.ietf.org/html/draft-ietf-doh-dns-over-https-03).

## Features
- arm, arm64, x86 and x86_64 are supported.
- ipv4 and ipv6 are supported.
- All binary files are downloaded from [https://github.com/jedisct1/dnscrypt-proxy/releases](https://github.com/jedisct1/dnscrypt-proxy/releases)

## Installation
- Download [.zip module](https://github.com/lindroidux/dnscrypt-proxy2-android/releases), flash it in Magisk Manager App or in Recovery and set the DNS server as follows. 

### Set DNS server manually with 3rd-party app (not included in this module)
- DNS server address is 127.0.0.1:5354 for ipv4 and [::1]:5354 for ipv6
- If you use AfWall, you can write this custom packet  redirection script where IP address 9.9.9.9 (can be 1.1.1.1 or 8.8.8.8 or any IP address of a reliable DNS server) should be same as the IP address of fallback_resolver & netprobe_address in configuration file dnscrypt-proxy.toml located at /data/media/0/dnscrypt-proxy. 
  ```
  iptables -t nat -A OUTPUT -p tcp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
  iptables -t nat -A OUTPUT -p udp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
  ip6tables -t nat -A OUTPUT -p tcp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination [::1]:5354
  ip6tables -t nat -A OUTPUT -p udp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination [::1]:5354
  ```
  and this shutdown script
  ```
  iptables -t nat -D OUTPUT -p tcp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
  iptables -t nat -D OUTPUT -p udp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
  ip6tables -t nat -D OUTPUT -p tcp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination [::1]:5354
  ip6tables -t nat -D OUTPUT -p udp ! -d 9.9.9.9 --dport 53 -j DNAT --to-destination [::1]:5354
  ```
DNS66 or dnsfilter app may be used instead of custom script in  AFWall. 

## Configuration (post-installing)
- Configuration located at `/sdcard/dnscrypt-proxy/dnscrypt-proxy.toml` [or /data/media/0/dnscrypt-proxy/dnscrypt-proxy.toml]
- For more detailed configuration please refer to [upstream documentation](https://github.com/jedisct1/dnscrypt-proxy/wiki/Configuration)

## Testing
- [http://www.dnssec-or-not.com/]  online test by VeriSign (no JavaScript required)
- [http://en.conn.internet.nl/connection/] online test by Dutch Internet Standards Platform
- [http://www.dnssec-failed.org/] webpage with bogus signature by Comcast (will not open at all if you are using DNSSEC)



## Changelog
- [Full changelog](changelog.md)
## Credits
- DNSCrypt-Proxy2 upstream | [jedisct1](https://github.com/jedisct1/dnscrypt-proxy)
- [bluemeda & all other contributors for the magisk module](https://github.com/Magisk-Modules-Repo/dnscrypt-proxy/graphs/contributors)
