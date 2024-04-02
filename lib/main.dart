import 'package:flutter/material.dart';
import 'package:helpdesk_with_realm/schemas/followup.dart';
import 'package:helpdesk_with_realm/schemas/ticket.dart';
import 'package:helpdesk_with_realm/schemas/topic.dart';
import 'package:helpdesk_with_realm/schemas/user.dart';
import 'package:helpdesk_with_realm/services/ticket_service.dart';
import 'package:realm/realm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final realm = Realm(Configuration.local([Ticket.schema, Topic.schema, FollowUp.schema, TPUser.schema]));
    print(realm.config.path);
    TicketService().fetchTickets().then((networkTicket) async {
      await realm.write((){
        realm.deleteAll<Ticket>();
        Ticket ticket = networkTicket.toTicket();
        realm.add(ticket, update: true);
      });
    });

    return MaterialApp(
      title: 'Testpress HelpDesk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Testpress HelpDesk'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Placeholder()
      ),
    );
  }
}
