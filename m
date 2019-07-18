Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCAA6D085
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C286E3EF;
	Thu, 18 Jul 2019 14:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846646E3EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:54:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17402281-1500050 
 for multiple; Thu, 18 Jul 2019 15:54:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 15:54:05 +0100
Message-Id: <20190718145407.21352-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718145407.21352-1-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Use maximum write flush for
 pwrite_gtt
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcmVjZW50bHkgZGlzb3ZlcmVkIGJ5IGZvcmNpbmcgYmlnLWNvcmUgKCFsbGMpIG1hY2hpbmVz
IHRvIHVzZSB0aGUgR1RUCnBhdGhzLCB3ZSBuZWVkIG91ciBmdWxsIEdUVCB3cml0ZSBmbHVzaCBi
ZWZvcmUgbWFuaXB1bGF0aW5nIHRoZSBHVFQgUFRFCm9yIGVsc2UgdGhlIHdyaXRlcyBtYXkgYmUg
ZGlyZWN0ZWQgdG8gdGhlIHdyb25nIHBhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFt
LmF1bGRAZ21haWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBmZWQwYmM0
MjFhNTUuLmM2YmEzNTBlNmU0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC02MTAsNyAr
NjEwLDggQEAgaTkxNV9nZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCiAJCXVuc2lnbmVkIGludCBwYWdlX2xlbmd0aCA9IFBBR0VfU0laRSAtIHBhZ2Vf
b2Zmc2V0OwogCQlwYWdlX2xlbmd0aCA9IHJlbWFpbiA8IHBhZ2VfbGVuZ3RoID8gcmVtYWluIDog
cGFnZV9sZW5ndGg7CiAJCWlmIChub2RlLmFsbG9jYXRlZCkgewotCQkJd21iKCk7IC8qIGZsdXNo
IHRoZSB3cml0ZSBiZWZvcmUgd2UgbW9kaWZ5IHRoZSBHR1RUICovCisJCQkvKiBmbHVzaCB0aGUg
d3JpdGUgYmVmb3JlIHdlIG1vZGlmeSB0aGUgR0dUVCAqLworCQkJaW50ZWxfZ3RfZmx1c2hfZ2d0
dF93cml0ZXMoZ2d0dC0+dm0uZ3QpOwogCQkJZ2d0dC0+dm0uaW5zZXJ0X3BhZ2UoJmdndHQtPnZt
LAogCQkJCQkgICAgIGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBvZmZzZXQg
Pj4gUEFHRV9TSElGVCksCiAJCQkJCSAgICAgbm9kZS5zdGFydCwgSTkxNV9DQUNIRV9OT05FLCAw
KTsKQEAgLTYzOSw4ICs2NDAsOCBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrX2ZlbmNlKG9i
aiwgZmVuY2UpOwogb3V0X3VucGluOgogCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOworCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKIAlpZiAobm9k
ZS5hbGxvY2F0ZWQpIHsKLQkJd21iKCk7CiAJCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52
bSwgbm9kZS5zdGFydCwgbm9kZS5zaXplKTsKIAkJcmVtb3ZlX21hcHBhYmxlX25vZGUoJm5vZGUp
OwogCX0gZWxzZSB7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
