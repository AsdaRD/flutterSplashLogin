# Splash_and_login_app

A pretty simple implementation of local authorization and remembering user data.

### App screens:

- Splash screen – the first screen that is shown for 3 seconds after default native splash screen.

  <img src="https://github.com/AsdaRD/flutterSplashLogin/blob/master/images/splash_screenshot.png" width="200"/>
  
- Login screen – the second screen that is shown after splash screen if the user hasn't been authorized with 'remember me' checkbox yet.

  <img src="https://github.com/AsdaRD/flutterSplashLogin/blob/master/images/login_screenshot.png" width="200"/>
  
- Congrats screen – the third screen that is shown after successful authorization on login screen or after splash screen if the user has already been authorized with 'remember me' checkbox.

  <img src="https://github.com/AsdaRD/flutterSplashLogin/blob/master/images/splash_screenshot.png" width="200"/>
  

### Packages

The state of checkbox 'remember me' is written and passed to splash screen using [shared_preferences package](https://pub.dev/packages/shared_preferences).
