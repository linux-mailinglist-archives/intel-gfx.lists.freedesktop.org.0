Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FB394AB0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 18:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A66D6E22B;
	Mon, 19 Aug 2019 16:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295B46E22B
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 16:45:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18192169-1500050 
 for multiple; Mon, 19 Aug 2019 17:45:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 17:44:48 +0100
Message-Id: <20190819164448.22132-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819164448.22132-1-chris@chris-wilson.co.uk>
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Be defensive when starting vma
 activity
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
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgMyArLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmggfCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
YwppbmRleCBhYTFiY2Q5ZmVhYmYuLjhmYzJkNDRjMjBmNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCkBAIC04Nyw4ICs4Nyw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfdm1hICphY3Rp
dmVfdG9fdm1hKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCiBzdGF0aWMgaW50IF9faTkxNV92
bWFfYWN0aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewotCWk5MTVfdm1hX2dldChhY3Rp
dmVfdG9fdm1hKHJlZikpOwotCXJldHVybiAwOworCXJldHVybiBpOTE1X3ZtYV90cnlnZXQoYWN0
aXZlX3RvX3ZtYShyZWYpKSA/IDAgOiAtRU5PRU5UOwogfQogCiBzdGF0aWMgdm9pZCBfX2k5MTVf
dm1hX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5o
CmluZGV4IDkxMGQzNjVkNTU5OS4uODg5ZmM3Y2I5MTBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1h
LmgKQEAgLTIzMSw2ICsyMzEsMTQgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV92bWEgKmk5
MTVfdm1hX2dldChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAlyZXR1cm4gdm1hOwogfQogCitzdGF0
aWMgaW5saW5lIHN0cnVjdCBpOTE1X3ZtYSAqaTkxNV92bWFfdHJ5Z2V0KHN0cnVjdCBpOTE1X3Zt
YSAqdm1hKQoreworCWlmIChsaWtlbHkoa3JlZl9nZXRfdW5sZXNzX3plcm8oJnZtYS0+b2JqLT5i
YXNlLnJlZmNvdW50KSkpCisJCXJldHVybiB2bWE7CisKKwlyZXR1cm4gTlVMTDsKK30KKwogc3Rh
dGljIGlubGluZSB2b2lkIGk5MTVfdm1hX3B1dChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKIAlp
OTE1X2dlbV9vYmplY3RfcHV0KHZtYS0+b2JqKTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
