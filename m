Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3916EDFEBC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 09:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C536E422;
	Tue, 22 Oct 2019 07:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA476E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 07:52:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18920613-1500050 
 for multiple; Tue, 22 Oct 2019 08:51:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 08:51:51 +0100
Message-Id: <20191022075151.5781-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191022075151.5781-1-chris@chris-wilson.co.uk>
References: <20191022075151.5781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Defer mocs setup until after
 the initial context is loaded
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

T24gbXkga2JsIGd0NGUsIHRoZXJlIGlzIGEgZGlzdGluY3Rpb24gYmV0d2VlbiB0aGUgcG93ZXIg
Y29udGV4dCBhbmQgdGhlCm5vcm1hbCBjb250ZXh0cy4gV2UgbXVzdCBkZWxheSB0aGUgbW9jcyBz
ZXR1cCB1bnRpbCBhZnRlciB3ZSBoYXZlIHByaW1lZAp0aGUga2VybmVsIGNvbnRleHQgdG8gcmVj
b3JkIHRoZSBtb2NzIHJlZ2lzdGVyIHNldHRpbmdzIHdpdGhpbiB0aGUKY29udGV4dCBpbWFnZS4K
CkZpeGVzOiBlY2EwYjcyMDg5NjkgKCJkcm0vaTkxNTogRG8gaW5pdGlhbCBtb2NzIGNvbmZpZ3Vy
YXRpb24gZGlyZWN0bHkiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFByYXRoYXAgS3VtYXIgVmFsc2FuIDxwcmF0aGFwLmt1bWFyLnZh
bHNhbkBpbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgNiAr
KysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgfCAzIC0tLQogMiBm
aWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXggMDZlNzNkNTZjZmNmLi4wZjliZTU3MjJjMjQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAtMTIsNiArMTIsNyBAQAog
I2luY2x1ZGUgImludGVsX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRl
ICJpbnRlbF9ndF9yZXF1ZXN0cy5oIgorI2luY2x1ZGUgImludGVsX21vY3MuaCIKICNpbmNsdWRl
ICJpbnRlbF9wbS5oIgogI2luY2x1ZGUgImludGVsX3JjNi5oIgogI2luY2x1ZGUgImludGVsX3dh
a2VyZWYuaCIKQEAgLTE4MiwxMyArMTgzLDE2IEBAIGludCBpbnRlbF9ndF9yZXN1bWUoc3RydWN0
IGludGVsX2d0ICpndCkKIAkJZW5naW5lLT5zZXJpYWwrKzsgLyoga2VybmVsIGNvbnRleHQgbG9z
dCAqLwogCQllcnIgPSBlbmdpbmUtPnJlc3VtZShlbmdpbmUpOwogCi0JCWludGVsX2VuZ2luZV9w
bV9wdXQoZW5naW5lKTsKKwkJaW50ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOyAvKiBwcmltZXMg
a2VybmVsIGNvbnRleHQgKi8KIAkJaWYgKGVycikgewogCQkJZGV2X2VycihndC0+aTkxNS0+ZHJt
LmRldiwKIAkJCQkiRmFpbGVkIHRvIHJlc3RhcnQgJXMgKCVkKVxuIiwKIAkJCQllbmdpbmUtPm5h
bWUsIGVycik7CiAJCQlicmVhazsKIAkJfQorCQlpbnRlbF9lbmdpbmVfZmx1c2hfc3VibWlzc2lv
bihlbmdpbmUpOworCisJCWludGVsX21vY3NfaW5pdF9lbmdpbmUoZW5naW5lKTsKIAl9CiAKIAlp
bnRlbF9yYzZfZW5hYmxlKCZndC0+cmM2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
aW5kZXggZjlmM2U5ODViYjc5Li41M2VlMzg5NDUzZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCkBAIC0xNDMsNyArMTQzLDYgQEAKICNpbmNsdWRlICJpbnRlbF9ndC5oIgogI2lu
Y2x1ZGUgImludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfbHJjX3JlZy5oIgotI2luY2x1
ZGUgImludGVsX21vY3MuaCIKICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgogI2luY2x1ZGUgImlu
dGVsX3dvcmthcm91bmRzLmgiCiAKQEAgLTI2MzksOCArMjYzOCw2IEBAIHN0YXRpYyBpbnQgZXhl
Y2xpc3RzX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaW50ZWxfZW5n
aW5lX2FwcGx5X3dvcmthcm91bmRzKGVuZ2luZSk7CiAJaW50ZWxfZW5naW5lX2FwcGx5X3doaXRl
bGlzdChlbmdpbmUpOwogCi0JaW50ZWxfbW9jc19pbml0X2VuZ2luZShlbmdpbmUpOwotCiAJaW50
ZWxfZW5naW5lX3Jlc2V0X2JyZWFkY3J1bWJzKGVuZ2luZSk7CiAKIAlpZiAoR0VNX1NIT1dfREVC
VUcoKSAmJiB1bmV4cGVjdGVkX3N0YXJ0aW5nX3N0YXRlKGVuZ2luZSkpIHsKLS0gCjIuMjQuMC5y
YzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
