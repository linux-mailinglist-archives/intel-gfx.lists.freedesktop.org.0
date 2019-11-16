Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF18FF477
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 18:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 446186E192;
	Sat, 16 Nov 2019 17:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5237A6E130
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 17:51:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19226420-1500050 
 for multiple; Sat, 16 Nov 2019 17:51:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 16 Nov 2019 17:51:31 +0000
Message-Id: <20191116175139.1790440-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
References: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Wait until the intel_wakeref
 idle callback is complete
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

V2hlbiB3YWl0aW5nIGZvciBpZGxlLCBzZXJpYWxpc2Ugd2l0aCBhbnkgb25nb2luZyBjYWxsYmFj
ayBzbyB0aGF0IGl0CndpbGwgaGF2ZSBjb21wbGV0ZWQgYmVmb3JlIGNvbXBsZXRpbmcgdGhlIHdh
aXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMgfCAxOCArKysrKysr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwppbmRleCA4MDg0Y2RlZDYyZGIu
LjEyNDFlM2EzYzAyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2Fr
ZXJlZi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwpAQCAtOTgs
MTAgKzk4LDI0IEBAIHZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVsX3dha2Vy
ZWYgKndmLAogCUlOSVRfV09SSygmd2YtPndvcmssIF9faW50ZWxfd2FrZXJlZl9wdXRfd29yayk7
CiB9CiAKK3N0YXRpYyBib29sIGlzX2lkbGVfd2FpdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
Cit7CisJYm9vbCByZXN1bHQ7CisKKwlpZiAoaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUod2YpKQor
CQlyZXR1cm4gZmFsc2U7CisKKwkvKiBzZXJpYWxpc2Ugd2l0aCB0aGUgd2YtPnB1dCgpIGNhbGxi
YWNrOyB3YWl0IHVudGlsIGZpbmlzaGVkICovCisJbXV0ZXhfbG9jaygmd2YtPm11dGV4KTsKKwly
ZXN1bHQgPSAhaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUod2YpOworCW11dGV4X3VubG9jaygmd2Yt
Pm11dGV4KTsKKworCXJldHVybiByZXN1bHQ7Cit9CisKIGludCBpbnRlbF93YWtlcmVmX3dhaXRf
Zm9yX2lkbGUoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogewotCXJldHVybiB3YWl0X3Zhcl9l
dmVudF9raWxsYWJsZSgmd2YtPndha2VyZWYsCi0JCQkJICAgICAgICFpbnRlbF93YWtlcmVmX2lz
X2FjdGl2ZSh3ZikpOworCXJldHVybiB3YWl0X3Zhcl9ldmVudF9raWxsYWJsZSgmd2YtPndha2Vy
ZWYsIGlzX2lkbGVfd2FpdCh3ZikpOwogfQogCiBzdGF0aWMgdm9pZCB3YWtlcmVmX2F1dG9fdGlt
ZW91dChzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
