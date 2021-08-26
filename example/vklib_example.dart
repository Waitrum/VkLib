import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '%token');

  var lp = GroupLongPoll(vk.api);

  lp.on(GroupLongPollEventsEnum.MessageNew, (event) async {
    print('${event.object['message']['from_id']}:'
        ' ${event.object['message']['text']}');
  });

  lp.start();
}
