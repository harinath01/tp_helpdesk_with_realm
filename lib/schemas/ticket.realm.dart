// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Ticket extends $Ticket with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Ticket(
    int id,
    DateTime created,
    String description,
    String title, {
    Iterable<FollowUp> followUps = const [],
    TPUser? reportedBy,
    Iterable<Topic> topics = const [],
    String? createdHumanize = "",
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Ticket>({
        'created_humanize': "",
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'created', created);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set<RealmList<FollowUp>>(
        this, 'followUps', RealmList<FollowUp>(followUps));
    RealmObjectBase.set(this, 'reportedBy', reportedBy);
    RealmObjectBase.set<RealmList<Topic>>(
        this, 'topics', RealmList<Topic>(topics));
    RealmObjectBase.set(this, 'created_humanize', createdHumanize);
  }

  Ticket._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  DateTime get created =>
      RealmObjectBase.get<DateTime>(this, 'created') as DateTime;
  @override
  set created(DateTime value) => RealmObjectBase.set(this, 'created', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  RealmList<FollowUp> get followUps =>
      RealmObjectBase.get<FollowUp>(this, 'followUps') as RealmList<FollowUp>;
  @override
  set followUps(covariant RealmList<FollowUp> value) =>
      throw RealmUnsupportedSetError();

  @override
  TPUser? get reportedBy =>
      RealmObjectBase.get<TPUser>(this, 'reportedBy') as TPUser?;
  @override
  set reportedBy(covariant TPUser? value) =>
      RealmObjectBase.set(this, 'reportedBy', value);

  @override
  RealmList<Topic> get topics =>
      RealmObjectBase.get<Topic>(this, 'topics') as RealmList<Topic>;
  @override
  set topics(covariant RealmList<Topic> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get createdHumanize =>
      RealmObjectBase.get<String>(this, 'created_humanize') as String?;
  @override
  set createdHumanize(String? value) =>
      RealmObjectBase.set(this, 'created_humanize', value);

  @override
  Stream<RealmObjectChanges<Ticket>> get changes =>
      RealmObjectBase.getChanges<Ticket>(this);

  @override
  Ticket freeze() => RealmObjectBase.freezeObject<Ticket>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'created': created.toEJson(),
      'description': description.toEJson(),
      'title': title.toEJson(),
      'followUps': followUps.toEJson(),
      'reportedBy': reportedBy.toEJson(),
      'topics': topics.toEJson(),
      'created_humanize': createdHumanize.toEJson(),
    };
  }

  static EJsonValue _toEJson(Ticket value) => value.toEJson();
  static Ticket _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'created': EJsonValue created,
        'description': EJsonValue description,
        'title': EJsonValue title,
        'followUps': EJsonValue followUps,
        'reportedBy': EJsonValue reportedBy,
        'topics': EJsonValue topics,
        'created_humanize': EJsonValue createdHumanize,
      } =>
        Ticket(
          fromEJson(id),
          fromEJson(created),
          fromEJson(description),
          fromEJson(title),
          followUps: fromEJson(followUps),
          reportedBy: fromEJson(reportedBy),
          topics: fromEJson(topics),
          createdHumanize: fromEJson(createdHumanize),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Ticket._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Ticket, 'Ticket', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('created', RealmPropertyType.timestamp),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('followUps', RealmPropertyType.object,
          linkTarget: 'FollowUp', collectionType: RealmCollectionType.list),
      SchemaProperty('reportedBy', RealmPropertyType.object,
          optional: true, linkTarget: 'TPUser'),
      SchemaProperty('topics', RealmPropertyType.object,
          linkTarget: 'Topic', collectionType: RealmCollectionType.list),
      SchemaProperty('createdHumanize', RealmPropertyType.string,
          mapTo: 'created_humanize', optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
