import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/material.dart';

class CosmosOutlineButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Widget? suffixIcon;

  const CosmosOutlineButton({
    Key? key,
    this.onTap,
    this.text = "",
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          if (suffixIcon != null) ...[
            const SizedBox(width: CosmosAppTheme.spacingS),
            suffixIcon!,
          ],
        ],
      ),
    );
  }
}