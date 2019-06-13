Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDABA43A17
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B6389B46;
	Thu, 13 Jun 2019 15:19:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA5D89B42
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:19:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:19:13 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2019 08:19:12 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 16:19:03 +0100
Message-Id: <20190613151904.16256-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 27/28] drm/i915: Compartmentalize ring buffer
 creation
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRpbnVp
bmcgb24gdGhlIHRoZW1lIG9mIGNvbXBhcnRtZW50YWxpemluZyB0aGUgY29kZSBiZXR0ZXIgdG8g
bWFrZQpmdXR1cmUgc3BsaXQgYmV0d2VlbiBndCBhbmQgZGlzcGxheSBpbiBnbG9iYWwgaTkxNSBj
bGVhcmVyLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMg
fCAxNyArKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmMKaW5kZXggYjNiZjQ3ZTgxNjJmLi4wYTFkOTUyYWQxNjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQEAgLTEyMjYsMTYgKzEyMjYsMTYgQEAgdm9pZCBp
bnRlbF9yaW5nX3VucGluKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQogCWk5MTVfdGltZWxpbmVf
dW5waW4ocmluZy0+dGltZWxpbmUpOwogfQogCi1zdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKLWlu
dGVsX3JpbmdfY3JlYXRlX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGlu
dCBzaXplKQorc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdfdm1hKHN0cnVjdCBp
bnRlbF9ndCAqZ3QsIGludCBzaXplKQogewotCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
ID0gJmRldl9wcml2LT5nZ3R0LnZtOworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0g
Jmd0LT5nZ3R0LT52bTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1
OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfdm1hICp2
bWE7CiAKLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihkZXZfcHJpdiwgc2l6
ZSk7CisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oaTkxNSwgc2l6ZSk7CiAJ
aWYgKCFvYmopCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoZGV2X3By
aXYsIHNpemUpOworCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUs
IHNpemUpOwogCWlmIChJU19FUlIob2JqKSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKQEAg
LTEyNjIsMTMgKzEyNjIsMTQgQEAgaW50ZWxfZW5naW5lX2NyZWF0ZV9yaW5nKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCSBzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUs
CiAJCQkgaW50IHNpemUpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdp
bmUtPmk5MTU7CiAJc3RydWN0IGludGVsX3JpbmcgKnJpbmc7CiAJc3RydWN0IGk5MTVfdm1hICp2
bWE7CiAKIAlHRU1fQlVHX09OKCFpc19wb3dlcl9vZl8yKHNpemUpKTsKIAlHRU1fQlVHX09OKFJJ
TkdfQ1RMX1NJWkUoc2l6ZSkgJiB+UklOR19OUl9QQUdFUyk7CiAJR0VNX0JVR19PTih0aW1lbGlu
ZSA9PSAmZW5naW5lLT50aW1lbGluZSk7Ci0JbG9ja2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5p
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKIAogCXJpbmcgPSBremFsbG9jKHNpemVvZigqcmluZyksIEdGUF9LRVJO
RUwpOwogCWlmICghcmluZykKQEAgLTEyODQsMTIgKzEyODUsMTIgQEAgaW50ZWxfZW5naW5lX2Ny
ZWF0ZV9yaW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkgKiBvZiB0aGUgYnVm
ZmVyLgogCSAqLwogCXJpbmctPmVmZmVjdGl2ZV9zaXplID0gc2l6ZTsKLQlpZiAoSVNfSTgzMChl
bmdpbmUtPmk5MTUpIHx8IElTX0k4NDVHKGVuZ2luZS0+aTkxNSkpCisJaWYgKElTX0k4MzAoaTkx
NSkgfHwgSVNfSTg0NUcoaTkxNSkpCiAJCXJpbmctPmVmZmVjdGl2ZV9zaXplIC09IDIgKiBDQUNI
RUxJTkVfQllURVM7CiAKIAlpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShyaW5nKTsKIAotCXZtYSA9
IGludGVsX3JpbmdfY3JlYXRlX3ZtYShlbmdpbmUtPmk5MTUsIHNpemUpOworCXZtYSA9IGNyZWF0
ZV9yaW5nX3ZtYShlbmdpbmUtPmd0LCBzaXplKTsKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJa2Zy
ZWUocmluZyk7CiAJCXJldHVybiBFUlJfQ0FTVCh2bWEpOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
