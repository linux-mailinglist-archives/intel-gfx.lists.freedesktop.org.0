Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8490338619
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57F689C83;
	Fri,  7 Jun 2019 08:26:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76292892BE
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 01:26:03 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2019 01:26:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 09:25:57 +0100
Message-Id: <20190607082557.31670-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
References: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915: Unexport
 i915_gem_init/fini_aliasing_ppgtt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZXNlIHR3
byBhcmUgb25seSB1c2VkIGZyb20gd2l0aGluIGk5MTVfZ2VtX2d0dC5jIGFuZCBjYW4gdHJpdmlh
bGx5IGJlCm1hZGUgc3RhdGljLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8
IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMyAtLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggYzgyZDhlM2FjOWRmLi41NTBjZjRiNjM1ODYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0yODE0LDcgKzI4MTQsNyBAQCBz
dGF0aWMgdm9pZCBpOTE1X2d0dF9jb2xvcl9hZGp1c3QoY29uc3Qgc3RydWN0IGRybV9tbV9ub2Rl
ICpub2RlLAogCQkqZW5kIC09IEk5MTVfR1RUX1BBR0VfU0laRTsKIH0KIAotaW50IGk5MTVfZ2Vt
X2luaXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCitzdGF0
aWMgaW50IGluaXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiB7CiAJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZpOTE1LT5nZ3R0OwogCXN0cnVjdCBpOTE1
X2h3X3BwZ3R0ICpwcGd0dDsKQEAgLTI4NTQsNyArMjg1NCw3IEBAIGludCBpOTE1X2dlbV9pbml0
X2FsaWFzaW5nX3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBl
cnI7CiB9CiAKLXZvaWQgaTkxNV9nZW1fZmluaV9hbGlhc2luZ19wcGd0dChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKK3N0YXRpYyB2b2lkIGZpbmlfYWxpYXNpbmdfcHBndHQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZp
OTE1LT5nZ3R0OwogCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dDsKQEAgLTI5MjQsNyArMjky
NCw3IEBAIGludCBpOTE1X2dlbV9pbml0X2dndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgZ2d0dC0+dm0udG90YWwg
LSBQQUdFX1NJWkUsIFBBR0VfU0laRSk7CiAKIAlpZiAoSU5URUxfUFBHVFQoZGV2X3ByaXYpID09
IElOVEVMX1BQR1RUX0FMSUFTSU5HKSB7Ci0JCXJldCA9IGk5MTVfZ2VtX2luaXRfYWxpYXNpbmdf
cHBndHQoZGV2X3ByaXYpOworCQlyZXQgPSBpbml0X2FsaWFzaW5nX3BwZ3R0KGRldl9wcml2KTsK
IAkJaWYgKHJldCkKIAkJCWdvdG8gZXJyX2FwcGd0dDsKIAl9CkBAIC0yOTUxLDcgKzI5NTEsNyBA
QCB2b2lkIGk5MTVfZ2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAlnZ3R0LT52bS5jbG9zZWQgPSB0cnVlOwogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwotCWk5MTVfZ2VtX2ZpbmlfYWxpYXNpbmdfcHBndHQoZGV2X3By
aXYpOworCWZpbmlfYWxpYXNpbmdfcHBndHQoZGV2X3ByaXYpOwogCiAJbGlzdF9mb3JfZWFjaF9l
bnRyeV9zYWZlKHZtYSwgdm4sICZnZ3R0LT52bS5ib3VuZF9saXN0LCB2bV9saW5rKQogCQlXQVJO
X09OKGk5MTVfdm1hX3VuYmluZCh2bWEpKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgK
aW5kZXggMTUyYTAzNTYwYzIyLi4xMjg1NmY5ZGQxZDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5oCkBAIC02MTcsOSArNjE3LDYgQEAgY29uc3Qgc3RydWN0IGludGVsX3BwYXRfZW50
cnkgKgogaW50ZWxfcHBhdF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU4IHZh
bHVlKTsKIHZvaWQgaW50ZWxfcHBhdF9wdXQoY29uc3Qgc3RydWN0IGludGVsX3BwYXRfZW50cnkg
KmVudHJ5KTsKIAotaW50IGk5MTVfZ2VtX2luaXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOwotdm9pZCBpOTE1X2dlbV9maW5pX2FsaWFzaW5nX3BwZ3R0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKLQogaW50IGk5MTVfZ2d0dF9wcm9iZV9odyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGk5MTVfZ2d0dF9pbml0X2h3
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBpbnQgaTkxNV9nZ3R0X2VuYWJs
ZV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
