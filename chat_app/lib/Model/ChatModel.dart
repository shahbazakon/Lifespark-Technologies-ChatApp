class ChatModel{
  String name="";
  String icon="";
  String time="";
  String currentMessage="";
  String availablePlace = "";
  int id = 0;
  ChatModel(
    {
      required this.name, 
      required this.icon, 
      required this.time, 
      required this.currentMessage,
      required this.availablePlace,
      required this.id
    }
  );
}