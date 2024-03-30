// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Topic extends $Topic with RealmEntity, RealmObjectBase, RealmObject {
  Topic(
    int id,
    String title,
    bool hasChildren, {
    int? parentId,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'parentId', parentId);
    RealmObjectBase.set(this, 'hasChildren', hasChildren);
  }

  Topic._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  int? get parentId => RealmObjectBase.get<int>(this, 'parentId') as int?;
  @override
  set parentId(int? value) => RealmObjectBase.set(this, 'parentId', value);

  @override
  bool get hasChildren =>
      RealmObjectBase.get<bool>(this, 'hasChildren') as bool;
  @override
  set hasChildren(bool value) =>
      RealmObjectBase.set(this, 'hasChildren', value);

  @override
  Stream<RealmObjectChanges<Topic>> get changes =>
      RealmObjectBase.getChanges<Topic>(this);

  @override
  Topic freeze() => RealmObjectBase.freezeObject<Topic>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'title': title.toEJson(),
      'parentId': parentId.toEJson(),
      'hasChildren': hasChildren.toEJson(),
    };
  }

  static EJsonValue _toEJson(Topic value) => value.toEJson();
  static Topic _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'title': EJsonValue title,
        'parentId': EJsonValue parentId,
        'hasChildren': EJsonValue hasChildren,
      } =>
        Topic(
          fromEJson(id),
          fromEJson(title),
          fromEJson(hasChildren),
          parentId: fromEJson(parentId),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Topic._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Topic, 'Topic', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('parentId', RealmPropertyType.int, optional: true),
      SchemaProperty('hasChildren', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
