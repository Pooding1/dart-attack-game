import 'dart:math';

class box{

}

int getNum(int min, int max){
  //랜덤 변수선언을 해서 dmg가 확률적으로 min과 max가 나오게함
  Random random = new Random();
  return min + random.nextInt(max-min);
}

class Unit {
  int xp = 0;

  void getXp(int _xp){
    xp = xp + _xp;
  }
}

abstract class AttackType {
  //absteact의 특징은 기능을 정의하지 않음.
  void Kick();
  void Punch();
}



//플레이어
// 클래스 정의
//name hp mindmg maxdmg def
class User extends Unit{
  String name;
  int hp;
  int mindmg;
  int maxdmg;
  int def;
  int xp;

  User({required this.name, required this.hp, required this.mindmg,
    required this.maxdmg, required this.def, required this.xp});

  //method 기능 funtion
  //죽었는가?

  // bool isDead(){ 코드가 긺
  //   if(hp <= 0) return true;
  //   else return false;
  // }

  bool isDead() => hp <= 0 ? true:false;

  //공격기능 = 공격 데미지 얻기
  int attack() {
    //경험치 얻기
    //내가 물려받은 Unit의 경헙치 얻기 기능
    super.getXp(10); //super.xp에 증가 되어있음
    xp = super.xp;

    return getNum(mindmg, maxdmg);
  }

  //맞기기능
  void getDmg(int dmg){
    //데미지에서 방어력만큼 차감 10뎀지 -2방어 = 8뎀
    //dmg = dmg - def
    dmg -= def;
    if (dmg < 0) dmg = 0;
    hp -= dmg;

    void kick(){

    }

    void punch(){

    }

    //재정의
    // @override
    // void hello() {
    //   super.hello();
    // }

  }

}