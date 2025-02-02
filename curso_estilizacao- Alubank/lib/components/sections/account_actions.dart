import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text('Ações da Conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                
                child: BoxCard(
                    boxContent: _AccontActionsContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                )),
              ),
              InkWell(
                child: BoxCard(
                    boxContent: _AccontActionsContent(
                  icon: Icon(Icons.cached),
                  text: 'Transferir',
                )),
              ),
              InkWell(
                child: BoxCard(
                    boxContent: _AccontActionsContent(
                  icon: Icon(Icons.center_focus_strong),
                  text: 'Ler',
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccontActionsContent extends StatelessWidget {
  final icon;
  final String text;
  const _AccontActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      child: Column(
        children: [
          
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: icon,
          ),
          Text(text)
        ],
      ),
    );
  }
}
