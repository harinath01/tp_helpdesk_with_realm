// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followup.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class FollowUp extends $FollowUp
    with RealmEntity, RealmObjectBase, RealmObject {
  FollowUp(
    int id,
    String comment,
    DateTime created, {
    TPUser? user,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'comment', comment);
    RealmObjectBase.set(this, 'user', user);
    RealmObjectBase.set(this, 'created', created);
  }

  FollowUp._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get comment => RealmObjectBase.get<String>(this, 'comment') as String;
  @override
  set comment(String value) => RealmObjectBase.set(this, 'comment', value);

  @override
  TPUser? get user => RealmObjectBase.get<TPUser>(this, 'user') as TPUser?;
  @override
  set user(covariant TPUser? value) => RealmObjectBase.set(this, 'user', value);

  @override
  DateTime get created =>
      RealmObjectBase.get<DateTime>(this, 'created') as DateTime;
  @override
  set created(DateTime value) => RealmObjectBase.set(this, 'created', value);

  @override
  Stream<RealmObjectChanges<FollowUp>> get changes =>
      RealmObjectBase.getChanges<FollowUp>(this);

  @override
  FollowUp freeze() => RealmObjectBase.freezeObject<FollowUp>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'comment': comment.toEJson(),
      'user': user.toEJson(),
      'created': created.toEJson(),
    };
  }

  static EJsonValue _toEJson(FollowUp value) => value.toEJson();
  static FollowUp _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'comment': EJsonValue comment,
        'user': EJsonValue user,
        'created': EJsonValue created,
      } =>
        FollowUp(
          fromEJson(id),
          fromEJson(comment),
          fromEJson(created),
          user: fromEJson(user),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(FollowUp._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, FollowUp, 'FollowUp', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('comment', RealmPropertyType.string),
      SchemaProperty('user', RealmPropertyType.object,
          optional: true, linkTarget: 'TPUser'),
      SchemaProperty('created', RealmPropertyType.timestamp),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
