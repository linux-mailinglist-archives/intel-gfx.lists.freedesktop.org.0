Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56385C0A64
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828186E171;
	Fri, 27 Sep 2019 17:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377D66E171
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:34:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="189508315"
Received: from rgdowlin-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.171])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 10:34:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 18:33:49 +0100
Message-Id: <20190927173409.31175-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927173409.31175-1-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/22] drm/i915: simplify i915_gem_init_early
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aTkxNV9nZW1faW5pdF9lYXJseSBkb2Vzbid0IG5lZWQgdG8gcmV0dXJuIGFueXRoaW5nLgoKU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCA1ICstLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8
IDQgKy0tLQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggYTllZTczYjYxZjRkLi45MWFhZTU2YjQyODAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtNTg5LDkgKzU4OSw3IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCiAJaW50ZWxfZ3RfaW5pdF9lYXJseSgmZGV2X3ByaXYtPmd0LCBkZXZfcHJpdik7CiAKLQly
ZXQgPSBpOTE1X2dlbV9pbml0X2Vhcmx5KGRldl9wcml2KTsKLQlpZiAocmV0IDwgMCkKLQkJZ290
byBlcnJfZ3Q7CisJaTkxNV9nZW1faW5pdF9lYXJseShkZXZfcHJpdik7CiAKIAkvKiBUaGlzIG11
c3QgYmUgY2FsbGVkIGJlZm9yZSBhbnkgY2FsbHMgdG8gSEFTX1BDSF8qICovCiAJaW50ZWxfZGV0
ZWN0X3BjaChkZXZfcHJpdik7CkBAIC02MTMsNyArNjExLDYgQEAgc3RhdGljIGludCBpOTE1X2Ry
aXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIGVy
cl9nZW06CiAJaTkxNV9nZW1fY2xlYW51cF9lYXJseShkZXZfcHJpdik7Ci1lcnJfZ3Q6CiAJaW50
ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFzZSgmZGV2X3ByaXYtPmd0KTsKIAl2bHZfZnJlZV9zMGl4
X3N0YXRlKGRldl9wcml2KTsKIGVycl93b3JrcXVldWVzOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggYjNjN2RiYzE4MzJhLi4wZGM1MDRmYzZmZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtMjI1MCw3ICsyMjUwLDcgQEAgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIGludCBpOTE1X2dlbV9pbml0X3VzZXJwdHIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaTkxNV9nZW1fY2xlYW51cF91
c2VycHRyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2Vt
X3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKLWludCBpOTE1X2dlbV9p
bml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGk5MTVf
Z2VtX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQg
aTkxNV9nZW1fY2xlYW51cF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
OwogaW50IGk5MTVfZ2VtX2ZyZWV6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
OwogaW50IGk5MTVfZ2VtX2ZyZWV6ZV9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBlMjg5N2E2NjYyMjUuLjNkM2ZkYTRj
YWU5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xNTMzLDcgKzE1MzMsNyBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV9pbml0X19tbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAlpOTE1X2dlbV9pbml0X19vYmplY3RzKGk5MTUpOwogfQogCi1pbnQgaTkxNV9nZW1faW5pdF9l
YXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit2b2lkIGk5MTVfZ2VtX2lu
aXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWludCBlcnI7
CiAKQEAgLTE1NDUsOCArMTU0NSw2IEBAIGludCBpOTE1X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAllcnIgPSBpOTE1X2dlbWZzX2luaXQoZGV2X3By
aXYpOwogCWlmIChlcnIpCiAJCURSTV9OT1RFKCJVbmFibGUgdG8gY3JlYXRlIGEgcHJpdmF0ZSB0
bXBmcyBtb3VudCwgaHVnZXBhZ2Ugc3VwcG9ydCB3aWxsIGJlIGRpc2FibGVkKCVkKS5cbiIsIGVy
cik7Ci0KLQlyZXR1cm4gMDsKIH0KIAogdm9pZCBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
