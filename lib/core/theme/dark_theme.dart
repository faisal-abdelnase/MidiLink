import 'package:flutter/material.dart';

import 'theme_colors.dart';
import 'theme_dimensions.dart';
import 'theme_extensions.dart';
import 'theme_text_styles.dart';

/// Builds the dark-mode [ThemeData] for MediLink.
///
/// DESIGN.md only specifies a light palette (the YAML frontmatter is a
/// full, tuned M3 light `ColorScheme`). Rather than inventing dark hex
/// values by hand, the dark scheme is generated with
/// [ColorScheme.fromSeed] from the same seed the light palette itself
/// was built from ([ThemeColors.darkSeed], i.e. `surface-tint`), so both
/// modes stay in the same brand family and the dark scheme is
/// automatically WCAG-contrast-safe. Swap this for exact tokens if the
/// design team later hands off a dedicated dark palette.
class DarkTheme {
  DarkTheme._();

  static ThemeData build([Locale locale = const Locale('en')]) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: ThemeColors.darkSeed,
      brightness: Brightness.dark,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      fontFamily: ThemeTextStyles.fontFamilyFor(locale),
      extensions: const [AppStatusColors.dark],
      textTheme:
          _textTheme(colorScheme.onSurface, colorScheme.onSurfaceVariant),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        centerTitle: false,
      ),
      cardTheme: CardThemeData(
        color: colorScheme.surfaceContainerLow,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeDimensions.borderRadiusLg,
          side: BorderSide(color: colorScheme.outlineVariant),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.secondaryContainer,
          foregroundColor: colorScheme.onSecondaryContainer,
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.outlineVariant),
          minimumSize: const Size(0, ThemeDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ThemeDimensions.borderRadiusBase,
          ),
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: ThemeTextStyles.labelLarge,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerLow,
        constraints:
            const BoxConstraints(minHeight: ThemeDimensions.inputHeight),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: ThemeDimensions.spaceMd,
          vertical: ThemeDimensions.spaceSm,
        ),
        border: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: ThemeDimensions.borderRadiusBase,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        labelStyle:
            ThemeTextStyles.labelLarge.copyWith(color: colorScheme.onSurfaceVariant),
        hintStyle:
            ThemeTextStyles.bodyMedium.copyWith(color: colorScheme.outline),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: colorScheme.surfaceContainerHigh,
        labelStyle:
            ThemeTextStyles.labelMedium.copyWith(color: colorScheme.onSurface),
        padding: const EdgeInsets.symmetric(horizontal: ThemeDimensions.spaceSm),
        shape: StadiumBorder(side: BorderSide(color: colorScheme.outlineVariant)),
        elevation: 0,
        showCheckmark: false,
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: colorScheme.outline, width: 1.5),
        fillColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? colorScheme.primary
                : Colors.transparent),
        checkColor: const WidgetStatePropertyAll(Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusSm),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: colorScheme.surfaceContainerLow,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeDimensions.borderRadiusXl,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.surfaceContainerLow,
        elevation: 0,
        // modalBarrierColor: ThemeColors.overlayScrim,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(ThemeDimensions.radiusXl),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: ThemeTextStyles.bodyMedium
            .copyWith(color: colorScheme.onInverseSurface),
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
