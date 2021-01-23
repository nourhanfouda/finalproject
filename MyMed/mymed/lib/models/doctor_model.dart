import 'package:mymed/models/person_model.dart';

class DoctorModel extends Personmodel {
  int id;
  String clinicname;
  String spicalist;
  int status;

  DoctorModel({this.id, this.clinicname, this.spicalist, this.status = 0});
}
