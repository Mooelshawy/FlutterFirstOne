import 'dart:ffi';

import 'package:first_one_flutter/oop/attendance.dart';
import 'package:flutter/material.dart';

class CalulateNetSalary {
  var netSalary = 0;

  var salary = 0.0;

  String calulateNetSalary(double salary, String department, String title_work) {
    switch (department) {
      case 'Attendance.aCCOUNTATTENDANCE':
        {
          if (title_work == "AccountManger") {
            netSalary = (salary * 0.20).toInt();
          } else if (title_work == "Accounter") {
            netSalary = (salary * 0.10).toInt();
          }
          break;
        }
      case 'Attendance.hRATTENDANCE':
        {
          if (title_work == "HrManger") {
            netSalary = (salary * 0.30).toInt();
          } else if (title_work == "HrMember") {
            netSalary = (salary * 0.15).toInt();
          }
          break;
        }

      case 'Attendance.iTATTENDANCE':
        {
          if (title_work == "ItManger") {
            netSalary = (salary * 0.50).toInt();
          } else if (title_work == "ItMember") {
            netSalary = (salary * 0.25).toInt();
          }
          break;
        }

      default:
        {
          netSalary = salary.toInt();
        }
    }

    return "Your Net salary is $netSalary";
  }

 String claculateSalary(
      int age, String title_work, String staus, String department) {
    switch (department) {
      case 'Attendance.aCCOUNTATTENDANCE':
        {
          if (title_work == "JuniorAccounter" && staus == "Accpted") {
            switch (age) {
              case 1:
                if (age >= 20 && age <= 25) {
                  salary = 3500 as double;
                } else {
                  print("We are so sorry for you we want frish one on "
                      "your age not accpted for us try with another postion");
                }
            }
          } else if (title_work == "MidLevelAccounter" && staus == "Accpted") {
            switch (age) {
              case 1:
                if (age >= 25 && age <= 30) {
                  salary = 7000 as double;
                } else {
                  print("We are so sorry for you try with another postion ");
                }
            }
          } else {
            print("Emploee not Accpted  Our Company not salary = $salary");
          }
          break;
        }

      case 'Attendance.hRATTENDANCE':
        {
          if (title_work == "HrJunior" && staus == "Accpted") {
            switch (age) {
              case 1:
                if (age >= 20 && age <= 25) {
                  salary = 2500 as double;
                } else {
                  print("We are so sorry for you we want frish one on "
                      "your age not accpted for us try with another postion");
                }
            }
          } else {
            print("Emploee not Accpted  Our Company not salary = $salary");
          }
          break;
        }

      case 'Attendance.iTATTENDANCE':
        {
          if (title_work == "ItJunior" && staus == "Accpted") {
            switch (age) {
              case 1:
                if (age >= 20 && age <= 25) {
                  salary = 6500 as double;
                } else {
                  print("We are so sorry for you we want frish one on "
                      "your age not accpted for us try with another postion");
                }
            }
          } else {
            print("Emploee not Accpted  Our Company not salary = $salary");
          }
          break;
        }
    }
    return "Emploee  Accpted  Our Company  salary = $salary" ;
  }
}
