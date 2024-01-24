import 'package:flutter/material.dart';
import 'package:avalia_ai/shared/styles/colors.dart';

class AVAIMenuButton extends StatelessWidget {
  final VoidCallback onPressed;
  const AVAIMenuButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AVAIColors.white100,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AVAIColors.lightGrey),
        ),
        child: const Icon(
          Icons.menu,
          size: 18,
          color: AVAIColors.royalBlue,
        ),
      ),
    );
  }
}
