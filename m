Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E3D55C62
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 01:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A3A6E162;
	Tue, 25 Jun 2019 23:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65076E162
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 23:33:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17024362-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:33:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 00:33:49 +0100
Message-Id: <20190625233349.32371-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625233349.32371-1-chris@chris-wilson.co.uk>
References: <20190625233349.32371-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Always call kref_init for the
 timeline
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
eCAzYmJiNjMyY2I1MzUuLjZkYWE5ZWI1OWUxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCkBAIC0yMTAsOCArMjEwLDExIEBAIGludCBpbnRlbF90aW1lbGluZV9p
bml0KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxpbmUsCiB7CiAJdm9pZCAqdmFkZHI7CiAK
KwlrcmVmX2luaXQoJnRpbWVsaW5lLT5rcmVmKTsKKwogCXRpbWVsaW5lLT5ndCA9IGd0OwogCXRp
bWVsaW5lLT5waW5fY291bnQgPSAwOworCiAJdGltZWxpbmUtPmhhc19pbml0aWFsX2JyZWFkY3J1
bWIgPSAhaHdzcDsKIAl0aW1lbGluZS0+aHdzcF9jYWNoZWxpbmUgPSBOVUxMOwogCkBAIC0zNTcs
OCArMzYwLDYgQEAgaW50ZWxfdGltZWxpbmVfY3JlYXRlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0
cnVjdCBpOTE1X3ZtYSAqZ2xvYmFsX2h3c3ApCiAJCXJldHVybiBFUlJfUFRSKGVycik7CiAJfQog
Ci0Ja3JlZl9pbml0KCZ0aW1lbGluZS0+a3JlZik7Ci0KIAlyZXR1cm4gdGltZWxpbmU7CiB9CiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
