Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B02E010D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DA86E4EC;
	Tue, 22 Oct 2019 09:47:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E481F6E4D0
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235374"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:19 +0100
Message-Id: <20191022094726.3001-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Pass intel_gt to
 intel_engines_init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkVuZ2luZXMg
YmVsb25nIHRvIHRoZSBHVCBzbyBtYWtlIGl0IGluZGljYXRpdmUgaW4gdGhlIEFQSS4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggICAgfCAgMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAxMCArKysrKy0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICB8ICAyICstCiAzIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IGE5NDdiYmI2MGEyMi4uYzJkOWQ2N2M2M2Q5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApAQCAtMzI2LDcgKzMyNiw3IEBAIF9f
aW50ZWxfcmluZ19zcGFjZSh1bnNpZ25lZCBpbnQgaGVhZCwgdW5zaWduZWQgaW50IHRhaWwsIHVu
c2lnbmVkIGludCBzaXplKQogCiBpbnQgaW50ZWxfZW5naW5lc19pbml0X21taW8oc3RydWN0IGlu
dGVsX2d0ICpndCk7CiBpbnQgaW50ZWxfZW5naW5lc19zZXR1cChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KTsKLWludCBpbnRlbF9lbmdpbmVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
OworaW50IGludGVsX2VuZ2luZXNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIHZvaWQgaW50
ZWxfZW5naW5lc19jbGVhbnVwKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiBpbnQgaW50ZWxfZW5n
aW5lX2luaXRfY29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IGFmNjRmOTA3OWIwZi4uMGUy
MDcxMzYwM2VjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpA
QCAtNDUxLDIzICs0NTEsMjMgQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdF9tbWlvKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpCiAKIC8qKgogICogaW50ZWxfZW5naW5lc19pbml0KCkgLSBpbml0IHRoZSBF
bmdpbmUgQ29tbWFuZCBTdHJlYW1lcnMKLSAqIEBpOTE1OiBpOTE1IGRldmljZSBwcml2YXRlCisg
KiBAZ3Q6IHBvaW50ZXIgdG8gc3RydWN0IGludGVsX2d0CiAgKgogICogUmV0dXJuOiBub24temVy
byBpZiB0aGUgaW5pdGlhbGl6YXRpb24gZmFpbGVkLgogICovCi1pbnQgaW50ZWxfZW5naW5lc19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoraW50IGludGVsX2VuZ2luZXNfaW5p
dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogCWludCAoKmluaXQpKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSk7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWVudW0g
aW50ZWxfZW5naW5lX2lkIGlkOwogCWludCBlcnI7CiAKLQlpZiAoSEFTX0VYRUNMSVNUUyhpOTE1
KSkKKwlpZiAoSEFTX0VYRUNMSVNUUyhndC0+aTkxNSkpCiAJCWluaXQgPSBpbnRlbF9leGVjbGlz
dHNfc3VibWlzc2lvbl9pbml0OwogCWVsc2UKIAkJaW5pdCA9IGludGVsX3Jpbmdfc3VibWlzc2lv
bl9pbml0OwogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKKwlmb3JfZWFj
aF9lbmdpbmUoZW5naW5lLCBndCwgaWQpIHsKIAkJZXJyID0gaW5pdChlbmdpbmUpOwogCQlpZiAo
ZXJyKQogCQkJZ290byBjbGVhbnVwOwpAQCAtNDc2LDcgKzQ3Niw3IEBAIGludCBpbnRlbF9lbmdp
bmVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIDA7CiAKIGNs
ZWFudXA6Ci0JaW50ZWxfZW5naW5lc19jbGVhbnVwKCZpOTE1LT5ndCk7CisJaW50ZWxfZW5naW5l
c19jbGVhbnVwKGd0KTsKIAlyZXR1cm4gZXJyOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpp
bmRleCAyZGZmNzE2NTYxZTcuLmMwMjhlYjdlNTZiMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CkBAIC0xMjY0LDcgKzEyNjQsNyBAQCBpbnQgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWdvdG8gZXJyX3NjcmF0Y2g7CiAJfQogCi0JcmV0ID0gaW50
ZWxfZW5naW5lc19pbml0KGRldl9wcml2KTsKKwlyZXQgPSBpbnRlbF9lbmdpbmVzX2luaXQoJmRl
dl9wcml2LT5ndCk7CiAJaWYgKHJldCkgewogCQlHRU1fQlVHX09OKHJldCA9PSAtRUlPKTsKIAkJ
Z290byBlcnJfY29udGV4dDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
