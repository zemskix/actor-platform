//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/JavaRandomProvider.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/jvm/JavaRandomProvider.h"
#include "java/math/BigInteger.h"
#include "java/security/SecureRandom.h"

@interface AMJavaRandomProvider () {
 @public
  JavaSecuritySecureRandom *random_;
}

@end

J2OBJC_FIELD_SETTER(AMJavaRandomProvider, random_, JavaSecuritySecureRandom *)

@implementation AMJavaRandomProvider

- (IOSByteArray *)randomBytesWithInt:(jint)length {
  IOSByteArray *res = [IOSByteArray newArrayWithLength:length];
  @synchronized(random_) {
    [((JavaSecuritySecureRandom *) nil_chk(random_)) nextBytesWithByteArray:res];
  }
  return res;
}

- (jint)randomIntWithInt:(jint)maxValue {
  @synchronized(random_) {
    return [((JavaSecuritySecureRandom *) nil_chk(random_)) nextIntWithInt:maxValue];
  }
}

- (void)nextBytesWithByteArray:(IOSByteArray *)data {
  @synchronized(random_) {
    [((JavaSecuritySecureRandom *) nil_chk(random_)) nextBytesWithByteArray:data];
  }
}

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits {
  return new_JavaMathBigInteger_initWithInt_withJavaUtilRandom_(numBits, random_);
}

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits
                                          withInt:(jint)certanity {
  return new_JavaMathBigInteger_initWithInt_withInt_withJavaUtilRandom_(numBits, certanity, random_);
}

- (instancetype)init {
  AMJavaRandomProvider_init(self);
  return self;
}

@end

void AMJavaRandomProvider_init(AMJavaRandomProvider *self) {
  (void) NSObject_init(self);
  self->random_ = new_JavaSecuritySecureRandom_init();
}

AMJavaRandomProvider *new_AMJavaRandomProvider_init() {
  AMJavaRandomProvider *self = [AMJavaRandomProvider alloc];
  AMJavaRandomProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMJavaRandomProvider)
