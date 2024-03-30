import 'package:realm/realm.dart';

part 'user.realm.dart';

@RealmModel()
class $TPUser {
  @PrimaryKey()
  late int id;
  late String? mediumImage;
  late String displayName;
  late String? photo;
}