workspace 'TuistDemo.xcworkspace'
platform :ios, '13.0'

use_frameworks!
inhibit_all_warnings!

project 'TuistDemo.xcodeproj'
project 'Features/Chat/Chat.xcodeproj'

target :App do
  project 'TuistDemo.xcodeproj'

  pod 'SnapKit'
end

target :Chat do
  project 'Features/Chat/Chat.xcodeproj'

  pod 'SnapKit'
end
