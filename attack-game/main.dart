import 'User.dart';

void main (){
  // User user1 = new User('lee', 100 , 4, 10, 1);
  // User user2 = new User('ham', 100 , 3, 11, 1);

  List<User> users = [];
  users.add(new User('lee', 1000 , 5, 15, 1));
  users.add(new User('ham', 1000 , 1, 19, 1));

  int player = 0;
  int target = 1;

  //0도 안죽고 1도 안죽고
  while(true){
    int dmg = users[player].attack();
    users[target].getDmg(dmg);
    print('${users[player].name}가 ${users[target].name}에게 '
        '${dmg}의 데미지를 입혔습니다.' '남은체력 ${users[target].hp}');

    if(users[target].isDead()){
      print('${users[player].name}가 이겼습니다.');
      break;
    }
    player = 1 -player;
    target = 1 -target;
  } 

}