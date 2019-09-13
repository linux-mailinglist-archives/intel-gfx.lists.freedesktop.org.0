Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D0EB22B7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 16:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31246F3DE;
	Fri, 13 Sep 2019 14:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 650E96F3DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 14:56:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18478951-1500050 
 for multiple; Fri, 13 Sep 2019 15:55:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:55:56 +0100
Message-Id: <20190913145556.23912-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Limit ourselves to just rcs0
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9yZSBwcnVuaW5nIGF3YXkgb2YgZmVhdHVyZXMgdW50aWwgd2UgaGF2ZSBhIHN0YWJsZSBzeXN0
ZW0gYW5kIGEgYmFzaXMKZm9yIGRlYnVnZ2luZyB3aGF0J3MgbWlzc2luZy4KCnYyOiBGaXh1cCB2
ZGJveC92ZWJveCBmdXNpbmcKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAg
IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgOCArKysr
KystLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggOTIzNmZjY2IzYTgzLi5lZTlhNzk1OTIwNGMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtNzk5LDYgKzc5OSw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJCUJJ
VChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNTMiks
CiAJLmhhc19yYzYgPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KIAku
aGFzX2xvZ2ljYWxfcmluZ19wcmVlbXB0aW9uID0gZmFsc2UsIC8qIFhYWCBkaXNhYmxlZCBmb3Ig
ZGVidWdnaW5nICovCisJLmVuZ2luZV9tYXNrID0gQklUKFJDUzApLCAvKiBYWFggcmVkdWNlZCBm
b3IgZGVidWdnaW5nICovCiB9OwogCiAjdW5kZWYgR0VOCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYwppbmRleCA1MGIwNWE1ZGU1M2IuLjcyNzA4OWRjZDI4MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC0xMDA0LDggKzEwMDQsMTAg
QEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCQkgICAgICBHRU4xMV9HVF9WRUJPWF9ESVNBQkxFX1NISUZUOwogCiAJ
Zm9yIChpID0gMDsgaSA8IEk5MTVfTUFYX1ZDUzsgaSsrKSB7Ci0JCWlmICghSEFTX0VOR0lORShk
ZXZfcHJpdiwgX1ZDUyhpKSkpCisJCWlmICghSEFTX0VOR0lORShkZXZfcHJpdiwgX1ZDUyhpKSkp
IHsKKwkJCXZkYm94X21hc2sgJj0gfkJJVChpKTsKIAkJCWNvbnRpbnVlOworCQl9CiAKIAkJaWYg
KCEoQklUKGkpICYgdmRib3hfbWFzaykpIHsKIAkJCWluZm8tPmVuZ2luZV9tYXNrICY9IH5CSVQo
X1ZDUyhpKSk7CkBAIC0xMDI2LDggKzEwMjgsMTAgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19p
bml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUdFTV9CVUdfT04o
dmRib3hfbWFzayAhPSBWREJPWF9NQVNLKGRldl9wcml2KSk7CiAKIAlmb3IgKGkgPSAwOyBpIDwg
STkxNV9NQVhfVkVDUzsgaSsrKSB7Ci0JCWlmICghSEFTX0VOR0lORShkZXZfcHJpdiwgX1ZFQ1Mo
aSkpKQorCQlpZiAoIUhBU19FTkdJTkUoZGV2X3ByaXYsIF9WRUNTKGkpKSkgeworCQkJdmVib3hf
bWFzayAmPSB+QklUKGkpOwogCQkJY29udGludWU7CisJCX0KIAogCQlpZiAoIShCSVQoaSkgJiB2
ZWJveF9tYXNrKSkgewogCQkJaW5mby0+ZW5naW5lX21hc2sgJj0gfkJJVChfVkVDUyhpKSk7Ci0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
