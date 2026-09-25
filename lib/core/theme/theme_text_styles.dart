import 'package:flutter/material.dart';

/// MediLink Clinical Design System — typography scale.
///
/// Font is IBM Plex Sans (Latin) / IBM Plex Sans Arabic (Arabic), per
/// DESIGN.md. Styles here intentionally leave `fontFamily` unset — the
/// active family is applied once, app-wide, via `ThemeData.fontFamily`
/// in `light_theme.dart` / `dark_theme.dart`, chosen from the current
/// [Locale] with [fontFamilyFor]. That keeps every style correct for
/// whichever language is active without duplicating the scale per font.
///
/// Font files aren't bundled yet — add them under `assets/fonts/` and
/// declare both families in `pubspec.yaml` before shipping; until then
/// Flutter falls back to the platform default, which is harmless during
/// core-layer development.
class ThemeTextStyles {
  ThemeTextStyles._();

  static const String fontFamily = 'IBM Plex Sans';
  static const String fontFamilyArabic = 'IBM Plex Sans Arabic';

  static String fontFamilyFor(Locale locale) =>
      locale.languageCode == 'ar' ? fontFamilyArabic : fontFamily;

  // ── Display ──────────────────────────────────────────
  /// 48 / 700 / lh 56 (56/48 = 1.1667)
  static const TextStyle displayLarge = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.1667,
  );

  /// 32 / 700 / lh 40 — compact display for mobile widths.
  static const TextStyle displayLargeMobile = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  // ── Headline ─────────────────────────────────────────
  /// 32 / 600 / lh 40
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  /// 26 / 600 / lh 34 (34/26 = 1.3077) — compact headline for mobile.
  static const TextStyle headlineLargeMobile = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    height: 1.3077,
  );

  /// 24 / 600 / lh 32
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3333,
  );

  /// 20 / 600 / lh 28
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  // ── Title ────────────────────────────────────────────
  /// 18 / 600 / lh 26
  static const TextStyle titleLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.4444,
  );

  /// 16 / 600 / lh 24
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  /// 14 / 600 / lh 20
  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4286,
  );

  // ── Body ─────────────────────────────────────────────
  /// 16 / 400 / lh 26 — Arabic needs generous line-height (>=1.5x) to
  /// clear diacritics and ascenders/descenders; this scale already
  /// satisfies that for every body size below.
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.625,
  );

  /// 14 / 400 / lh 22
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5714,
  );

  /// 12 / 400 / lh 18
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // ── Label ────────────────────────────────────────────
  /// 14 / 500 / lh 20
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4286,
  );

  /// 12 / 500 / lh 16
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3333,
  );

  /// 11 / 500 / lh 14
  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.2727,
  );

  /// Applies tabular (fixed-width) figures, required by the design doc
  /// for vitals, dosages and any numeric value shown in a table or chart
  /// so digits stay vertically aligned.
  static TextStyle tabularFigures(TextStyle style) {
    return style.copyWith(
      fontFeatures: const [FontFeature.tabularFigures()],
    );
  }
}
