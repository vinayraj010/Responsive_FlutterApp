import 'package:flutter_club/Modules/Member.dart';

class Room {
  String name;
  List<Member> speakers;
  List<Member> audience;

  Room({
    this.name,
    this.speakers,
    this.audience,
  });
}
