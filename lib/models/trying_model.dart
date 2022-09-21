class TryingModel {
  String _f_name;

  String get f_name => _f_name;

  set f_name(String f_name) {
    _f_name = f_name;
  }

//----------------------------------------
  String _l_name;

  String get l_name => _l_name;

  set l_name(String l_name) {
    _l_name = l_name;
  }
//----------------------------------------

  int _age;

  int get age => _age;

  set age(int age) {
    _age = age;
  }
//----------------------------------------

  String _title_work;

  String get title_work => _title_work;

  set title_work(String title_work) {
    _title_work = title_work;
  }
//----------------------------------------

  double _salary;

  double get salary => _salary;

  set salary(double salary) {
    _salary = salary;
  }
//----------------------------------------

  String _department;

  String get department => _department;

  set department(String department) {
    _department = department;
  }
//----------------------------------------

  double _time_in;

  double get time_in => _time_in;

  set time_in(double time_in) {
    _time_in = time_in;
  }
//----------------------------------------

String _id ;

  String get id => _id;

  set id(String id) {
    _id = id;
  }
//----------------------------------------

//parimatize constractor 
TryingModel(this._f_name, this._l_name, this._age, this._title_work,
      this._department, this._salary, this._time_in , this._id);

    
  
}
