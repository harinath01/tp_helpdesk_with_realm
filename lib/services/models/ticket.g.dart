// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkTicket  _$NetworkTicketFromJson(Map<String, dynamic> json) =>
    NetworkTicket(
      id: json['id'] as int,
      created: json['created'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      followUps: (json['follow_ups'] as List<dynamic>?)
          ?.map((e) => NetworkFollowUp.fromJson(e as Map<String, dynamic>))
          .toList(),
      reportedBy: json['reported_by'] == null
          ? null
          : NetworkUser.fromJson(json['reported_by'] as Map<String, dynamic>),
      createdHumanize: json['created_humanize'] as String?,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => NetworkTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkTicketToJson(NetworkTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'description': instance.description,
      'title': instance.title,
      'follow_ups': instance.followUps,
      'reported_by': instance.reportedBy,
      'topics': instance.topics,
      'created_humanize': instance.createdHumanize,
    };

NetworkFollowUp _$NetworkFollowUpFromJson(Map<String, dynamic> json) =>
    NetworkFollowUp(
      id: json['id'] as int,
      comment: json['comment'] as String,
      user: NetworkUser.fromJson(json['user'] as Map<String, dynamic>),
      createdHumanize: json['created_humanize'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$NetworkFollowUpToJson(NetworkFollowUp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'user': instance.user,
      'created_humanize': instance.createdHumanize,
      'created': instance.created,
    };

NetworkUser _$NetworkUserFromJson(Map<String, dynamic> json) => NetworkUser(
      json['photo'] as String?,
      id: json['id'] as int,
      mediumImage: json['medium_image'] as String?,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$NetworkUserToJson(NetworkUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medium_image': instance.mediumImage,
      'photo': instance.photo,
      'display_name': instance.displayName,
    };

NetworkTopic _$NetworkTopicFromJson(Map<String, dynamic> json) => NetworkTopic(
      id: json['id'] as int,
      title: json['title'] as String,
      parentId: json['parent_id'] as int?,
      hasChildren: json['has_children'] as bool,
    );

Map<String, dynamic> _$NetworkTopicToJson(NetworkTopic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parent_id': instance.parentId,
      'has_children': instance.hasChildren,
    };
