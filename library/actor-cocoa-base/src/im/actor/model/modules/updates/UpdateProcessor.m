//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/UpdateProcessor.java
//


#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/TypingType.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseAuth.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/api/rpc/ResponseLoadHistory.h"
#include "im/actor/model/api/updates/UpdateChatClear.h"
#include "im/actor/model/api/updates/UpdateChatDelete.h"
#include "im/actor/model/api/updates/UpdateContactRegistered.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/api/updates/UpdateContactsRemoved.h"
#include "im/actor/model/api/updates/UpdateGroupAvatarChanged.h"
#include "im/actor/model/api/updates/UpdateGroupInvite.h"
#include "im/actor/model/api/updates/UpdateGroupMembersUpdate.h"
#include "im/actor/model/api/updates/UpdateGroupOnline.h"
#include "im/actor/model/api/updates/UpdateGroupTitleChanged.h"
#include "im/actor/model/api/updates/UpdateGroupUserAdded.h"
#include "im/actor/model/api/updates/UpdateGroupUserKick.h"
#include "im/actor/model/api/updates/UpdateGroupUserLeave.h"
#include "im/actor/model/api/updates/UpdateMessage.h"
#include "im/actor/model/api/updates/UpdateMessageDelete.h"
#include "im/actor/model/api/updates/UpdateMessageRead.h"
#include "im/actor/model/api/updates/UpdateMessageReadByMe.h"
#include "im/actor/model/api/updates/UpdateMessageReceived.h"
#include "im/actor/model/api/updates/UpdateMessageSent.h"
#include "im/actor/model/api/updates/UpdateParameterChanged.h"
#include "im/actor/model/api/updates/UpdateTyping.h"
#include "im/actor/model/api/updates/UpdateUserAvatarChanged.h"
#include "im/actor/model/api/updates/UpdateUserLastSeen.h"
#include "im/actor/model/api/updates/UpdateUserLocalNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserOffline.h"
#include "im/actor/model/api/updates/UpdateUserOnline.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "im/actor/model/modules/updates/ContactsProcessor.h"
#include "im/actor/model/modules/updates/GroupsProcessor.h"
#include "im/actor/model/modules/updates/MessagesProcessor.h"
#include "im/actor/model/modules/updates/PresenceProcessor.h"
#include "im/actor/model/modules/updates/SettingsProcessor.h"
#include "im/actor/model/modules/updates/TypingProcessor.h"
#include "im/actor/model/modules/updates/UpdateProcessor.h"
#include "im/actor/model/modules/updates/UsersProcessor.h"
#include "im/actor/model/modules/updates/internal/ContactsLoaded.h"
#include "im/actor/model/modules/updates/internal/DialogHistoryLoaded.h"
#include "im/actor/model/modules/updates/internal/GroupCreated.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"
#include "im/actor/model/modules/updates/internal/LoggedIn.h"
#include "im/actor/model/modules/updates/internal/MessagesHistoryLoaded.h"
#include "im/actor/model/modules/updates/internal/UsersFounded.h"
#include "im/actor/model/mvvm/MVVMCollection.h"
#include "im/actor/model/network/parser/Update.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/lang/Integer.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"

@interface ImActorModelModulesUpdatesUpdateProcessor () {
 @public
  ImActorModelModulesUpdatesSettingsProcessor *settingsProcessor_;
  ImActorModelModulesUpdatesUsersProcessor *usersProcessor_;
  ImActorModelModulesUpdatesMessagesProcessor *messagesProcessor_;
  ImActorModelModulesUpdatesGroupsProcessor *groupsProcessor_;
  ImActorModelModulesUpdatesPresenceProcessor *presenceProcessor_;
  ImActorModelModulesUpdatesTypingProcessor *typingProcessor_;
  ImActorModelModulesUpdatesContactsProcessor *contactsProcessor_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, settingsProcessor_, ImActorModelModulesUpdatesSettingsProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, usersProcessor_, ImActorModelModulesUpdatesUsersProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, messagesProcessor_, ImActorModelModulesUpdatesMessagesProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, groupsProcessor_, ImActorModelModulesUpdatesGroupsProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, presenceProcessor_, ImActorModelModulesUpdatesPresenceProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, typingProcessor_, ImActorModelModulesUpdatesTypingProcessor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor, contactsProcessor_, ImActorModelModulesUpdatesContactsProcessor *)

static NSString *ImActorModelModulesUpdatesUpdateProcessor_TAG_ = @"Updates";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUpdatesUpdateProcessor, TAG_, NSString *)

@interface ImActorModelModulesUpdatesUpdateProcessor_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUpdatesInternalUsersFounded *val$founded_;
  JavaUtilArrayList *val$users_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUpdatesInternalUsersFounded:(ImActorModelModulesUpdatesInternalUsersFounded *)capture$0
                                                 withJavaUtilArrayList:(JavaUtilArrayList *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUpdateProcessor_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor_$1, val$founded_, ImActorModelModulesUpdatesInternalUsersFounded *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor_$1, val$users_, JavaUtilArrayList *)

__attribute__((unused)) static void ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(ImActorModelModulesUpdatesUpdateProcessor_$1 *self, ImActorModelModulesUpdatesInternalUsersFounded *capture$0, JavaUtilArrayList *capture$1);

__attribute__((unused)) static ImActorModelModulesUpdatesUpdateProcessor_$1 *new_ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(ImActorModelModulesUpdatesInternalUsersFounded *capture$0, JavaUtilArrayList *capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUpdateProcessor_$1)

@interface ImActorModelModulesUpdatesUpdateProcessor_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUpdatesInternalGroupCreated *val$created_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUpdatesInternalGroupCreated:(ImActorModelModulesUpdatesInternalGroupCreated *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUpdateProcessor_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesUpdateProcessor_$2, val$created_, ImActorModelModulesUpdatesInternalGroupCreated *)

__attribute__((unused)) static void ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(ImActorModelModulesUpdatesUpdateProcessor_$2 *self, ImActorModelModulesUpdatesInternalGroupCreated *capture$0);

__attribute__((unused)) static ImActorModelModulesUpdatesUpdateProcessor_$2 *new_ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(ImActorModelModulesUpdatesInternalGroupCreated *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUpdateProcessor_$2)

@implementation ImActorModelModulesUpdatesUpdateProcessor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesUpdatesUpdateProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

- (void)applyRelatedWithJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)groups
                         withBoolean:(jboolean)force {
  [((ImActorModelModulesUpdatesUsersProcessor *) nil_chk(usersProcessor_)) applyUsersWithJavaUtilCollection:users withBoolean:force];
  [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) applyGroupsWithJavaUtilCollection:groups withBoolean:force];
}

- (void)processInternalUpdateWithImActorModelModulesUpdatesInternalInternalUpdate:(ImActorModelModulesUpdatesInternalInternalUpdate *)update {
  if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalDialogHistoryLoaded class]]) {
    ImActorModelApiRpcResponseLoadDialogs *dialogs = [((ImActorModelModulesUpdatesInternalDialogHistoryLoaded *) nil_chk(((ImActorModelModulesUpdatesInternalDialogHistoryLoaded *) check_class_cast(update, [ImActorModelModulesUpdatesInternalDialogHistoryLoaded class])))) getDialogs];
    [self applyRelatedWithJavaUtilList:[((ImActorModelApiRpcResponseLoadDialogs *) nil_chk(dialogs)) getUsers] withJavaUtilList:[dialogs getGroups] withBoolean:NO];
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onDialogsLoadedWithImActorModelApiRpcResponseLoadDialogs:dialogs];
  }
  else if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalMessagesHistoryLoaded class]]) {
    ImActorModelModulesUpdatesInternalMessagesHistoryLoaded *historyLoaded = (ImActorModelModulesUpdatesInternalMessagesHistoryLoaded *) check_class_cast(update, [ImActorModelModulesUpdatesInternalMessagesHistoryLoaded class]);
    [self applyRelatedWithJavaUtilList:[((ImActorModelApiRpcResponseLoadHistory *) nil_chk([((ImActorModelModulesUpdatesInternalMessagesHistoryLoaded *) nil_chk(historyLoaded)) getLoadHistory])) getUsers] withJavaUtilList:new_JavaUtilArrayList_init() withBoolean:NO];
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessagesLoadedWithAMPeer:[historyLoaded getPeer] withImActorModelApiRpcResponseLoadHistory:[historyLoaded getLoadHistory]];
  }
  else if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalLoggedIn class]]) {
    JavaUtilArrayList *users = new_JavaUtilArrayList_init();
    [users addWithId:[((ImActorModelApiRpcResponseAuth *) nil_chk([((ImActorModelModulesUpdatesInternalLoggedIn *) nil_chk(((ImActorModelModulesUpdatesInternalLoggedIn *) check_class_cast(update, [ImActorModelModulesUpdatesInternalLoggedIn class])))) getAuth])) getUser]];
    [self applyRelatedWithJavaUtilList:users withJavaUtilList:new_JavaUtilArrayList_init() withBoolean:YES];
    [self runOnUiThreadWithJavaLangRunnable:[((ImActorModelModulesUpdatesInternalLoggedIn *) nil_chk(((ImActorModelModulesUpdatesInternalLoggedIn *) check_class_cast(update, [ImActorModelModulesUpdatesInternalLoggedIn class])))) getRunnable]];
  }
  else if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalContactsLoaded class]]) {
    ImActorModelModulesUpdatesInternalContactsLoaded *contactsLoaded = (ImActorModelModulesUpdatesInternalContactsLoaded *) check_class_cast(update, [ImActorModelModulesUpdatesInternalContactsLoaded class]);
    [self applyRelatedWithJavaUtilList:[((ImActorModelApiRpcResponseGetContacts *) nil_chk([((ImActorModelModulesUpdatesInternalContactsLoaded *) nil_chk(contactsLoaded)) getContacts])) getUsers] withJavaUtilList:new_JavaUtilArrayList_init() withBoolean:NO];
    [((DKActorRef *) nil_chk([((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getContactsModule])) getContactSyncActor])) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_ContactsLoaded_initWithImActorModelApiRpcResponseGetContacts_([contactsLoaded getContacts])];
  }
  else if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalUsersFounded class]]) {
    ImActorModelModulesUpdatesInternalUsersFounded *founded = (ImActorModelModulesUpdatesInternalUsersFounded *) check_class_cast(update, [ImActorModelModulesUpdatesInternalUsersFounded class]);
    [self applyRelatedWithJavaUtilList:[((ImActorModelModulesUpdatesInternalUsersFounded *) nil_chk(((ImActorModelModulesUpdatesInternalUsersFounded *) check_class_cast(update, [ImActorModelModulesUpdatesInternalUsersFounded class])))) getUsers] withJavaUtilList:new_JavaUtilArrayList_init() withBoolean:NO];
    JavaUtilArrayList *users = new_JavaUtilArrayList_init();
    for (ImActorModelApiUser * __strong u in nil_chk([((ImActorModelModulesUpdatesInternalUsersFounded *) nil_chk(founded)) getUsers])) {
      [users addWithId:[((AMMVVMCollection *) nil_chk([((ImActorModelModulesUsers *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getUsersModule])) getUsersCollection])) getWithLong:[((ImActorModelApiUser *) nil_chk(u)) getId]]];
    }
    [self runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(founded, users)];
  }
  else if ([update isKindOfClass:[ImActorModelModulesUpdatesInternalGroupCreated class]]) {
    ImActorModelModulesUpdatesInternalGroupCreated *created = (ImActorModelModulesUpdatesInternalGroupCreated *) check_class_cast(update, [ImActorModelModulesUpdatesInternalGroupCreated class]);
    JavaUtilArrayList *groups = new_JavaUtilArrayList_init();
    [groups addWithId:[((ImActorModelModulesUpdatesInternalGroupCreated *) nil_chk(created)) getGroup]];
    [self applyRelatedWithJavaUtilList:new_JavaUtilArrayList_init() withJavaUtilList:groups withBoolean:NO];
    [self runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(created)];
  }
}

- (void)processUpdateWithImActorModelNetworkParserUpdate:(ImActorModelNetworkParserUpdate *)update {
  AMLog_dWithNSString_withNSString_(ImActorModelModulesUpdatesUpdateProcessor_TAG_, JreStrcat("@", update));
  if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserNameChanged class]]) {
    ImActorModelApiUpdatesUpdateUserNameChanged *userNameChanged = (ImActorModelApiUpdatesUpdateUserNameChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserNameChanged class]);
    [((ImActorModelModulesUpdatesUsersProcessor *) nil_chk(usersProcessor_)) onUserNameChangedWithInt:[((ImActorModelApiUpdatesUpdateUserNameChanged *) nil_chk(userNameChanged)) getUid] withNSString:[userNameChanged getName]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserLocalNameChanged class]]) {
    ImActorModelApiUpdatesUpdateUserLocalNameChanged *localNameChanged = (ImActorModelApiUpdatesUpdateUserLocalNameChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserLocalNameChanged class]);
    [((ImActorModelModulesUpdatesUsersProcessor *) nil_chk(usersProcessor_)) onUserLocalNameChangedWithInt:[((ImActorModelApiUpdatesUpdateUserLocalNameChanged *) nil_chk(localNameChanged)) getUid] withNSString:[localNameChanged getLocalName]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserAvatarChanged class]]) {
    ImActorModelApiUpdatesUpdateUserAvatarChanged *avatarChanged = (ImActorModelApiUpdatesUpdateUserAvatarChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserAvatarChanged class]);
    [((ImActorModelModulesUpdatesUsersProcessor *) nil_chk(usersProcessor_)) onUserAvatarChangedWithInt:[((ImActorModelApiUpdatesUpdateUserAvatarChanged *) nil_chk(avatarChanged)) getUid] withImActorModelApiAvatar:[avatarChanged getAvatar]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessage class]]) {
    ImActorModelApiUpdatesUpdateMessage *message = (ImActorModelApiUpdatesUpdateMessage *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessage class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessage *) nil_chk(message)) getPeer] withInt:[message getSenderUid] withLong:[message getDate] withLong:[message getRid] withImActorModelApiMessage:[message getMessage]];
    [((ImActorModelModulesUpdatesTypingProcessor *) nil_chk(typingProcessor_)) onMessageWithImActorModelApiPeer:[message getPeer] withInt:[message getSenderUid]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessageRead class]]) {
    ImActorModelApiUpdatesUpdateMessageRead *messageRead = (ImActorModelApiUpdatesUpdateMessageRead *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessageRead class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageReadWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessageRead *) nil_chk(messageRead)) getPeer] withLong:[messageRead getStartDate] withLong:[messageRead getReadDate]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessageReadByMe class]]) {
    ImActorModelApiUpdatesUpdateMessageReadByMe *messageReadByMe = (ImActorModelApiUpdatesUpdateMessageReadByMe *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessageReadByMe class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageReadByMeWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessageReadByMe *) nil_chk(messageReadByMe)) getPeer] withLong:[messageReadByMe getStartDate]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessageReceived class]]) {
    ImActorModelApiUpdatesUpdateMessageReceived *received = (ImActorModelApiUpdatesUpdateMessageReceived *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessageReceived class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageReceivedWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessageReceived *) nil_chk(received)) getPeer] withLong:[received getStartDate] withLong:[received getReceivedDate]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessageDelete class]]) {
    ImActorModelApiUpdatesUpdateMessageDelete *messageDelete = (ImActorModelApiUpdatesUpdateMessageDelete *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessageDelete class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageDeleteWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessageDelete *) nil_chk(messageDelete)) getPeer] withJavaUtilList:[messageDelete getRids]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessageSent class]]) {
    ImActorModelApiUpdatesUpdateMessageSent *messageSent = (ImActorModelApiUpdatesUpdateMessageSent *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessageSent class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onMessageSentWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateMessageSent *) nil_chk(messageSent)) getPeer] withLong:[messageSent getRid] withLong:[messageSent getDate]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateChatClear class]]) {
    ImActorModelApiUpdatesUpdateChatClear *chatClear = (ImActorModelApiUpdatesUpdateChatClear *) check_class_cast(update, [ImActorModelApiUpdatesUpdateChatClear class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onChatClearWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateChatClear *) nil_chk(chatClear)) getPeer]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateChatDelete class]]) {
    ImActorModelApiUpdatesUpdateChatDelete *chatDelete = (ImActorModelApiUpdatesUpdateChatDelete *) check_class_cast(update, [ImActorModelApiUpdatesUpdateChatDelete class]);
    [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onChatDeleteWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateChatDelete *) nil_chk(chatDelete)) getPeer]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactRegistered class]]) {
    ImActorModelApiUpdatesUpdateContactRegistered *registered = (ImActorModelApiUpdatesUpdateContactRegistered *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactRegistered class]);
    if (![((ImActorModelApiUpdatesUpdateContactRegistered *) nil_chk(registered)) isSilent]) {
      [((ImActorModelModulesUpdatesMessagesProcessor *) nil_chk(messagesProcessor_)) onUserRegisteredWithInt:[registered getUid] withLong:[registered getDate]];
    }
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserOnline class]]) {
    ImActorModelApiUpdatesUpdateUserOnline *userOnline = (ImActorModelApiUpdatesUpdateUserOnline *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserOnline class]);
    [((ImActorModelModulesUpdatesPresenceProcessor *) nil_chk(presenceProcessor_)) onUserOnlineWithInt:[((ImActorModelApiUpdatesUpdateUserOnline *) nil_chk(userOnline)) getUid]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserOffline class]]) {
    ImActorModelApiUpdatesUpdateUserOffline *offline = (ImActorModelApiUpdatesUpdateUserOffline *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserOffline class]);
    [((ImActorModelModulesUpdatesPresenceProcessor *) nil_chk(presenceProcessor_)) onUserOfflineWithInt:[((ImActorModelApiUpdatesUpdateUserOffline *) nil_chk(offline)) getUid]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserLastSeen class]]) {
    ImActorModelApiUpdatesUpdateUserLastSeen *lastSeen = (ImActorModelApiUpdatesUpdateUserLastSeen *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserLastSeen class]);
    [((ImActorModelModulesUpdatesPresenceProcessor *) nil_chk(presenceProcessor_)) onUserLastSeenWithInt:[((ImActorModelApiUpdatesUpdateUserLastSeen *) nil_chk(lastSeen)) getUid] withLong:[lastSeen getDate]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupOnline class]]) {
    ImActorModelApiUpdatesUpdateGroupOnline *groupOnline = (ImActorModelApiUpdatesUpdateGroupOnline *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupOnline class]);
    [((ImActorModelModulesUpdatesPresenceProcessor *) nil_chk(presenceProcessor_)) onGroupOnlineWithInt:[((ImActorModelApiUpdatesUpdateGroupOnline *) nil_chk(groupOnline)) getGroupId] withInt:[groupOnline getCount]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateTyping class]]) {
    ImActorModelApiUpdatesUpdateTyping *typing = (ImActorModelApiUpdatesUpdateTyping *) check_class_cast(update, [ImActorModelApiUpdatesUpdateTyping class]);
    [((ImActorModelModulesUpdatesTypingProcessor *) nil_chk(typingProcessor_)) onTypingWithImActorModelApiPeer:[((ImActorModelApiUpdatesUpdateTyping *) nil_chk(typing)) getPeer] withInt:[typing getUid] withImActorModelApiTypingTypeEnum:[typing getTypingType]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupTitleChanged class]]) {
    ImActorModelApiUpdatesUpdateGroupTitleChanged *titleChanged = (ImActorModelApiUpdatesUpdateGroupTitleChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupTitleChanged class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onTitleChangedWithInt:[((ImActorModelApiUpdatesUpdateGroupTitleChanged *) nil_chk(titleChanged)) getGroupId] withLong:[titleChanged getRid] withInt:[titleChanged getUid] withNSString:[titleChanged getTitle] withLong:[titleChanged getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupAvatarChanged class]]) {
    ImActorModelApiUpdatesUpdateGroupAvatarChanged *avatarChanged = (ImActorModelApiUpdatesUpdateGroupAvatarChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupAvatarChanged class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onAvatarChangedWithInt:[((ImActorModelApiUpdatesUpdateGroupAvatarChanged *) nil_chk(avatarChanged)) getGroupId] withLong:[avatarChanged getRid] withInt:[avatarChanged getUid] withAMAvatar:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([avatarChanged getAvatar]) withLong:[avatarChanged getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupInvite class]]) {
    ImActorModelApiUpdatesUpdateGroupInvite *groupInvite = (ImActorModelApiUpdatesUpdateGroupInvite *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupInvite class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onGroupInviteWithInt:[((ImActorModelApiUpdatesUpdateGroupInvite *) nil_chk(groupInvite)) getGroupId] withLong:[groupInvite getRid] withInt:[groupInvite getInviteUid] withLong:[groupInvite getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserLeave class]]) {
    ImActorModelApiUpdatesUpdateGroupUserLeave *leave = (ImActorModelApiUpdatesUpdateGroupUserLeave *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserLeave class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onUserLeaveWithInt:[((ImActorModelApiUpdatesUpdateGroupUserLeave *) nil_chk(leave)) getGroupId] withLong:[leave getRid] withInt:[leave getUid] withLong:[leave getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserKick class]]) {
    ImActorModelApiUpdatesUpdateGroupUserKick *userKick = (ImActorModelApiUpdatesUpdateGroupUserKick *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserKick class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onUserKickedWithInt:[((ImActorModelApiUpdatesUpdateGroupUserKick *) nil_chk(userKick)) getGroupId] withLong:[userKick getRid] withInt:[userKick getUid] withInt:[userKick getKickerUid] withLong:[userKick getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserAdded class]]) {
    ImActorModelApiUpdatesUpdateGroupUserAdded *userAdded = (ImActorModelApiUpdatesUpdateGroupUserAdded *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserAdded class]);
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onUserAddedWithInt:[((ImActorModelApiUpdatesUpdateGroupUserAdded *) nil_chk(userAdded)) getGroupId] withLong:[userAdded getRid] withInt:[userAdded getUid] withInt:[userAdded getInviterUid] withLong:[userAdded getDate] withBoolean:NO];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactsAdded class]]) {
    ImActorModelApiUpdatesUpdateContactsAdded *contactsAdded = (ImActorModelApiUpdatesUpdateContactsAdded *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactsAdded class]);
    IOSIntArray *res = [IOSIntArray newArrayWithLength:[((id<JavaUtilList>) nil_chk([((ImActorModelApiUpdatesUpdateContactsAdded *) nil_chk(contactsAdded)) getUids])) size]];
    for (jint i = 0; i < res->size_; i++) {
      *IOSIntArray_GetRef(res, i) = [((JavaLangInteger *) nil_chk([((id<JavaUtilList>) nil_chk([contactsAdded getUids])) getWithInt:i])) intValue];
    }
    [((ImActorModelModulesUpdatesContactsProcessor *) nil_chk(contactsProcessor_)) onContactsAddedWithIntArray:res];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactsRemoved class]]) {
    ImActorModelApiUpdatesUpdateContactsRemoved *contactsRemoved = (ImActorModelApiUpdatesUpdateContactsRemoved *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactsRemoved class]);
    IOSIntArray *res = [IOSIntArray newArrayWithLength:[((id<JavaUtilList>) nil_chk([((ImActorModelApiUpdatesUpdateContactsRemoved *) nil_chk(contactsRemoved)) getUids])) size]];
    for (jint i = 0; i < res->size_; i++) {
      *IOSIntArray_GetRef(res, i) = [((JavaLangInteger *) nil_chk([((id<JavaUtilList>) nil_chk([contactsRemoved getUids])) getWithInt:i])) intValue];
    }
    [((ImActorModelModulesUpdatesContactsProcessor *) nil_chk(contactsProcessor_)) onContactsRemovedWithIntArray:res];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupMembersUpdate class]]) {
    [((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) onMembersUpdatedWithInt:[((ImActorModelApiUpdatesUpdateGroupMembersUpdate *) nil_chk(((ImActorModelApiUpdatesUpdateGroupMembersUpdate *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupMembersUpdate class])))) getGroupId] withJavaUtilList:[((ImActorModelApiUpdatesUpdateGroupMembersUpdate *) nil_chk(((ImActorModelApiUpdatesUpdateGroupMembersUpdate *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupMembersUpdate class])))) getMembers]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateParameterChanged class]]) {
    [((ImActorModelModulesUpdatesSettingsProcessor *) nil_chk(settingsProcessor_)) onSettingsChangedWithNSString:[((ImActorModelApiUpdatesUpdateParameterChanged *) nil_chk(((ImActorModelApiUpdatesUpdateParameterChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateParameterChanged class])))) getKey] withNSString:[((ImActorModelApiUpdatesUpdateParameterChanged *) nil_chk(((ImActorModelApiUpdatesUpdateParameterChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateParameterChanged class])))) getValue]];
  }
}

- (jboolean)isCausesInvalidationWithImActorModelNetworkParserUpdate:(ImActorModelNetworkParserUpdate *)update {
  JavaUtilHashSet *users = new_JavaUtilHashSet_init();
  JavaUtilHashSet *groups = new_JavaUtilHashSet_init();
  if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateMessage class]]) {
    ImActorModelApiUpdatesUpdateMessage *updateMessage = (ImActorModelApiUpdatesUpdateMessage *) check_class_cast(update, [ImActorModelApiUpdatesUpdateMessage class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateMessage *) nil_chk(updateMessage)) getSenderUid])];
    if ([((ImActorModelApiPeer *) nil_chk([updateMessage getPeer])) getType] == ImActorModelApiPeerTypeEnum_get_GROUP()) {
      [groups addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiPeer *) nil_chk([updateMessage getPeer])) getId])];
    }
    if ([((ImActorModelApiPeer *) nil_chk([updateMessage getPeer])) getType] == ImActorModelApiPeerTypeEnum_get_PRIVATE()) {
      [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiPeer *) nil_chk([updateMessage getPeer])) getId])];
    }
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactRegistered class]]) {
    ImActorModelApiUpdatesUpdateContactRegistered *contactRegistered = (ImActorModelApiUpdatesUpdateContactRegistered *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactRegistered class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateContactRegistered *) nil_chk(contactRegistered)) getUid])];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupInvite class]]) {
    ImActorModelApiUpdatesUpdateGroupInvite *groupInvite = (ImActorModelApiUpdatesUpdateGroupInvite *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupInvite class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateGroupInvite *) nil_chk(groupInvite)) getInviteUid])];
    [groups addWithId:JavaLangInteger_valueOfWithInt_([groupInvite getGroupId])];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserAdded class]]) {
    ImActorModelApiUpdatesUpdateGroupUserAdded *added = (ImActorModelApiUpdatesUpdateGroupUserAdded *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserAdded class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateGroupUserAdded *) nil_chk(added)) getInviterUid])];
    [users addWithId:JavaLangInteger_valueOfWithInt_([added getUid])];
    [groups addWithId:JavaLangInteger_valueOfWithInt_([added getGroupId])];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserKick class]]) {
    ImActorModelApiUpdatesUpdateGroupUserKick *kick = (ImActorModelApiUpdatesUpdateGroupUserKick *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserKick class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateGroupUserKick *) nil_chk(kick)) getKickerUid])];
    [users addWithId:JavaLangInteger_valueOfWithInt_([kick getUid])];
    [groups addWithId:JavaLangInteger_valueOfWithInt_([kick getGroupId])];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateGroupUserLeave class]]) {
    ImActorModelApiUpdatesUpdateGroupUserLeave *leave = (ImActorModelApiUpdatesUpdateGroupUserLeave *) check_class_cast(update, [ImActorModelApiUpdatesUpdateGroupUserLeave class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateGroupUserLeave *) nil_chk(leave)) getUid])];
    [groups addWithId:JavaLangInteger_valueOfWithInt_([leave getGroupId])];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactsAdded class]]) {
    [users addAllWithJavaUtilCollection:[((ImActorModelApiUpdatesUpdateContactsAdded *) nil_chk(((ImActorModelApiUpdatesUpdateContactsAdded *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactsAdded class])))) getUids]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateContactsRemoved class]]) {
    [users addAllWithJavaUtilCollection:[((ImActorModelApiUpdatesUpdateContactsRemoved *) nil_chk(((ImActorModelApiUpdatesUpdateContactsRemoved *) check_class_cast(update, [ImActorModelApiUpdatesUpdateContactsRemoved class])))) getUids]];
  }
  else if ([update isKindOfClass:[ImActorModelApiUpdatesUpdateUserLocalNameChanged class]]) {
    ImActorModelApiUpdatesUpdateUserLocalNameChanged *localNameChanged = (ImActorModelApiUpdatesUpdateUserLocalNameChanged *) check_class_cast(update, [ImActorModelApiUpdatesUpdateUserLocalNameChanged class]);
    [users addWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiUpdatesUpdateUserLocalNameChanged *) nil_chk(localNameChanged)) getUid])];
  }
  if (![((ImActorModelModulesUpdatesUsersProcessor *) nil_chk(usersProcessor_)) hasUsersWithJavaUtilCollection:users]) {
    return YES;
  }
  if (![((ImActorModelModulesUpdatesGroupsProcessor *) nil_chk(groupsProcessor_)) hasGroupsWithJavaUtilCollection:groups]) {
    return YES;
  }
  return NO;
}

@end

void ImActorModelModulesUpdatesUpdateProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesUpdateProcessor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->settingsProcessor_ = new_ImActorModelModulesUpdatesSettingsProcessor_initWithImActorModelModulesModules_(modules);
  self->usersProcessor_ = new_ImActorModelModulesUpdatesUsersProcessor_initWithImActorModelModulesModules_(modules);
  self->messagesProcessor_ = new_ImActorModelModulesUpdatesMessagesProcessor_initWithImActorModelModulesModules_(modules);
  self->groupsProcessor_ = new_ImActorModelModulesUpdatesGroupsProcessor_initWithImActorModelModulesModules_(modules);
  self->presenceProcessor_ = new_ImActorModelModulesUpdatesPresenceProcessor_initWithImActorModelModulesModules_(modules);
  self->typingProcessor_ = new_ImActorModelModulesUpdatesTypingProcessor_initWithImActorModelModulesModules_(modules);
  self->contactsProcessor_ = new_ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(modules);
}

ImActorModelModulesUpdatesUpdateProcessor *new_ImActorModelModulesUpdatesUpdateProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesUpdatesUpdateProcessor *self = [ImActorModelModulesUpdatesUpdateProcessor alloc];
  ImActorModelModulesUpdatesUpdateProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesUpdateProcessor)

@implementation ImActorModelModulesUpdatesUpdateProcessor_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk([((ImActorModelModulesUpdatesInternalUsersFounded *) nil_chk(val$founded_)) getCommandCallback])) onResultWithId:[val$users_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(val$users_)) size] type:AMUserVM_class_()]]];
}

- (instancetype)initWithImActorModelModulesUpdatesInternalUsersFounded:(ImActorModelModulesUpdatesInternalUsersFounded *)capture$0
                                                 withJavaUtilArrayList:(JavaUtilArrayList *)capture$1 {
  ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(self, capture$0, capture$1);
  return self;
}

@end

void ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(ImActorModelModulesUpdatesUpdateProcessor_$1 *self, ImActorModelModulesUpdatesInternalUsersFounded *capture$0, JavaUtilArrayList *capture$1) {
  self->val$founded_ = capture$0;
  self->val$users_ = capture$1;
  (void) NSObject_init(self);
}

ImActorModelModulesUpdatesUpdateProcessor_$1 *new_ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(ImActorModelModulesUpdatesInternalUsersFounded *capture$0, JavaUtilArrayList *capture$1) {
  ImActorModelModulesUpdatesUpdateProcessor_$1 *self = [ImActorModelModulesUpdatesUpdateProcessor_$1 alloc];
  ImActorModelModulesUpdatesUpdateProcessor_$1_initWithImActorModelModulesUpdatesInternalUsersFounded_withJavaUtilArrayList_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesUpdateProcessor_$1)

@implementation ImActorModelModulesUpdatesUpdateProcessor_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk([((ImActorModelModulesUpdatesInternalGroupCreated *) nil_chk(val$created_)) getCallback])) onResultWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelApiGroup *) nil_chk([val$created_ getGroup])) getId])];
}

- (instancetype)initWithImActorModelModulesUpdatesInternalGroupCreated:(ImActorModelModulesUpdatesInternalGroupCreated *)capture$0 {
  ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(self, capture$0);
  return self;
}

@end

void ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(ImActorModelModulesUpdatesUpdateProcessor_$2 *self, ImActorModelModulesUpdatesInternalGroupCreated *capture$0) {
  self->val$created_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUpdatesUpdateProcessor_$2 *new_ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(ImActorModelModulesUpdatesInternalGroupCreated *capture$0) {
  ImActorModelModulesUpdatesUpdateProcessor_$2 *self = [ImActorModelModulesUpdatesUpdateProcessor_$2 alloc];
  ImActorModelModulesUpdatesUpdateProcessor_$2_initWithImActorModelModulesUpdatesInternalGroupCreated_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesUpdateProcessor_$2)
