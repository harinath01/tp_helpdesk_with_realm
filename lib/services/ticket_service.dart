import 'dart:convert';
import 'package:helpdesk_with_realm/services/models/ticket.dart';
import 'package:http/http.dart' as http;

import 'package:realm/realm.dart';

import '../schemas/ticket.dart';

class TicketService {
  Future<NetworkTicket> fetchTickets({reportedUserId, page=1, pageSize=20}) async {
    Map<String, dynamic> queryParams = {"page": page, "page_size": pageSize};
    if (reportedUserId != null){
      queryParams["reported_by"] = reportedUserId;
    }

    var headers = {
      "Authorization": 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6NjAzODYsInVzZXJfaWQiOjYwMzg2LCJpbnN0aXR1dGUiOjczOSwiaWQiOjYwMzg2LCJleHAiOjE3MTE4MDYxODksImVtYWlsIjoic2F0QHRlc3RwcmVzcy5pbiJ9.oGAm535PP6lxsmMwm6N06Zmw1DwaGCM-9x92RK7LhVM',
    };

    final response = await http.get(Uri.parse("https://lmsdemo.testpress.in/api/v2.5/helpdesk/196/"), headers: headers);
    final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
    return _createTicketFromJson(jsonData);
  }

  NetworkTicket _createTicketFromJson(Map<String, dynamic> ticketJson) {
    final List<String> topics = [];
    if (ticketJson["topic"] != null) {
      topics.add(ticketJson["topic"]["title"]);
    }

    ticketJson["topics"] = topics;
    return NetworkTicket.fromJson(ticketJson);
  }
}