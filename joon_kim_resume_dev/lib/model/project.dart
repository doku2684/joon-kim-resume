import 'package:flutter/material.dart';

class Project{
  String image;
  String name;
  String description;
  String link;
  String policy;
  Project({@required this.image,@required this.name,@required this.description, this.link, this.policy});
}