Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F41D955C3E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 01:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600046E162;
	Tue, 25 Jun 2019 23:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 938C66E162
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 23:25:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17024335-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:25:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 00:25:16 +0100
Message-Id: <20190625232516.28358-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Always call kref_init for the timeline
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

QWx3YXlzIGluaXRpYWxpc2UgdGhlIHJlZmNvdW50LCBldmVuIGZvciB0aGUgZW1iZWRkZWQgdGlt
ZWxpbmVzIGluc2lkZQptb2NrIGRldmljZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRl
eCA0NzgyNTgyNzQ5ODYuLmM5YWJjNWM4YzgzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCkBAIC0yMjAsOCArMjIwLDExIEBAIGludCBpbnRlbF90aW1lbGluZV9p
bml0KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxpbmUsCiAJICovCiAJQlVJTERfQlVHX09O
KEtTWU5DTUFQIDwgSTkxNV9OVU1fRU5HSU5FUyk7CiAKKwlrcmVmX2luaXQoJnRpbWVsaW5lLT5r
cmVmKTsKKwogCXRpbWVsaW5lLT5ndCA9IGd0OwogCXRpbWVsaW5lLT5waW5fY291bnQgPSAwOwor
CiAJdGltZWxpbmUtPmhhc19pbml0aWFsX2JyZWFkY3J1bWIgPSAhaHdzcDsKIAl0aW1lbGluZS0+
aHdzcF9jYWNoZWxpbmUgPSBOVUxMOwogCkBAIC0zNjcsOCArMzcwLDYgQEAgaW50ZWxfdGltZWxp
bmVfY3JlYXRlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBpOTE1X3ZtYSAqZ2xvYmFsX2h3
c3ApCiAJCXJldHVybiBFUlJfUFRSKGVycik7CiAJfQogCi0Ja3JlZl9pbml0KCZ0aW1lbGluZS0+
a3JlZik7Ci0KIAlyZXR1cm4gdGltZWxpbmU7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
