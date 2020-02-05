# OBTun2Socks

This project is a stab at packaging BadVPN's [tun2socks](https://github.com/ambrop72/badvpn/) 
into a CocoaPod.

`tun2socks` forwards TCP and UDP traffic to a SOCKS server - esp. Tor.

This is based off the work of [Potatso](https://github.com/haxpor/Potatso) and
Jigsaw's [Outline Client](https://github.com/Jigsaw-Code/outline-client/tree/master/third_party/Potatso).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
However, it is empty and just a target to test successful build.

## Installation

OBTun2Socks is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'OBTun2Socks'
```

## License

OBTun2Socks is available under the GPL-3 license. 
It also contains code, which is available under the BSD-3 license. 
See the LICENSE file for more info.
