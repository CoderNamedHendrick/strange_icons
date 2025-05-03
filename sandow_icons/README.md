<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

[![pub package](https://img.shields.io/pub/v/sandow_icons.svg?color=success&style=flat-square)](https://pub.dartlang.org/packages/sandow_icons)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-success.svg?style=flat-square)](https://github.com/CoderNamedHendrick/sandow_icons/pulls)

# Sandow

Sandow icons is from strange icons sandow icon pack with close to 500 regular icons in solid and
monotone styles.

Made from [StrangeIcons](https://www.strangeicons.com/).

## 🏅 Installation

Update dependencies of your pubspec.yaml, add the following line

```yaml
sandow_icons: 
```

or `flutter pub add sandow_icons` from your terminal

## 🏗️ Usage

```dart
import 'package:sandow_icons/sandow_icons.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(SandowSolidIcons.arrowRightSquare),
          const SizedBox(height: 10),
          Text('Solid Arrow right square')
        ],
      ),
    );
  }
}
```

## Example

View the flutter app in the `example` directory

## Screenshot

<img src="ss/img.png" alt="example screenshot">

## 🐛 Bugs/Requests

If you encounter any problems feel free to open an issue. If you feel the library is
missing a feature, please raise a ticket on GitHub and I'll look into it.
Pull request are also welcome.

## ✅ Next steps

[ ] cover as many monotone icons as we have solid icons

> [!NOTE]
> There are some issues converting many monotone icons to font due to their usage of strokes instead
> of fills

## 🤓 Developer(s)

[<img src="https://github.com/CoderNamedHendrick.png" width="180" />](https://github.com/CoderNamedHendrick)

#### **Sebastine Odeh**

<p>
<a href="https://x.com/H3ndrick_"><img src="https://github.com/aritraroy/social-icons/blob/master/twitter-icon.png?raw=true" width="60" alt="x handle"></a>
<a href="https://www.linkedin.com/in/sebastine-odeh-1081a318b/"><img src="https://github.com/aritraroy/social-icons/blob/master/linkedin-icon.png?raw=true" width="60" alt="linkedIn handle"></a>
<a href="https://medium.com/@sebastinesoacatp"><img src="https://github.com/aritraroy/social-icons/blob/master/medium-icon.png?raw=true" width="60" alt="medium handle"></a>
</p>