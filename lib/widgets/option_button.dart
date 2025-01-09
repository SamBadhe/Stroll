import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String label;

  const OptionButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          softWrap: true,
          overflow: TextOverflow.ellipsis, // Prevent overflow
          maxLines: 2, // Allow wrapping to 2 lines
        ),
      ),
    );
  }
}
