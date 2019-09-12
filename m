Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1BB0EDA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909AC6ECFF;
	Thu, 12 Sep 2019 12:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA966ECFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:26:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18463941-1500050 
 for multiple; Thu, 12 Sep 2019 13:26:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 13:26:39 +0100
Message-Id: <20190912122639.25224-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Keep the engine awake while
 we keep for preemption
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

S2VlcCB0aGUgZW5naW5lIGF3YWtlIHRvIGVuc3VyZSB0aGF0IHdlIGRvbid0IGluamVjdCBhbnkg
cG0taWRsZQpyZXF1ZXN0cy4KClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTEwOApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xy
Yy5jIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IGQ3OTExNTg5ODhkNi4uMjZk
MDViZDFiZGM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtODk3
LDYgKzg5NywxMCBAQCBzdGF0aWMgaW50IGxpdmVfc3VwcHJlc3Nfc2VsZl9wcmVlbXB0KHZvaWQg
KmFyZykKIAkJaWYgKCFpbnRlbF9lbmdpbmVfaGFzX3ByZWVtcHRpb24oZW5naW5lKSkKIAkJCWNv
bnRpbnVlOwogCisJCWlmIChpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKSkK
KwkJCWdvdG8gZXJyX3dlZGdlZDsKKworCQlpbnRlbF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7CiAJ
CWVuZ2luZS0+ZXhlY2xpc3RzLnByZWVtcHRfaGFuZy5jb3VudCA9IDA7CiAKIAkJcnFfYSA9IHNw
aW5uZXJfY3JlYXRlX3JlcXVlc3QoJmEuc3BpbiwKQEAgLTkwNCwxMiArOTA4LDE0IEBAIHN0YXRp
YyBpbnQgbGl2ZV9zdXBwcmVzc19zZWxmX3ByZWVtcHQodm9pZCAqYXJnKQogCQkJCQkgICAgICBN
SV9OT09QKTsKIAkJaWYgKElTX0VSUihycV9hKSkgewogCQkJZXJyID0gUFRSX0VSUihycV9hKTsK
KwkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKIAkJCWdvdG8gZXJyX2NsaWVudF9iOwog
CQl9CiAKIAkJaTkxNV9yZXF1ZXN0X2FkZChycV9hKTsKIAkJaWYgKCFpZ3Rfd2FpdF9mb3Jfc3Bp
bm5lcigmYS5zcGluLCBycV9hKSkgewogCQkJcHJfZXJyKCJGaXJzdCBjbGllbnQgZmFpbGVkIHRv
IHN0YXJ0XG4iKTsKKwkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKIAkJCWdvdG8gZXJy
X3dlZGdlZDsKIAkJfQogCkBAIC05MjEsNiArOTI3LDcgQEAgc3RhdGljIGludCBsaXZlX3N1cHBy
ZXNzX3NlbGZfcHJlZW1wdCh2b2lkICphcmcpCiAJCQkJCQkgICAgICBNSV9OT09QKTsKIAkJCWlm
IChJU19FUlIocnFfYikpIHsKIAkJCQllcnIgPSBQVFJfRVJSKHJxX2IpOworCQkJCWludGVsX2Vu
Z2luZV9wbV9wdXQoZW5naW5lKTsKIAkJCQlnb3RvIGVycl9jbGllbnRfYjsKIAkJCX0KIAkJCWk5
MTVfcmVxdWVzdF9hZGQocnFfYik7CkBAIC05MzEsNiArOTM4LDcgQEAgc3RhdGljIGludCBsaXZl
X3N1cHByZXNzX3NlbGZfcHJlZW1wdCh2b2lkICphcmcpCiAKIAkJCWlmICghaWd0X3dhaXRfZm9y
X3NwaW5uZXIoJmIuc3BpbiwgcnFfYikpIHsKIAkJCQlwcl9lcnIoIlNlY29uZCBjbGllbnQgZmFp
bGVkIHRvIHN0YXJ0XG4iKTsKKwkJCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CiAJCQkJ
Z290byBlcnJfd2VkZ2VkOwogCQkJfQogCkBAIC05NDQsMTAgKzk1MiwxMiBAQCBzdGF0aWMgaW50
IGxpdmVfc3VwcHJlc3Nfc2VsZl9wcmVlbXB0KHZvaWQgKmFyZykKIAkJCSAgICAgICBlbmdpbmUt
Pm5hbWUsCiAJCQkgICAgICAgZW5naW5lLT5leGVjbGlzdHMucHJlZW1wdF9oYW5nLmNvdW50LAog
CQkJICAgICAgIGRlcHRoKTsKKwkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKIAkJCWVy
ciA9IC1FSU5WQUw7CiAJCQlnb3RvIGVycl9jbGllbnRfYjsKIAkJfQogCisJCWludGVsX2VuZ2lu
ZV9wbV9wdXQoZW5naW5lKTsKIAkJaWYgKGlndF9mbHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9M
T0NLRUQpKQogCQkJZ290byBlcnJfd2VkZ2VkOwogCX0KLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
