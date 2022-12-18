void main(){
  var p1 = person('Keetaya', 'Aunchokdee', 21);
  var p2 =person('Somteek', 'Aunchokdee', 24);
  print(p1.fristname);

}
class person{
  final String fristname;
  final String lastname;
  final int age;
  person(this.fristname, this.lastname, this.age){



  }
}