Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4D44B9D9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BAA6E315;
	Wed, 19 Jun 2019 13:25:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13EB089DD8
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:25:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:25:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153806544"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 06:25:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 14:24:45 +0100
Message-Id: <20190619132459.25351-20-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/33] drm/i915: Compartmentalize
 i915_ggtt_init_hw
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkhhdmluZyBt
YWRlIHN0YXJ0IHRvIGJldHRlciBjb2RlIGNvbXBhcnRtZW50YWxpemF0aW9uIGJ5IGludHJvZHVj
aW5nCnN0cnVjdCBpbnRlbF9ndCwgY29udGludWUgdGhlIHRoZW1lIGVsc2V3aGVyZSBpbiBjb2Rl
IGJ5IG1ha2luZyBmdW5jdGlvbnMKdGFrZSBwYXJhbWV0ZXJzIHRha2Ugd2hhdCBsb2dpY2FsbHkg
bWFrZXMgbW9zdCBzZW5zZSBmb3IgdGhlbSBpbnN0ZWFkIG9mCnRoZSBnbG9iYWwgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCA2
NCArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQyIGluc2Vy
dGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
aW5kZXggYjM0ZmVkODE2YTk4Li4xNDU0NWM3YTMwMzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCkBAIC0zNTYwLDQ1ICszNTYwLDY1IEBAIGludCBpOTE1X2dndHRfcHJvYmVfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIDA7CiB9CiAKLS8qKgotICog
aTkxNV9nZ3R0X2luaXRfaHcgLSBJbml0aWFsaXplIEdHVFQgaGFyZHdhcmUKLSAqIEBkZXZfcHJp
djogaTkxNSBkZXZpY2UKLSAqLwotaW50IGk5MTVfZ2d0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmZGV2X3ByaXYt
PmdndHQ7Ci0JaW50IHJldDsKKwlnZ3R0LT52bS5jbGVhbnVwKCZnZ3R0LT52bSk7Cit9CiAKLQlz
dGFzaF9pbml0KCZkZXZfcHJpdi0+bW0ud2Nfc3Rhc2gpOworc3RhdGljIGludCBnZ3R0X2luaXRf
aHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGdndHQtPnZtLmk5MTU7CisJaW50IHJldCA9IDA7CisKKwltdXRleF9sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKIAotCS8qIE5vdGUgdGhhdCB3ZSB1c2UgcGFnZSBjb2xvdXJp
bmcgdG8gZW5mb3JjZSBhIGd1YXJkIHBhZ2UgYXQgdGhlCi0JICogZW5kIG9mIHRoZSBhZGRyZXNz
IHNwYWNlLiBUaGlzIGlzIHJlcXVpcmVkIGFzIHRoZSBDUyBtYXkgcHJlZmV0Y2gKLQkgKiBiZXlv
bmQgdGhlIGVuZCBvZiB0aGUgYmF0Y2ggYnVmZmVyLCBhY3Jvc3MgdGhlIHBhZ2UgYm91bmRhcnks
Ci0JICogYW5kIGJleW9uZCB0aGUgZW5kIG9mIHRoZSBHVFQgaWYgd2UgZG8gbm90IHByb3ZpZGUg
YSBndWFyZC4KLQkgKi8KLQltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7
CiAJaTkxNV9hZGRyZXNzX3NwYWNlX2luaXQoJmdndHQtPnZtLCBWTV9DTEFTU19HR1RUKTsKIAog
CWdndHQtPnZtLmlzX2dndHQgPSB0cnVlOwogCiAJLyogT25seSBWTFYgc3VwcG9ydHMgcmVhZC1v
bmx5IEdHVFQgbWFwcGluZ3MgKi8KLQlnZ3R0LT52bS5oYXNfcmVhZF9vbmx5ID0gSVNfVkFMTEVZ
VklFVyhkZXZfcHJpdik7CisJZ2d0dC0+dm0uaGFzX3JlYWRfb25seSA9IElTX1ZBTExFWVZJRVco
aTkxNSk7CiAKLQlpZiAoIUhBU19MTEMoZGV2X3ByaXYpICYmICFIQVNfUFBHVFQoZGV2X3ByaXYp
KQorCWlmICghSEFTX0xMQyhpOTE1KSAmJiAhSEFTX1BQR1RUKGk5MTUpKQogCQlnZ3R0LT52bS5t
bS5jb2xvcl9hZGp1c3QgPSBpOTE1X2d0dF9jb2xvcl9hZGp1c3Q7Ci0JbXV0ZXhfdW5sb2NrKCZk
ZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLQlpZiAoIWlvX21hcHBpbmdfaW5pdF93Yygm
ZGV2X3ByaXYtPmdndHQuaW9tYXAsCi0JCQkJZGV2X3ByaXYtPmdndHQuZ21hZHIuc3RhcnQsCi0J
CQkJZGV2X3ByaXYtPmdndHQubWFwcGFibGVfZW5kKSkgeworCWlmICghaW9fbWFwcGluZ19pbml0
X3djKCZnZ3R0LT5pb21hcCwKKwkJCQlnZ3R0LT5nbWFkci5zdGFydCwKKwkJCQlnZ3R0LT5tYXBw
YWJsZV9lbmQpKSB7CisJCWdndHRfY2xlYW51cF9odyhnZ3R0KTsKIAkJcmV0ID0gLUVJTzsKLQkJ
Z290byBvdXRfZ3R0X2NsZWFudXA7CisJCWdvdG8gb3V0OwogCX0KIAogCWdndHQtPm10cnIgPSBh
cmNoX3BoeXNfd2NfYWRkKGdndHQtPmdtYWRyLnN0YXJ0LCBnZ3R0LT5tYXBwYWJsZV9lbmQpOwog
CiAJaTkxNV9nZ3R0X2luaXRfZmVuY2VzKGdndHQpOwogCitvdXQ6CisJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKworCXJldHVybiByZXQ7Cit9CisKKy8qKgorICogaTkx
NV9nZ3R0X2luaXRfaHcgLSBJbml0aWFsaXplIEdHVFQgaGFyZHdhcmUKKyAqIEBkZXZfcHJpdjog
aTkxNSBkZXZpY2UKKyAqLworaW50IGk5MTVfZ2d0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKK3sKKwlpbnQgcmV0OworCisJc3Rhc2hfaW5pdCgmZGV2X3ByaXYt
Pm1tLndjX3N0YXNoKTsKKworCS8qIE5vdGUgdGhhdCB3ZSB1c2UgcGFnZSBjb2xvdXJpbmcgdG8g
ZW5mb3JjZSBhIGd1YXJkIHBhZ2UgYXQgdGhlCisJICogZW5kIG9mIHRoZSBhZGRyZXNzIHNwYWNl
LiBUaGlzIGlzIHJlcXVpcmVkIGFzIHRoZSBDUyBtYXkgcHJlZmV0Y2gKKwkgKiBiZXlvbmQgdGhl
IGVuZCBvZiB0aGUgYmF0Y2ggYnVmZmVyLCBhY3Jvc3MgdGhlIHBhZ2UgYm91bmRhcnksCisJICog
YW5kIGJleW9uZCB0aGUgZW5kIG9mIHRoZSBHVFQgaWYgd2UgZG8gbm90IHByb3ZpZGUgYSBndWFy
ZC4KKwkgKi8KKwlyZXQgPSBnZ3R0X2luaXRfaHcoJmRldl9wcml2LT5nZ3R0KTsKKwlpZiAocmV0
KQorCQlyZXR1cm4gcmV0OworCiAJLyoKIAkgKiBJbml0aWFsaXNlIHN0b2xlbiBlYXJseSBzbyB0
aGF0IHdlIG1heSByZXNlcnZlIHByZWFsbG9jYXRlZAogCSAqIG9iamVjdHMgZm9yIHRoZSBCSU9T
IHRvIEtNUyB0cmFuc2l0aW9uLgpAQCAtMzYxMCw3ICszNjMwLDcgQEAgaW50IGk5MTVfZ2d0dF9p
bml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gMDsKIAog
b3V0X2d0dF9jbGVhbnVwOgotCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKKwlnZ3R0X2Ns
ZWFudXBfaHcoJmRldl9wcml2LT5nZ3R0KTsKIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
