import 'package:flutter/material.dart';

ButtonStyle roundedButtonStyle({
  required BuildContext context,
  Color? background,
  Color? forground,
}) {
  return ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(20),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      background ?? Theme.of(context).colorScheme.primary,
    ),
    foregroundColor: MaterialStateProperty.all<Color>(
      forground ?? Theme.of(context).colorScheme.onPrimary,
    ),
  );
}

ButtonStyle rectangleButtonStyle({
  required BuildContext context,
  Color? background,
  Color? forground,
}) {
  return ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(20),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      background ?? Theme.of(context).colorScheme.primary,
    ),
    foregroundColor: MaterialStateProperty.all<Color>(
      forground ?? Theme.of(context).colorScheme.onPrimary,
    ),
  );
}

ButtonStyle textButtonStyle({
  required BuildContext context,
  Color? background,
  Color? forground,
}) {
  return ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(
      forground ?? Theme.of(context).colorScheme.onPrimary,
    ),
  );
}
