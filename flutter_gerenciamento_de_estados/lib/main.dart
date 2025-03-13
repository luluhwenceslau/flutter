import 'package:client_control/pages/client_types_page.dart';
import 'package:flutter/material.dart';
import 'models/client.dart';
import 'models/client_type.dart';
import 'models/clientes.dart';
import 'pages/clients_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Clients(clients: [Client(name: 'Geraldo', email: 'leo@email.com', type: ClientType(name: 'Platinum', icon: Icons.credit_card)),]), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientTypesPage(title: 'Tipos de cliente'),
      },
    );
  }
}
