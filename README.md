# POHRF Flutter app (web + Android + iOS)

1. Install Flutter (https://docs.flutter.dev/get-started/install)
2. In this folder run:  `flutter create . --platforms=web,android,ios`
   (adds platform folders; keeps lib/, assets/ and pubspec.yaml)
3. `flutter pub get`
4. Test:  `flutter run -d chrome`
5. Build website:  `flutter build web --release`  -> upload the `build/web` folder to Netlify / Firebase Hosting / your server
6. Build Android:  `flutter build apk --release`

Edit contact details in lib/main.dart (search for `kEmail`, `kPhone`, `kAddress`).
