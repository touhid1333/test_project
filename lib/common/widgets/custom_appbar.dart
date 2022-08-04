import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final List<Widget>? actions;
  const CustomAppbar({
    Key? key,
    this.automaticallyImplyLeading = false,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppLocalizations.of(context)!.appTitle,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: automaticallyImplyLeading == true ? null : leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
    );
  }
}
