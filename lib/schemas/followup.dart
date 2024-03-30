import 'package:json_annotation/json_annotation.dart';
import 'package:realm/realm.dart';

import 'user.dart';
part 'followup.realm.dart';

@RealmModel()
class $FollowUp {
  @PrimaryKey()
  late int id;
  late String comment;
  late $TPUser? user;
  late DateTime created;
}