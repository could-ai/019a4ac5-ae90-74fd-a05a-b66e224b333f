import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final int days;

  const ProgressWidget({super.key, required this.days});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            days.toString(),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 80,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Dias sem recaída',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
