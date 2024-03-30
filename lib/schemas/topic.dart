import 'package:realm/realm.dart';

part 'topic.realm.dart';

@RealmModel()
class $Topic {
  @PrimaryKey()
  late int id;
  late String title;
  late int? parentId;
  late bool hasChildren;
}