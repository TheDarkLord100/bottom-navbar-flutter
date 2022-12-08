import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test1/services/programs.dart';
import 'package:http/http.dart';

class HTTPService {
  final String api1 =
      "https://632017e19f82827dcf24a655.mockapi.io/api/programs";

  Programs getProgramObject(result) {
    Programs program = Programs(result["createdAt"], result["name"],
        result["category"], result["lesson"], result["id"]);
    return program;
  }

  Future<void> getPrograms() async {
    Response response = await get(Uri.parse(api1));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      Programs.programCount = body["count"];
      Programs.requestId = body["requestId"];
      Programs.key = body["anyKey"];
      List programs = body["items"];
      for (int i = 0; i < Programs.programCount; i++) {
        Programs.allPrograms.add(getProgramObject(programs[i]));
      }
    } else {
      debugPrint("Unable to fetch Data");
    }
  }
}
