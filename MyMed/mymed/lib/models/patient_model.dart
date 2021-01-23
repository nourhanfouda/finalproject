import 'package:mymed/models/person_model.dart';

class PatientModel extends Personmodel {
  int id;
  String name;
  String email;
  String password;
  String imgUrl;
  int mobile;
  int status;
  PatientModel(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.imgUrl,
      this.mobile,
      this.status = 0});
}
