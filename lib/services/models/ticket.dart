import 'package:helpdesk_with_realm/schemas/topic.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../schemas/followup.dart';
import '../../schemas/ticket.dart';
import '../../schemas/user.dart';

part 'ticket.g.dart';

@JsonSerializable()
class NetworkTicket {
  final int id;
  final String created;
  final String description;
  final String title;
  @JsonKey(name: 'follow_ups')
  final List<NetworkFollowUp>? followUps;
  @JsonKey(name: 'reported_by')
  final NetworkUser? reportedBy;
  final List<NetworkTopic> topics;
  @JsonKey(name: 'created_humanize')
  final String? createdHumanize;

  NetworkTicket({
    required this.id,
    required this.created,
    required this.description,
    required this.title,
    required this.followUps,
    required this.reportedBy,
    required this.createdHumanize,
    required this.topics
  });


  factory NetworkTicket.fromJson(Map<String, dynamic> json) => _$NetworkTicketFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkTicketToJson(this);

  Ticket toTicket() {
    final List<Topic> convertedTopics = topics.map((networkTopic) => networkTopic.toTopic()).toList();

    return Ticket(
      id,
      DateTime.parse(created),
      description,
      title,
      followUps: followUps?.map((networkFollowUp) => networkFollowUp.toFollowUp()).toList() ?? [],
      reportedBy: reportedBy?.toUser(),
      topics: convertedTopics,
      createdHumanize: createdHumanize,
    );
  }
}

@JsonSerializable()
class NetworkFollowUp {
  final int id;
  final String comment;
  final NetworkUser user;
  @JsonKey(name: "created_humanize")
  final String createdHumanize;
  final String created;

  NetworkFollowUp({
    required this.id,
    required this.comment,
    required this.user,
    required this.createdHumanize,
    required this.created,
  });

  factory NetworkFollowUp.fromJson(Map<String, dynamic> json) => _$NetworkFollowUpFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkFollowUpToJson(this);

  FollowUp toFollowUp() {
    return FollowUp(id, comment, DateTime.parse(created), user: user.toUser());
  }
}

@JsonSerializable()
class NetworkUser {
  final int id;
  @JsonKey(name: 'medium_image')
  final String? mediumImage;
  final String? photo;
  @JsonKey(name: 'display_name')
  final String displayName;

  NetworkUser(this.photo, {
    required this.id,
    required this.mediumImage,
    required this.displayName,
  });

  factory NetworkUser.fromJson(Map<String, dynamic> json) => _$NetworkUserFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkUserToJson(this);

  TPUser toUser() {
    return TPUser(id, displayName, mediumImage: mediumImage, photo:photo);
  }
}


@JsonSerializable()
class NetworkTopic {
  final int id;
  final String title;
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @JsonKey(name: 'has_children')
  final bool hasChildren;

  NetworkTopic({
    required this.id,
    required this.title,
    this.parentId,
    required this.hasChildren,
  });

  factory NetworkTopic.fromJson(Map<String, dynamic> json) => _$NetworkTopicFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkTopicToJson(this);

  Topic toTopic(){
    return Topic(id, title, hasChildren, parentId: parentId);
  }
}