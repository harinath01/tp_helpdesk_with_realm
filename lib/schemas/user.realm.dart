// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class TPUser extends $TPUser with RealmEntity, RealmObjectBase, RealmObject {
  TPUser(
    int id,
    String displayName, {
    String? mediumImage,
    String? photo,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'mediumImage', mediumImage);
    RealmObjectBase.set(this, 'displayName', displayName);
    RealmObjectBase.set(this, 'photo', photo);
  }

  TPUser._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get mediumImage =>
      RealmObjectBase.get<String>(this, 'mediumImage') as String?;
  @override
  set mediumImage(String? value) =>
      RealmObjectBase.set(this, 'mediumImage', value);

  @override
  String get displayName =>
      RealmObjectBase.get<String>(this, 'displayName') as String;
  @override
  set displayName(String value) =>
      RealmObjectBase.set(this, 'displayName', value);

  @override
  String? get photo => RealmObjectBase.get<String>(this, 'photo') as String?;
  @override
  set photo(String? value) => RealmObjectBase.set(this, 'photo', value);

  @override
  Stream<RealmObjectChanges<TPUser>> get changes =>
      RealmObjectBase.getChanges<TPUser>(this);

  @override
  TPUser freeze() => RealmObjectBase.freezeObject<TPUser>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'mediumImage': mediumImage.toEJson(),
      'displayName': displayName.toEJson(),
      'photo': photo.toEJson(),
    };
  }

  static EJsonValue _toEJson(TPUser value) => value.toEJson();
  static TPUser _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'mediumImage': EJsonValue mediumImage,
        'displayName': EJsonValue displayName,
        'photo': EJsonValue photo,
      } =>
        TPUser(
          fromEJson(id),
          fromEJson(displayName),
          mediumImage: fromEJson(mediumImage),
          photo: fromEJson(photo),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(TPUser._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, TPUser, 'TPUser', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('mediumImage', RealmPropertyType.string, optional: true),
      SchemaProperty('displayName', RealmPropertyType.string),
      SchemaProperty('photo', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
