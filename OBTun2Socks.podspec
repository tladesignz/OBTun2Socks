#
# Be sure to run `pod lib lint OBTun2Socks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OBTun2Socks'
  s.version          = '0.1.0'
  s.summary          = 'tun2socks packaged as a CocoaPod'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This project is a stab at packaging BadVPN's [tun2socks](https://github.com/ambrop72/badvpn/)
into a CocoaPod.

`tun2socks` forwards TCP and UDP traffic to a SOCKS server - esp. Tor.

This is based off the work of [Potatso](https://github.com/haxpor/Potatso) and
Jigsaw's [Outline Client](https://github.com/Jigsaw-Code/outline-client/tree/master/third_party/Potatso).
                       DESC

  s.homepage         = 'https://github.com/tladesignz/OBTun2Socks'
  s.license          = { :type => 'GPL-3', :file => 'LICENSE' }
  s.author           = { 'Benjamin Erhart' => 'berhart@netzarchitekten.com' }
  s.source           = { :git => 'https://github.com/tladesignz/OBTun2Socks.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tladesignz'

  s.ios.deployment_target = '9.3'

  s.source_files = 'OBTun2Socks/Classes/**/*'
  s.public_header_files = 'OBTun2Socks/Classes/TunnelInterface.h'
  s.exclude_files = [
    'OBTun2Socks/Classes/**/*.bproto',
    'OBTun2Socks/Classes/**/netdb.h',
  ]

  s.xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => [
      '"${PODS_TARGET_SRCROOT}/OBTun2Socks/Classes"',
      '"${PODS_TARGET_SRCROOT}/OBTun2Socks/Classes/lwip/custom"',
      '"${PODS_TARGET_SRCROOT}/OBTun2Socks/Classes/lwip/src/include"',
      '"${PODS_TARGET_SRCROOT}/OBTun2Socks/Classes/lwip/src/include/ipv4"',
      '"${PODS_TARGET_SRCROOT}/OBTun2Socks/Classes/lwip/src/include/ipv6"',
    ],
    'GCC_PREPROCESSOR_DEFINITIONS' => [
      'BADVPN_USE_SYSLOG',
      'BADVPN_USE_KEVENT',
      'BADVPN_BREACTOR_BADVPN',
      'BADVPN_FREEBSD',
      'BADVPN_THREADWORK_USE_PTHREAD',
      '"BADVPN_THREAD_SAFE=1"',
      'BADVPN_LIBTSOCKS',
      'BADVPN_LITTLE_ENDIAN',
    ],
    'OTHER_LDFLAGS' => [
      '-lresolv'
    ],
  }

  s.dependency 'CocoaAsyncSocket', '~> 7.6.2'

end
