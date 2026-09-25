import 'package:flutter/material.dart';

import 'theme_colors.dart';
import 'theme_dimensions.dart';
import 'theme_extensions.dart';
import 'theme_text_styles.dart';

/// Builds the light-mode [ThemeData] for MediLink, from the exact
/// Material 3 tonal palette specified in DESIGN.md.
class LightTheme {
  LightTheme._();

  /// [locale] selects IBM Plex Sans vs IBM Plex Sans Arabic app-wide.
  static ThemeData build([Locale locale = const Locale('en')]) {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.primary,
      onPrimary: ThemeColors.onPrimary,
      primaryContainer: ThemeColors.primaryContainer,
      onPrimaryContainer: ThemeColors.onPrimaryContainer,
      secondary: ThemeColors.secondary,
      onSecondary: ThemeColors.onSecondary,
      secondaryContainer: ThemeColors.secondaryContainer,
      onSecondaryContainer: ThemeColors.onSecondaryContainer,
      tertiary: ThemeColors.tertiary,
      onTertiary: ThemeColors.onTertiary,
      tertiaryContainer: ThemeColors.tertiaryContainer,
      onTertiaryContainer: ThemeColors.onTertiaryContainer,
      error: ThemeColors.error,
      onError: ThemeColors.onError,
      errorContainer: ThemeColors.errorContainer,
      onErrorContainer: ThemeColors.onErrorContainer,
      surface: ThemeColors.surface,
      onSurface: ThemeColors.onSurface,
      surfaceDim: ThemeColors.surfaceDim,
      surfaceBright: ThemeColors.surfaceBright,
      surfaceContainerLowest: ThemeColors.surfaceContainerLowest,
      surfaceContainerLow: ThemeColors.surfaceContainerLow,
      surfaceContainer: ThemeColors.surfaceContainer,
      surfaceContainerHigh: ThemeColors.surfaceContainerHigh,
      surfaceContainerHighest: ThemeColors.surfaceContainerHighest,
      onSurfaceVariant: ThemeColors.onSurfaceVariant,
      outline: ThemeColors.outline,
      outlineVariant: ThemeColors.outlineVariant,
      surfaceTint: ThemeColors.surfaceTint,
      inverseSurface: ThemeColors.inverseSurface,
      onInverseSurface: ThemeColors.inverseOnSurface,
      inversePrimary: ThemeColors.inversePrimary,
      primaryFixed: ThemeColors.primaryFixed,
      primaryFixedDim: ThemeColors.primaryFixedDim,
      onPrimaryFixed: ThemeColors.onPrimaryFixed,
      onPrimaryFixedVariant: ThemeColors.onPrimaryFixedVariant,
      secondaryFixed: ThemeColors.secondaryFixed,
      secondaryFixedDim: ThemeColors.secondaryFixedDim,
      onSecondaryFixed: ThemeColors.onSecondaryFixed,
      onSecondaryFixedVariant: ThemeColors.onSecondaryFixedVariant,
      tertiaryFixed: ThemeColors.tertiaryFixed,
      tertiaryFixedDim: ThemeColors.tertiaryFixedDim,
      onTertiaryFixed: ThemeColors.onTertiaryFixed,
      onTertiaryFixedVariant: ThemeColors.onTertiaryFixedVariant,
      shadow: Colors.black,
      scrim: Colors.black,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: ThemeColors.background,
      fontFamily: ThemeTextStyles.fontFamilyFor(locale),
      extensions: const [AppStatusColors.light],
      textTheme: _textTheme(ThemeColors.onSurface, ThemeColors.onSurfaceVariant),
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeColors.surface,
        foregroundColor: ThemeColors.onSurface,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        centerTitle: false,
      ),
      cardTheme: CardThemeData(
        color: ThemeColors.surfaceContainerLowest,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeDimensions.borderRadiusLg,
          side: const BorderSide(color: ThemeColors.outlineVariant),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primary,
          foregroundColor: ThemeColors.onPrimary,
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      // "Secondary / Tonal" buttons — soft tint background per DESIGN.md.
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: ThemeColors.secondaryContainer,
          foregroundColor: ThemeColors.onSecondaryContainer,
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ThemeColors.primary,
          side: const BorderSide(color: ThemeColors.outlineVariant),
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: ThemeColors.primary,
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ThemeColors.surfaceContainerLowest,
        constraints:
            const BoxConstraints(minHeight: ThemeDimensions.inputHeight),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: ThemeDimensions.spaceMd,
          vertical: ThemeDimensions.spaceSm,
        ),
        border: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: const BorderSide(color: ThemeColors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: const BorderSide(color: ThemeColors.outline),
        ),
        // 2px focus glow ring, no layout shift, per DESIGN.md.
        focusedBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: const BorderSide(color: ThemeColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: const BorderSide(color: ThemeColors.error),
        ),
        labelStyle: ThemeTextStyles.labelLarge
            .copyWith(color: ThemeColors.onSurfaceVariant),
        hintStyle:
            ThemeTextStyles.bodyMedium.copyWith(color: ThemeColors.outline),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: ThemeColors.surfaceContainer,
        labelStyle: ThemeTextStyles.labelMedium
            .copyWith(color: ThemeColors.onSurface),
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeDimensions.spaceSm,
        ),
        shape: const StadiumBorder(
          side: BorderSide(color: ThemeColors.outlineVariant),
        ),
        elevation: 0,
        showCheckmark: false,
      ),
      checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: ThemeColors.outline, width: 1.5),
        fillColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? ThemeColors.primary
                : Colors.transparent),
        checkColor: const WidgetStatePropertyAll(Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusSm),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: ThemeColors.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: ThemeColors.surfaceContainerLowest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeDimensions.borderRadiusXl,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ThemeColors.surfaceContainerLowest,
        elevation: 0,
        // modalBarrierColor: ThemeColors.overlayScrim,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(ThemeDimensions.radiusXl),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: ThemeColors.inverseSurface,
        contentTextStyle: ThemeTextStyles.bodyMedium
            .copyWith(color: ThemeColors.inverseOnSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
        ),
      ),
    );
  }

  static TextTheme _textTheme(Color primaryText, Color secondaryText) {
    return TextTheme(
      displayLarge: ThemeTextStyles.displayLarge.copyWith(color: primaryText),
      headlineLarge: ThemeTextStyles.headlineLarge.copyWith(color: primaryText),
      headlineMedium: ThemeTextStyles.headlineMedium.copyWith(color: primaryText),
      headlineSmall: ThemeTextStyles.headlineSmall.copyWith(color: primaryText),
      titleLarge: ThemeTextStyles.titleLarge.copyWith(color: primaryText),
      titleMedium: ThemeTextStyles.titleMedium.copyWith(color: primaryText),
      titleSmall: ThemeTextStyles.titleSmall.copyWith(color: primaryText),
      bodyLarge: ThemeTextStyles.bodyLarge.copyWith(color: primaryText),
      bodyMedium: ThemeTextStyles.bodyMedium.copyWith(color: secondaryText),
      bodySmall: ThemeTextStyles.bodySmall.copyWith(color: secondaryText),
      labelLarge: ThemeTextStyles.labelLarge.copyWith(color: primaryText),
      labelMedium: ThemeTextStyles.labelMedium.copyWith(color: secondaryText),
      labelSmall: ThemeTextStyles.labelSmall.copyWith(color: secondaryText),
    );
  }
}
