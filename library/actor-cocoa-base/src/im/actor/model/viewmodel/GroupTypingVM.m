//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/GroupTypingVM.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/GroupTypingVM.h"

@interface AMGroupTypingVM () {
 @public
  jint gid_;
  AMValueModel *active_;
}

@end

J2OBJC_FIELD_SETTER(AMGroupTypingVM, active_, AMValueModel *)

@implementation AMGroupTypingVM

- (instancetype)initWithInt:(jint)gid {
  AMGroupTypingVM_initWithInt_(self, gid);
  return self;
}

- (jint)getGid {
  return gid_;
}

- (AMValueModel *)getActive {
  return active_;
}

@end

void AMGroupTypingVM_initWithInt_(AMGroupTypingVM *self, jint gid) {
  (void) NSObject_init(self);
  self->gid_ = gid;
  self->active_ = new_AMValueModel_initWithNSString_withId_(JreStrcat("$I$", @"groups.", gid, @".typing"), [IOSIntArray newArrayWithLength:0]);
}

AMGroupTypingVM *new_AMGroupTypingVM_initWithInt_(jint gid) {
  AMGroupTypingVM *self = [AMGroupTypingVM alloc];
  AMGroupTypingVM_initWithInt_(self, gid);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupTypingVM)
