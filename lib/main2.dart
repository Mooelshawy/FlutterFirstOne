import 'package:first_one_flutter/models/trying_model.dart';
import 'package:first_one_flutter/oop/acc/acc_dept.dart';
import 'package:first_one_flutter/oop/attendance.dart';
import 'package:first_one_flutter/oop/claulate_net_salary.dart';

void main() {
  var empData = TryingModel("Omran", "Elshawy", 26, "MidLevelAccounter"
  , 'Attendance.aCCOUNTATTENDANCE', 3000.0, 15,"5");
  var accountDept  = AccDept();
  accountDept.attendanceEmploee(empData.time_in, empData.f_name);
  accountDept.emploeeDepartment(empData.id);

 
 

  var calculate = CalulateNetSalary();
  print(calculate.claculateSalary(26, "MidLevelAccounter", "Accpted", empData.department));
  print(calculate.calulateNetSalary(empData.salary, empData.department, empData.title_work));
  
  
}

class Rechtangle {
  static var lenght;
  static var breadth;

  Rechtangle({a, b}) {
    lenght = a;
    breadth = b;
  }

  findArea({lenght = 10, breadth = 10}) {
    var area = {breadth * lenght};
    print("Area Is :$area");
  }

  int RecurtionFunctuion({number = 0}) {
    if (number <= 0) {
      //cancelation
      return 1;
    } else {
      return number * (RecurtionFunctuion(number: number - 1));
    }
  }
}

class CustemException implements Exception {
  String errorMessage() {
    return "You can not enter negative Value Here ";
  }

  void depositeAmount(int amount) {
    if (amount < 0) {
      throw new CustemException();
    }
  }
}

 class Printer {
  Printer(){
    print("This is Desfualt Constracor ") ;
  }
 Printer.namesConst({name}){

 }
  _printFirst() {    print("********************First Postion _____________________");
}
  printSecond() { print("______________First Postion _____________________");}
  printThreed() {print("______________First Postion _____________________");}

  printFourth(){print("______________First Postion _____________________");}
  printFivth() {print("______________First Postion _____________________");}
}

class ShowData implements  Printer {
  ShowData();

  @override
  _printFirst() {
      
  }

  @override
  printFivth() {
    print("______________First Postion _____________________");
   
  }

  @override
  printFourth() {
    print("______________First Postion _____________________");
   
  }

  @override
  printSecond() {
     print("______________First Postion _____________________");
    
  }

  @override
  printThreed() {
    print("______________First Postion _____________________");
   
  }
 
  
}


