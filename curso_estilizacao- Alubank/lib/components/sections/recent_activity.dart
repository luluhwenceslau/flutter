import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

import '../theme/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Text(
                      '\$9900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text(
                      '\$5000.00',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Limite de Gastos: \$432.90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: const LinearProgressIndicator(
            value: 0.5,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: const Text('Diga-me como!', style: TextStyle(fontSize: 16),),
        ),
      ],
    );
  }
}
