Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543B96159B
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 18:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C8989A94;
	Sun,  7 Jul 2019 16:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2485389A94
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 16:53:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17162276-1500050 
 for multiple; Sun, 07 Jul 2019 17:53:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jul 2019 17:52:59 +0100
Message-Id: <20190707165259.2025-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix assert_forcewake_active
 consideration of timer
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

VGhlIHRpbWVyIHdpbGwga2VlcCBydW5uaW5nIHVudGlsIHRoZXJlIGFyZSBubyBhY3RpdmUgdXNl
cnMgb2YgdGhlCmZ3X2RvbWFpbjsgdW50aWwgaXQgY29tcGxldGVzLCB0aGUgd2FrZV9jb3VudCB3
aWxsIGJlIHJhaXNlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KTGFzdCBnbywgaG9uZXN0LgotQ2hyaXMKLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VuY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKaW5k
ZXggNWYwMzY3ZmQzMjAwLi5lMTM1MzlmZWRkNTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3VuY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vu
Y29yZS5jCkBAIC03NjQsNyArNzY0LDcgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUo
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogCQl1bnNpZ25lZCBpbnQgYWN0dWFsID0gUkVB
RF9PTkNFKGRvbWFpbi0+d2FrZV9jb3VudCk7CiAJCXVuc2lnbmVkIGludCBleHBlY3QgPSAxOwog
Ci0JCWlmIChocnRpbWVyX2FjdGl2ZSgmZG9tYWluLT50aW1lcikgJiYgUkVBRF9PTkNFKGRvbWFp
bi0+YWN0aXZlKSkKKwkJaWYgKGhydGltZXJfYWN0aXZlKCZkb21haW4tPnRpbWVyKSkKIAkJCWV4
cGVjdCsrOyAvKiBwZW5kaW5nIGF1dG9tYXRpYyByZWxlYXNlICovCiAKIAkJaWYgKFdBUk4oYWN0
dWFsIDwgZXhwZWN0LAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
