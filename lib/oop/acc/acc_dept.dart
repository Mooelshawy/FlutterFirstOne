import 'package:first_one_flutter/models/trying_model.dart';
import 'package:first_one_flutter/oop/attendance.dart';
import 'package:first_one_flutter/oop/claulate_net_salary.dart';
import 'package:first_one_flutter/oop/emp/emploee.dart';
import 'package:first_one_flutter/oop/emp/emploee_name.dart';

class AccDept   extends  CalulateNetSalary  implements Emploee {



AccDept(){

}
  
  @override
  void attendanceEmploee(double time_in , String name ) {
      if (time_in > 10) {
        print("Good Mooring Your are late Today $name we hope not do it again ");
        print("As per our Rules You emploee in ${Attendance.aCCOUNTATTENDANCE} should be here 10 Am ");
      }else {
        print("Good Mooring $name Work Hard Today");
      }
    }
  
  
  
   
  
    @override
    void emploeeDepartment(String id) {
    var empFullname = EmploeeName();
    var data = empFullname.emploeeFullname(id);

    print("Emploee Data For Normal User $data");
  }

  
  

 
  

}