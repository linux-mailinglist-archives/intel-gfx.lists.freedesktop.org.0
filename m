Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF47A48D0
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Sep 2019 13:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B028946E;
	Sun,  1 Sep 2019 11:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869A18946E
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Sep 2019 11:04:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18334715-1500050 
 for multiple; Sun, 01 Sep 2019 12:04:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Sep 2019 12:04:31 +0100
Message-Id: <20190901110431.12393-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Remove unused
 __engines_name()
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

VGhpcyBmdW5jdGlvbiB3YXMgbmV2ZXIgdXNlZCBhbmQgcHJvYmFibHkgd2lsbCBuZXZlciBiZSB1
c2VkLCBzbyByZW1vdmUKaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29udGV4dC5jIHwgMTUgLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAwMGNkNDBjZjU0YjQuLjlhYzQyN2VkMTc5MSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9jb250ZXh0LmMKQEAgLTE1MjgsMjEgKzE1MjgsNiBAQCBzdGF0aWMgaW50IGlndF92bV9pc29s
YXRpb24odm9pZCAqYXJnKQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBfX21heWJlX3VudXNl
ZCBjb25zdCBjaGFyICoKLV9fZW5naW5lX25hbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lcykKLXsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7Ci0JaW50ZWxfZW5naW5lX21hc2tfdCB0bXA7Ci0KLQlpZiAoZW5naW5lcyA9
PSBBTExfRU5HSU5FUykKLQkJcmV0dXJuICJhbGwiOwotCi0JZm9yX2VhY2hfZW5naW5lX21hc2tl
ZChlbmdpbmUsIGk5MTUsIGVuZ2luZXMsIHRtcCkKLQkJcmV0dXJuIGVuZ2luZS0+bmFtZTsKLQot
CXJldHVybiAibm9uZSI7Ci19Ci0KIHN0YXRpYyBib29sIHNraXBfdW51c2VkX2VuZ2luZXMoc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKQogewogCXJldHVybiAhY2UtPnN0YXRl
OwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
