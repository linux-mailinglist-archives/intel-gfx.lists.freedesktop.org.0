Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FB6B779
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 09:46:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5C36E270;
	Wed, 17 Jul 2019 07:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248796E270
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 07:46:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17363464-1500050 
 for multiple; Wed, 17 Jul 2019 08:46:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 08:46:44 +0100
Message-Id: <20190717074644.32724-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove obsolete engine clenaup
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

UmVtb3ZlIHRoZSBvdXRlciBsYXllciBjbGVhbnVwIG9mIGVuZ2luZSBzdHViczsgaXQgbm8gbG9u
Z2VyIHRyaWVzIHRvCnByZWFsbG9jYXRlIGFuZCBzbyBpcyBub3QgcmVzcG9uc2libGUgZm9yIGVp
dGhlciB0aGUgYWxsb2NhdGlvbiBvciBmcmVlLgpCeSB0aGUgdGltZSB3ZSBjYWxsIHRoZSBjbGVh
bnVwIGZ1bmN0aW9uLCB3ZSBhbHJlYWR5IGhhdmUgY2xlYW5lZCB1cCB0aGUKZW5naW5lcy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxNCArLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwppbmRleCA3YzIwOTc0M2U0NzguLmUxZDYyYmEzMDYxMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCkBAIC04NDgsMTUgKzg0OCw2IEBAIHN0YXRpYyBpbnQgaTkxNV93b3JrcXVl
dWVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiAtRU5P
TUVNOwogfQogCi1zdGF0aWMgdm9pZCBpOTE1X2VuZ2luZXNfY2xlYW51cChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKLXsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0J
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0KLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1
LCBpZCkKLQkJa2ZyZWUoZW5naW5lKTsKLX0KLQogc3RhdGljIHZvaWQgaTkxNV93b3JrcXVldWVz
X2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWRlc3Ryb3lf
d29ya3F1ZXVlKGRldl9wcml2LT5ob3RwbHVnLmRwX3dxKTsKQEAgLTkyOCw3ICs5MTksNyBAQCBz
dGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAogCXJldCA9IGk5MTVfd29ya3F1ZXVlc19pbml0KGRldl9wcml2KTsKIAlp
ZiAocmV0IDwgMCkKLQkJZ290byBlcnJfZW5naW5lczsKKwkJcmV0dXJuIHJldDsKIAogCWludGVs
X2d0X2luaXRfZWFybHkoJmRldl9wcml2LT5ndCwgZGV2X3ByaXYpOwogCkBAIC05NjEsOCArOTUy
LDYgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJaTkxNV9nZW1fY2xlYW51cF9lYXJseShkZXZfcHJpdik7CiBl
cnJfd29ya3F1ZXVlczoKIAlpOTE1X3dvcmtxdWV1ZXNfY2xlYW51cChkZXZfcHJpdik7Ci1lcnJf
ZW5naW5lczoKLQlpOTE1X2VuZ2luZXNfY2xlYW51cChkZXZfcHJpdik7CiAJcmV0dXJuIHJldDsK
IH0KIApAQCAtOTc4LDcgKzk2Nyw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX2xhdGVfcmVs
ZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50ZWxfdWNfY2xlYW51
cF9lYXJseSgmZGV2X3ByaXYtPmd0LnVjKTsKIAlpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9w
cml2KTsKIAlpOTE1X3dvcmtxdWV1ZXNfY2xlYW51cChkZXZfcHJpdik7Ci0JaTkxNV9lbmdpbmVz
X2NsZWFudXAoZGV2X3ByaXYpOwogCiAJcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZfcHJpdi0+
c2JfcW9zKTsKIAltdXRleF9kZXN0cm95KCZkZXZfcHJpdi0+c2JfbG9jayk7Ci0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
