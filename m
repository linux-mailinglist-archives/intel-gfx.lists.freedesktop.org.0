Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E72595BF9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 12:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E11096E605;
	Tue, 20 Aug 2019 10:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8B96E605
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:05:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18199735-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 11:05:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 11:05:31 +0100
Message-Id: <20190820100531.8430-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Be defensive when starting vma activity
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

QmVmb3JlIHdlIGFjcXVpcmUgdGhlIHZtYSBmb3IgR1BVIGFjdGl2aXR5LCBlbnN1cmUgdGhhdCB0
aGUgdW5kZXJseWluZwpvYmplY3QgaXMgbm90IGFscmVhZHkgaW4gdGhlIHByb2Nlc3Mgb2YgYmVp
bmcgZnJlZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgMyArLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmggfCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRl
eCA3M2IwMjIzNGFmZmUuLjc5ZjlkMWZiNzYxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBA
IC04Nyw4ICs4Nyw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfdm1hICphY3RpdmVfdG9f
dm1hKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCiBzdGF0aWMgaW50IF9faTkxNV92bWFfYWN0
aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewotCWk5MTVfdm1hX2dldChhY3RpdmVfdG9f
dm1hKHJlZikpOwotCXJldHVybiAwOworCXJldHVybiBpOTE1X3ZtYV90cnlnZXQoYWN0aXZlX3Rv
X3ZtYShyZWYpKSA/IDAgOiAtRU5PRU5UOwogfQogCiBzdGF0aWMgdm9pZCBfX2k5MTVfdm1hX3Jl
dGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oCmluZGV4
IGJhMWM2YTc0ZTY0YS4uOWU3ZDhmNDE1NGIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgKQEAg
LTIzMSw2ICsyMzEsMTQgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV92bWEgKmk5MTVfdm1h
X2dldChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAlyZXR1cm4gdm1hOwogfQogCitzdGF0aWMgaW5s
aW5lIHN0cnVjdCBpOTE1X3ZtYSAqaTkxNV92bWFfdHJ5Z2V0KHN0cnVjdCBpOTE1X3ZtYSAqdm1h
KQoreworCWlmIChsaWtlbHkoa3JlZl9nZXRfdW5sZXNzX3plcm8oJnZtYS0+b2JqLT5iYXNlLnJl
ZmNvdW50KSkpCisJCXJldHVybiB2bWE7CisKKwlyZXR1cm4gTlVMTDsKK30KKwogc3RhdGljIGlu
bGluZSB2b2lkIGk5MTVfdm1hX3B1dChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKIAlpOTE1X2dl
bV9vYmplY3RfcHV0KHZtYS0+b2JqKTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
