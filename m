Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCD18745B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B580F6ED1A;
	Fri,  9 Aug 2019 08:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52CDA6ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:38:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17939426-1500050 
 for multiple; Fri, 09 Aug 2019 09:38:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 09:38:20 +0100
Message-Id: <20190809083820.25472-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Generalise BSD default selection
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

Rm9yIHRoZSBkZWZhdWx0IEk5MTVfRVhFQ19CU0Qgcm91bmQgcm9iaW4gc2VsZWN0b3IsIGl0IG1h
eSBzZWxlY3QgYW55CmF2YWlsYWJsZSBWQ1MgZW5naW5lLiBNYWtlIGl0IHNvLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggN2ZkYjJlYzk0YWZmLi43Nzg0YTMx
NGY1YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYwpAQCAtMjEwMiw2ICsyMTAyLDEzIEBAIHN0YXRpYyBpbnQgZWJfc3VibWl0KHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgKmViKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IG51bV92Y3Nf
ZW5naW5lcyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlCVUlMRF9C
VUdfT04oSTkxNV9NQVhfVkNTID4gOCk7IC8qIHVzaW5nIGh3ZWlnaHQ4KCkgKi8KKwlyZXR1cm4g
aHdlaWdodDgoSU5URUxfSU5GTyhpOTE1KS0+ZW5naW5lX21hc2sgPj4gVkNTMCAmCisJCQkoSTkx
NV9NQVhfVkNTIC0gMSkpOworfQorCiAvKgogICogRmluZCBvbmUgQlNEIHJpbmcgdG8gZGlzcGF0
Y2ggdGhlIGNvcnJlc3BvbmRpbmcgQlNEIGNvbW1hbmQuCiAgKiBUaGUgZW5naW5lIGluZGV4IGlz
IHJldHVybmVkLgpAQCAtMjExNCw3ICsyMTIxLDggQEAgZ2VuOF9kaXNwYXRjaF9ic2RfZW5naW5l
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCS8qIENoZWNrIHdoZXRoZXIg
dGhlIGZpbGVfcHJpdiBoYXMgYWxyZWFkeSBzZWxlY3RlZCBvbmUgcmluZy4gKi8KIAlpZiAoKGlu
dClmaWxlX3ByaXYtPmJzZF9lbmdpbmUgPCAwKQotCQlmaWxlX3ByaXYtPmJzZF9lbmdpbmUgPSBn
ZXRfcmFuZG9tX2ludCgpICYgMTsKKwkJZmlsZV9wcml2LT5ic2RfZW5naW5lID0KKwkJCWdldF9y
YW5kb21faW50KCkgJSBudW1fdmNzX2VuZ2luZXMoZGV2X3ByaXYpOwogCiAJcmV0dXJuIGZpbGVf
cHJpdi0+YnNkX2VuZ2luZTsKIH0KLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
