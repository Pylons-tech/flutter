import 'package:flutter/material.dart';

class CosmosAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final double elevation;

  const CosmosAppBar({
    Key? key,
    this.title = "",
    this.actions,
    this.elevation = 0,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 0,
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
