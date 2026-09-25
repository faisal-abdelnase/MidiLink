import 'package:flutter/material.dart';

/// MediLink Clinical Design System — color tokens.
///
/// [light] mirrors the exact Material 3 tonal palette exported in
/// DESIGN.md (field names map 1:1 onto [ColorScheme]). No dark palette
/// was specified in the design doc, so [darkSeed] is exposed for
/// `ColorScheme.fromSeed(seedColor: ThemeColors.darkSeed, brightness:
/// Brightness.dark)` in `dark_theme.dart` — the same seed (`surface-tint`)
/// the light palette itself was generated from, so both stay in the
/// same brand family.
///
/// [warning] and [critical] are additions the base M3 roles don't cover:
/// the design doc calls for a distinct amber "caution" state and a
/// distinct crimson "emergency/contraindication" accent, separate from
/// the standard form-validation [ColorScheme.error].
class ThemeColors {
  ThemeColors._();

  // ── Seed (used to derive the dark ColorScheme) ───────
  static const Color darkSeed = Color(0xFF006398); // surface-tint

  // ── Light — Material 3 ColorScheme tokens ────────────
  static const Color surface = Color(0xFFFAF8FF);
  static const Color surfaceDim = Color(0xFFD2D9F4);
  static const Color surfaceBright = Color(0xFFFAF8FF);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF2F3FF);
  static const Color surfaceContainer = Color(0xFFEAEDFF);
  static const Color surfaceContainerHigh = Color(0xFFE2E7FF);
  static const Color surfaceContainerHighest = Color(0xFFDAE2FD);
  static const Color onSurface = Color(0xFF131B2E);
  static const Color onSurfaceVariant = Color(0xFF3F4850);
  static const Color inverseSurface = Color(0xFF283044);
  static const Color inverseOnSurface = Color(0xFFEEF0FF);
  static const Color outline = Color(0xFF707881);
  static const Color outlineVariant = Color(0xFFBFC7D2);
  static const Color surfaceTint = Color(0xFF006398);

  static const Color primary = Color(0xFF006194);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFF007BB9);
  static const Color onPrimaryContainer = Color(0xFFFDFCFF);
  static const Color inversePrimary = Color(0xFF93CCFF);

  static const Color secondary = Color(0xFF00687A);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainer = Color(0xFF57DFFE);
  static const Color onSecondaryContainer = Color(0xFF006172);

  static const Color tertiary = Color(0xFF006947);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color tertiaryContainer = Color(0xFF00855B);
  static const Color onTertiaryContainer = Color(0xFFF5FFF6);

  static const Color error = Color(0xFFBA1A1A);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color onErrorContainer = Color(0xFF93000A);

  static const Color primaryFixed = Color(0xFFCCE5FF);
  static const Color primaryFixedDim = Color(0xFF93CCFF);
  static const Color onPrimaryFixed = Color(0xFF001D31);
  static const Color onPrimaryFixedVariant = Color(0xFF004B73);

  static const Color secondaryFixed = Color(0xFFACEDFF);
  static const Color secondaryFixedDim = Color(0xFF4CD7F6);
  static const Color onSecondaryFixed = Color(0xFF001F26);
  static const Color onSecondaryFixedVariant = Color(0xFF004E5C);

  static const Color tertiaryFixed = Color(0xFF6FFBBE);
  static const Color tertiaryFixedDim = Color(0xFF4EDEA3);
  static const Color onTertiaryFixed = Color(0xFF002113);
  static const Color onTertiaryFixedVariant = Color(0xFF005236);

  static const Color background = Color(0xFFFAF8FF);
  static const Color onBackground = Color(0xFF131B2E);
  static const Color surfaceVariant = Color(0xFFDAE2FD);

  // ── Clinical status accents (not part of base M3 roles) ──
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningContainer = Color(0xFFFFF3DB);
  static const Color onWarningContainer = Color(0xFF7A4B00);

  static const Color critical = Color(0xFFEF4444);
  static const Color criticalContainer = Color(0xFFFFE3E1);
  static const Color onCriticalContainer = Color(0xFF7A0000);
}
