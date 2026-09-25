import 'package:flutter/material.dart';

import 'theme_colors.dart';

/// Clinical status colors that base [ColorScheme] roles don't cover.
/// [success] reuses the tertiary ("vitality green") token so stable
/// readings stay visually tied to the brand's tertiary role; [warning]
/// and [critical] are dedicated accents for caution / emergency states,
/// kept distinct from [ColorScheme.error] which stays reserved for
/// ordinary form validation.
///
/// Usage:
/// ```dart
/// final status = Theme.of(context).extension<AppStatusColors>()!;
/// Container(color: status.warningContainer, child: Text('Pending', style: TextStyle(color: status.warning)))
/// ```
@immutable
class AppStatusColors extends ThemeExtension<AppStatusColors> {
  const AppStatusColors({
    required this.success,
    required this.successContainer,
    required this.warning,
    required this.warningContainer,
    required this.critical,
    required this.criticalContainer,
  });

  final Color success;
  final Color successContainer;
  final Color warning;
  final Color warningContainer;
  final Color critical;
  final Color criticalContainer;

  static const light = AppStatusColors(
    success: ThemeColors.tertiary,
    successContainer: ThemeColors.tertiaryContainer,
    warning: ThemeColors.warning,
    warningContainer: ThemeColors.warningContainer,
    critical: ThemeColors.critical,
    criticalContainer: ThemeColors.criticalContainer,
  );

  // Same accents on dark; they're used as flat badge colors so no
  // separate dark tuning is needed yet.
  static const dark = light;

  @override
  AppStatusColors copyWith({
    Color? success,
    Color? successContainer,
    Color? warning,
    Color? warningContainer,
    Color? critical,
    Color? criticalContainer,
  }) {
    return AppStatusColors(
      success: success ?? this.success,
      successContainer: successContainer ?? this.successContainer,
      warning: warning ?? this.warning,
      warningContainer: warningContainer ?? this.warningContainer,
      critical: critical ?? this.critical,
      criticalContainer: criticalContainer ?? this.criticalContainer,
    );
  }

  @override
  AppStatusColors lerp(ThemeExtension<AppStatusColors>? other, double t) {
    if (other is! AppStatusColors) return this;
    return AppStatusColors(
      success: Color.lerp(success, other.success, t)!,
      successContainer: Color.lerp(successContainer, other.successContainer, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t)!,
      critical: Color.lerp(critical, other.critical, t)!,
      criticalContainer: Color.lerp(criticalContainer, other.criticalContainer, t)!,
    );
  }
}
