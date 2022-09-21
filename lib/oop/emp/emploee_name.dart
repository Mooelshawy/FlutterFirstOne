class EmploeeName {



  String emploeeFullname(String id) {
    Map<String, dynamic> empFullName = {
      "1": {"FirstEmp1": "lastEmp1"},
      "2": {"FirstEmp2": "lastEmp2"},
      "3": {"FirstEmp3": "lastEmp3"},
      "4": {"FirstEmp4": "lastEmp4"},
      "5": {"FirstEmp5": "lastEmp5"},
      "6": {"FirstEmp6": "lastEmp6"},
      "7": {"FirstEmp7": "lastEmp7"},
      "8": {"FirstEmp8": "lastEmp8"},
      "9": {"FirstEmp9": "lastEmp9"},
      "10": {"FirstEmp10": "lastEmp10"},
    };

    var result = empFullName.keys.firstWhere(($id) => empFullName[$id] == '$id',
        orElse: () => 'User Not Found');

    return result;
  }
}
