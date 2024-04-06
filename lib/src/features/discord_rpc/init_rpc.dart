import 'package:discord_rpc/discord_rpc.dart';

int ?startTimeStamp;
DiscordRPC rpc = DiscordRPC(
    applicationId: '1226161049665933363',
    );
class UpdateRPCstatus {
  void main() {
    DiscordRPC.initialize();
    rpc.start(autoRegister: true); 
    startTimeStamp = DateTime.now().millisecondsSinceEpoch;
    updateRPC('Browsing', 'Idle');
  }

  void updateRPC(String details, String state) {
    rpc.updatePresence(
      DiscordPresence(
        details: details,
        state: state,
        startTimeStamp: startTimeStamp,
        largeImageKey: 'sorayomi_icon',
        largeImageText: 'Tachidesk Sorayomi',
      ),
    );
  }
}