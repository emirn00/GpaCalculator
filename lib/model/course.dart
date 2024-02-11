// ignore_for_file: empty_constructor_bodies

class Course{
  final String name ; 
  final double courseValue  ;
  final double credit ;

  Course({required this.name , required this.courseValue , required this.credit}){
  }
  @override
  String toString() {
    return '$name $courseValue $credit' ;
  }
}