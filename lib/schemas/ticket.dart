import 'package:realm/realm.dart';

import 'package:helpdesk_with_realm/schemas/user.dart';
import 'package:helpdesk_with_realm/schemas/followup.dart';
import 'package:helpdesk_with_realm/schemas/topic.dart';

part 'ticket.realm.dart';

@RealmModel()
class $Ticket {
  @PrimaryKey()
  late int id;

  late DateTime created;
  late String description;
  late String title;
  late List<$FollowUp> followUps;
  late $TPUser? reportedBy;
  late $Topic? topic;
  late DateTime createdHumanize;
}