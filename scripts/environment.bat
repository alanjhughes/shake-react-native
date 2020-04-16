powershell -Command "(gc package.json) -replace 'MODULE_NAME', "$env:MODULE_NAME" | Out-File -encoding ASCII package.json"
powershell -Command "(gc android/build.gradle) -replace 'ANDROID_DEPENDENCY', "$env:ANDROID_DEPENDENCY" | Out-File -encoding ASCII android/build.gradle"
powershell -Command "(gc react-native-shake.podspec) -replace 'IOS_DEPENDENCY', "$env:IOS_DEPENDENCY" | Out-File -encoding ASCII react-native-shake.podspec"
npm i --package-lock-only