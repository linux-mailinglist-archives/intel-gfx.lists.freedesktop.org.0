Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBB457481
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 00:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E9D6E54C;
	Wed, 26 Jun 2019 22:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4A36E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 22:42:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17036694-1500050 
 for multiple; Wed, 26 Jun 2019 23:42:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 23:42:12 +0100
Message-Id: <20190626224212.10141-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Make i945gm_vblank_work_func static
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYzozMzgyOjY6IHdhcm5pbmc6IHN5bWJvbCAn
aTk0NWdtX3ZibGFua193b3JrX2Z1bmMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBz
dGF0aWM/CiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5vCmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmM6MzM4Mjo2OiBlcnJvcjogbm8gcHJldmlvdXMgcHJvdG90
eXBlIGZvciDigJhpOTQ1Z21fdmJsYW5rX3dvcmtfZnVuY+KAmSBbLVdlcnJvcj1taXNzaW5nLXBy
b3RvdHlwZXNdCiB2b2lkIGk5NDVnbV92Ymxhbmtfd29ya19mdW5jKHN0cnVjdCB3b3JrX3N0cnVj
dCAqd29yaykKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKaW5kZXggMWI4M2Q2ZTJhZTY5Li43M2YwMzM4ZmFmOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwpAQCAtMzM3OSw3ICszMzc5LDcgQEAgdm9pZCBiZHdfZGlzYWJsZV92Ymxhbmsoc3RydWN0
IGRybV9jcnRjICpjcnRjKQogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5pcnFf
bG9jaywgaXJxZmxhZ3MpOwogfQogCi12b2lkIGk5NDVnbV92Ymxhbmtfd29ya19mdW5jKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yaykKK3N0YXRpYyB2b2lkIGk5NDVnbV92Ymxhbmtfd29ya19mdW5j
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPQogCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUs
IGk5NDVnbV92Ymxhbmsud29yayk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
