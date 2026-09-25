import 'package:flutter/material.dart';

/// MediLink Clinical Design System — spacing, radius, and elevation
/// tokens, taken directly from DESIGN.md's `rounded` / `spacing`
/// blocks and its "Elevation & Depth" / "Layout & Spacing" sections
/// (1rem = 16px).
class ThemeDimensions {
  ThemeDimensions._();

  // ── Spacing scale (space-xs … space-xl) ──────────────
  static const double spaceXs = 4; // 0.25rem
  static const double spaceSm = 8; // 0.5rem
  static const double spaceMd = 16; // 1rem
  static const double spaceLg = 24; // 1.5rem
  static const double spaceXl = 32; // 2rem

  // ── Grid gutters, per breakpoint tier ────────────────
  static const double gutterMobile = 12; // 0.75rem
  static const double gutter = 16; // 1rem
  static const double gutterTablet = 20; // 1.25rem
  static const double gutterDesktop = 24; // 1.5rem

  // ── Screen margins, per breakpoint tier ───────────────
  static const double marginMobile = 16; // 1rem
  static const double margin = 24; // 1.5rem
  static const double marginTablet = 24; // 1.5rem
  static const double marginDesktop = 40; // 2.5rem

  /// Desktop content canvas cap, so medical records/tables stay a
  /// comfortable scan length on very wide screens.
  static const double contentMaxWidth = 1440;

  // ── Corner radius scale ───────────────────────────────
  static const double radiusSm = 4; // 0.25rem — chips/checkbox accents
  static const double radiusBase = 8; // 0.5rem  — inputs, buttons, badges
  static const double radiusMd = 12; // 0.75rem — small groupings
  static const double radiusLg = 16; // 1rem    — cards, diagnostic modules
  static const double radiusXl = 24; // 1.5rem  — hero containers, sheets
  static const double radiusFull = 9999; // pills, avatars, FABs

  static const BorderRadius borderRadiusSm =
      BorderRadius.all(Radius.circular(radiusSm));
  static const BorderRadius borderRadiusBase =
      BorderRadius.all(Radius.circular(radiusBase));
  static const BorderRadius borderRadiusMd =
      BorderRadius.all(Radius.circular(radiusMd));
  static const BorderRadius borderRadiusLg =
      BorderRadius.all(Radius.circular(radiusLg));
  static const BorderRadius borderRadiusXl =
      BorderRadius.all(Radius.circular(radiusXl));
  static const BorderRadius borderRadiusFull =
      BorderRadius.all(Radius.circular(radiusFull));

  // ── Component sizing ──────────────────────────────────
  static const double buttonHeight = 48;
  static const double inputHeight = 48;
  static const double chipHeight = 32;
  static const double checkboxFrame = 20;
  static const double touchTarget = 48;

  // ── Elevation tiers ────────────────────────────────────
  /// The design system uses flat Material elevation (0) everywhere and
  /// layers soft, diffused shadows by hand instead of relying on
  /// Material's tonal elevation — apply these via a `Container`'s
  /// `BoxDecoration.boxShadow` (e.g. on a custom card widget), not via
  /// `CardTheme.elevation`.
  static const List<BoxShadow> shadowTier1 = [
    BoxShadow(
      color: Color(0x0A0F172A), // rgba(15,23,42,0.04)
      offset: Offset(0, 2),
      blurRadius: 8,
    ),
  ];

  static const List<BoxShadow> shadowTier2 = [
    BoxShadow(
      color: Color(0x140F172A), // rgba(15,23,42,0.08)
      offset: Offset(0, 8),
      blurRadius: 24,
    ),
  ];

  static const List<BoxShadow> shadowTier3 = [
    BoxShadow(
      color: Color(0x290F172A), // rgba(15,23,42,0.16)
      offset: Offset(0, 16),
      blurRadius: 40,
    ),
  ];

  /// Modal/drawer/alert overlay scrim: rgba(15,23,42,0.6).
  static const Color overlayScrim = Color(0x990F172A);
}
