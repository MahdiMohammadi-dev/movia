/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Eye.jpg
  AssetGenImage get eye => const AssetGenImage('assets/images/Eye.jpg');

  /// File path: assets/images/Google.jpg
  AssetGenImage get google => const AssetGenImage('assets/images/Google.jpg');

  /// File path: assets/images/Lock.jpg
  AssetGenImage get lock => const AssetGenImage('assets/images/Lock.jpg');

  /// File path: assets/images/Simcard.svg
  String get simcard => 'assets/images/Simcard.svg';

  /// File path: assets/images/User.jpg
  AssetGenImage get userJpg => const AssetGenImage('assets/images/User.jpg');

  /// File path: assets/images/User.svg
  String get userSvg => 'assets/images/User.svg';

  /// File path: assets/images/congratulations.jpg
  AssetGenImage get congratulations =>
      const AssetGenImage('assets/images/congratulations.jpg');

  /// File path: assets/images/email.svg
  String get email => 'assets/images/email.svg';

  /// File path: assets/images/emailpng.png
  AssetGenImage get emailpng =>
      const AssetGenImage('assets/images/emailpng.png');

  /// File path: assets/images/logo.jpg
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.jpg');

  /// File path: assets/images/onboard1.jpg
  AssetGenImage get onboard1 =>
      const AssetGenImage('assets/images/onboard1.jpg');

  /// File path: assets/images/onboard2.png
  AssetGenImage get onboard2 =>
      const AssetGenImage('assets/images/onboard2.png');

  /// File path: assets/images/password.svg
  String get password => 'assets/images/password.svg';

  /// File path: assets/images/passwordchangedlock.jpg
  AssetGenImage get passwordchangedlock =>
      const AssetGenImage('assets/images/passwordchangedlock.jpg');

  /// File path: assets/images/passwordpng.png
  AssetGenImage get passwordpng =>
      const AssetGenImage('assets/images/passwordpng.png');

  /// File path: assets/images/titlelogo.jpg
  AssetGenImage get titlelogo =>
      const AssetGenImage('assets/images/titlelogo.jpg');

  /// File path: assets/images/userpng.png
  AssetGenImage get userpng => const AssetGenImage('assets/images/userpng.png');

  /// List of all assets
  List<dynamic> get values => [
        eye,
        google,
        lock,
        simcard,
        userJpg,
        userSvg,
        congratulations,
        email,
        emailpng,
        logo,
        onboard1,
        onboard2,
        password,
        passwordchangedlock,
        passwordpng,
        titlelogo,
        userpng
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
