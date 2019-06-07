Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BBC389CF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A464289D84;
	Fri,  7 Jun 2019 12:08:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C691889B69
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:46 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:45 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:30 +0100
Message-Id: <20190607120838.20514-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 04/12] drm/i915: Convert gem_record_fences to
 uncore mmio accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgaW1w
bGljaXQgZGV2X3ByaXYgcmVtb3ZhbC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
cHVfZXJyb3IuYyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpp
bmRleCAxOTNhOTM4NTdkOTkuLmE1MjNiZjA1MGEyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5jCkBAIC0xMTIzLDE3ICsxMTIzLDIzIEBAIHN0YXRpYyB1MzIgaTkxNV9lcnJv
cl9nZW5lcmF0ZV9jb2RlKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJyb3IsCiBzdGF0aWMgdm9p
ZCBnZW1fcmVjb3JkX2ZlbmNlcyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogewogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVycm9yLT5pOTE1OworCXN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwogCWludCBpOwogCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gNikgewogCQlmb3IgKGkgPSAwOyBpIDwgZGV2X3ByaXYt
Pm51bV9mZW5jZV9yZWdzOyBpKyspCi0JCQllcnJvci0+ZmVuY2VbaV0gPSBJOTE1X1JFQUQ2NChG
RU5DRV9SRUdfR0VONl9MTyhpKSk7CisJCQllcnJvci0+ZmVuY2VbaV0gPQorCQkJCWludGVsX3Vu
Y29yZV9yZWFkNjQodW5jb3JlLAorCQkJCQkJICAgIEZFTkNFX1JFR19HRU42X0xPKGkpKTsKIAl9
IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkgewogCQlmb3IgKGkgPSAwOyBpIDwg
ZGV2X3ByaXYtPm51bV9mZW5jZV9yZWdzOyBpKyspCi0JCQllcnJvci0+ZmVuY2VbaV0gPSBJOTE1
X1JFQUQ2NChGRU5DRV9SRUdfOTY1X0xPKGkpKTsKKwkJCWVycm9yLT5mZW5jZVtpXSA9CisJCQkJ
aW50ZWxfdW5jb3JlX3JlYWQ2NCh1bmNvcmUsCisJCQkJCQkgICAgRkVOQ0VfUkVHXzk2NV9MTyhp
KSk7CiAJfSBlbHNlIHsKIAkJZm9yIChpID0gMDsgaSA8IGRldl9wcml2LT5udW1fZmVuY2VfcmVn
czsgaSsrKQotCQkJZXJyb3ItPmZlbmNlW2ldID0gSTkxNV9SRUFEKEZFTkNFX1JFRyhpKSk7CisJ
CQllcnJvci0+ZmVuY2VbaV0gPQorCQkJCWludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRkVOQ0Vf
UkVHKGkpKTsKIAl9CiAJZXJyb3ItPm5mZW5jZSA9IGk7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
