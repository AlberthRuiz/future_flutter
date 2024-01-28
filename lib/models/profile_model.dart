import 'package:futuresg7/models/trabajo_model.dart';

class ProfileModel {
  String name;
  String profesion;
  int likes;
  int folowers;
  double rating;
  String sobreMi;
  List<TrabajoModel> trabajosList;
  ProfileModel({
    required this.name,
    required this.folowers,
    required this.likes,
    required this.profesion,
    required this.rating,
    required this.sobreMi,
    required this.trabajosList,
  });
}
