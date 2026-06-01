import 'package:flutter_callkit_incoming/entities/android_params.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';

/// Event name constants for external reference
abstract class CallEventConstants {
  static const String actionDidUpdateDevicePushTokenVoip = 'com.hiennv.flutter_callkit_incoming.DID_UPDATE_DEVICE_PUSH_TOKEN_VOIP';
  static const String actionCallIncoming = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_INCOMING';
  static const String actionCallStart = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_START';
  static const String actionCallAccept = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_ACCEPT';
  static const String actionCallDecline = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_DECLINE';
  static const String actionCallEnded = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_ENDED';
  static const String actionCallTimeout = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TIMEOUT';
  static const String actionCallConnected = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_CONNECTED';
  static const String actionCallCallback = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_CALLBACK';
  static const String actionCallToggleHold = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TOGGLE_HOLD';
  static const String actionCallToggleMute = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TOGGLE_MUTE';
  static const String actionCallToggleDmtf = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TOGGLE_DMTF';
  static const String actionCallToggleGroup = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TOGGLE_GROUP';
  static const String actionCallToggleAudioSession = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_TOGGLE_AUDIO_SESSION';
  static const String actionCallCustom = 'com.hiennv.flutter_callkit_incoming.ACTION_CALL_CUSTOM';
}

/// Base sealed class for CallEvent
sealed class CallEvent {
  CallEvent(this.callKitParams);

  String get eventName;

  CallKitParams? callKitParams;
}

class CallEventActionDidUpdateDevicePushTokenVoip extends CallEvent {
  CallEventActionDidUpdateDevicePushTokenVoip() : super(null);

  @override
  String get eventName => CallEventConstants.actionDidUpdateDevicePushTokenVoip;

  @override
  String toString() => 'CallEventActionDidUpdateDevicePushTokenVoip()';
}

class CallEventActionCallIncoming extends CallEvent {
  CallEventActionCallIncoming(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallIncoming;

  @override
  String toString() => 'CallEventActionCallIncoming(callKitParams: $callKitParams)';
}

class CallEventActionCallStart extends CallEvent {
  CallEventActionCallStart(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallStart;

  @override
  String toString() => 'CallEventActionCallStart(id: ${callKitParams!.id})';
}

class CallEventActionCallAccept extends CallEvent {
  CallEventActionCallAccept(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallAccept;

  @override
  String toString() => 'CallEventActionCallAccept(id: ${callKitParams!.id})';
}

class CallEventActionCallDecline extends CallEvent {
  CallEventActionCallDecline(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallDecline;

  @override
  String toString() => 'CallEventActionCallDecline(id: ${callKitParams!.id})';
}

class CallEventActionCallEnded extends CallEvent {
  CallEventActionCallEnded(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallEnded;

  @override
  String toString() => 'CallEventActionCallEnded(id: ${callKitParams!.id})';
}

class CallEventActionCallTimeout extends CallEvent {
  CallEventActionCallTimeout(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallTimeout;

  @override
  String toString() => 'CallEventActionCallTimeout(id: ${callKitParams!.id})';
}

class CallEventActionCallConnected extends CallEvent {
  CallEventActionCallConnected(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallConnected;

  @override
  String toString() => 'CallEventActionCallConnected(id: ${callKitParams!.id})';
}

class CallEventActionCallCallback extends CallEvent {
  CallEventActionCallCallback(super.callKitParams);

  @override
  String get eventName => CallEventConstants.actionCallCallback;

  @override
  String toString() => 'CallEventActionCallCallback(id: ${callKitParams!.id})';
}

class CallEventActionCallToggleHold extends CallEvent {
  CallEventActionCallToggleHold(this.id, this.isOnHold) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallToggleHold;

  final String id;
  final bool isOnHold;

  @override
  String toString() => 'CallEventActionCallToggleHold(id: $id, isOnHold: $isOnHold)';
}

class CallEventActionCallToggleMute extends CallEvent {
  CallEventActionCallToggleMute(this.id, this.isMuted) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallToggleMute;

  final String id;
  final bool isMuted;

  @override
  String toString() => 'CallEventActionCallToggleMute(id: $id, isMuted: $isMuted)';
}

class CallEventActionCallToggleDmtf extends CallEvent {
  CallEventActionCallToggleDmtf(this.id, this.digits, this.type) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallToggleDmtf;

  final String id;
  final String digits;
  final DTMFActionType type;

  @override
  String toString() => 'CallEventActionCallToggleDmtf(id: $id, digits: $digits, type: $type)';
}

class CallEventActionCallToggleGroup extends CallEvent {
  CallEventActionCallToggleGroup(this.id, this.callUUIDToGroupWith) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallToggleGroup;

  final String id;
  final String? callUUIDToGroupWith;

  @override
  String toString() => 'CallEventActionCallToggleGroup(id: $id,'
      ' callUUIDToGroupWith: $callUUIDToGroupWith)';
}

class CallEventActionCallToggleAudioSession extends CallEvent {
  CallEventActionCallToggleAudioSession(this.isActive) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallToggleAudioSession;

  final bool isActive;

  @override
  String toString() => 'CallEventActionCallToggleAudioSession(isActive: $isActive)';
}

class CallEventActionCallCustom extends CallEvent {
  CallEventActionCallCustom(this.body) : super(null);

  @override
  String get eventName => CallEventConstants.actionCallCustom;

  final Map<String, dynamic> body;

  @override
  String toString() => 'CallEventActionCallCustom(body: $body)';
}
