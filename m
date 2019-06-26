Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367ED56AFC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF3A6E442;
	Wed, 26 Jun 2019 13:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EF46E43F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:44:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17031768-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:44:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 14:44:31 +0100
Message-Id: <20190626134433.6318-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/selftests: Serialise nop reset with
 retirement
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

SW4gb3JkZXIgZm9yIHRoZSByZXNldCBjb3VudCB0byBiZSBhY2N1cmF0ZSBhY3Jvc3Mgb3VyIHNl
bGZ0ZXN0LCB3ZSBuZWVkCnRvIHByZXZlbnQgdGhlIGJhY2tncm91bmQgcmV0aXJlIHdvcmtlciBm
cm9tIG1vZGlmeWluZyBvdXIgZXhwZWN0ZWQKc3RhdGUuIFRvIHByZXNlcnZlIHRoZSBpbnRlbnQg
b2Ygc3ltbWV0cnksIHdlIGFwcGx5IHRoaXMgdG8gYm90aAppOTE1X3Jlc2V0IGFuZCBpOTE1X3Jl
c2V0X2VuZ2luZSwgZXZlbiB0aG91Z2ggaXQgc3RyaWN0bHkgb25seSBhZmZlY3RzCmk5MTVfcmVz
ZXRfZW5naW5lIGN1cnJlbnRseS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9w
cGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfaGFuZ2NoZWNrLmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3RfaGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9o
YW5nY2hlY2suYwppbmRleCAzY2ViMzk3Yzg2NDUuLjBlMGI2YzU3MmFlOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKQEAgLTM5OCw2ICszOTgsNyBA
QCBzdGF0aWMgaW50IGlndF9yZXNldF9ub3Aodm9pZCAqYXJnKQogCWNvdW50ID0gMDsKIAlkbyB7
CiAJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCiAJCWZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIGk5MTUsIGlkKSB7CiAJCQlpbnQgaTsKIApAQCAtNDEzLDExICs0MTQsMTIg
QEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wKHZvaWQgKmFyZykKIAkJCQlpOTE1X3JlcXVlc3Rf
YWRkKHJxKTsKIAkJCX0KIAkJfQotCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwogCiAJCWlndF9nbG9iYWxfcmVzZXRfbG9jayhpOTE1KTsKIAkJaTkxNV9yZXNldChpOTE1
LCBBTExfRU5HSU5FUywgTlVMTCk7CiAJCWlndF9nbG9iYWxfcmVzZXRfdW5sb2NrKGk5MTUpOwor
CisJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJCWlmIChpOTE1X3Jl
c2V0X2ZhaWxlZChpOTE1KSkgewogCQkJZXJyID0gLUVJTzsKIAkJCWJyZWFrOwpAQCAtNTExLDkg
KzUxMyw4IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcF9lbmdpbmUodm9pZCAqYXJnKQogCiAJ
CQkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CiAJCQl9Ci0JCQltdXRleF91bmxvY2soJmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpOwotCiAJCQllcnIgPSBpOTE1X3Jlc2V0X2VuZ2luZShlbmdpbmUsIE5V
TEwpOworCQkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAkJCWlmIChl
cnIpIHsKIAkJCQlwcl9lcnIoImk5MTVfcmVzZXRfZW5naW5lIGZhaWxlZFxuIik7CiAJCQkJYnJl
YWs7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
