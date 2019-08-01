Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F9E7E016
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 18:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF51F6E72C;
	Thu,  1 Aug 2019 16:23:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA866E71F
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 16:23:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 09:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="163665975"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 09:23:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 17:23:28 +0100
Message-Id: <20190801162330.2729-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
References: <20190801162330.2729-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/pmu: Convert engine sampling to
 uncore mmio
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkRyb3BzIG9u
ZSBtYWNybyB1c2luZyBpbXBsaWNpdCBkZXZfcHJpdi4KCnYyOgogKiBVc2UgRU5HSU5FX1JFQURf
RlcuIChDaHJpcykKClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMjEgKysrKysr
KysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKaW5kZXggMTIwMDg5NjZiMDBlLi4wOTI2
NWI2Yjc4YjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwpAQCAtMTYyLDI5ICsxNjIsMzAgQEAg
YWRkX3NhbXBsZShzdHJ1Y3QgaTkxNV9wbXVfc2FtcGxlICpzYW1wbGUsIHUzMiB2YWwpCiB9CiAK
IHN0YXRpYyB2b2lkCi1lbmdpbmVzX3NhbXBsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCitlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKIHsKKwlzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwogCXN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZTsKIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsKIAl1bnNpZ25lZCBsb25nIGZsYWdzOwogCi0JaWYgKChkZXZfcHJpdi0+cG11
LmVuYWJsZSAmIEVOR0lORV9TQU1QTEVfTUFTSykgPT0gMCkKKwlpZiAoKGk5MTUtPnBtdS5lbmFi
bGUgJiBFTkdJTkVfU0FNUExFX01BU0spID09IDApCiAJCXJldHVybjsKIAogCXdha2VyZWYgPSAw
OwotCWlmIChSRUFEX09OQ0UoZGV2X3ByaXYtPmd0LmF3YWtlKSkKLQkJd2FrZXJlZiA9IGludGVs
X3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCWlmIChS
RUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKQorCQl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9n
ZXRfaWZfaW5fdXNlKCZpOTE1LT5ydW50aW1lX3BtKTsKIAlpZiAoIXdha2VyZWYpCiAJCXJldHVy
bjsKIAotCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGZsYWdzKTsK
LQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKKwlzcGluX2xvY2tfaXJx
c2F2ZSgmdW5jb3JlLT5sb2NrLCBmbGFncyk7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkx
NSwgaWQpIHsKIAkJc3RydWN0IGludGVsX2VuZ2luZV9wbXUgKnBtdSA9ICZlbmdpbmUtPnBtdTsK
IAkJYm9vbCBidXN5OwogCQl1MzIgdmFsOwogCi0JCXZhbCA9IEk5MTVfUkVBRF9GVyhSSU5HX0NU
TChlbmdpbmUtPm1taW9fYmFzZSkpOworCQl2YWwgPSBFTkdJTkVfUkVBRF9GVyhlbmdpbmUsIFJJ
TkdfQ1RMKTsKIAkJaWYgKHZhbCA9PSAwKSAvKiBwb3dlcndlbGwgb2ZmID0+IGVuZ2luZSBpZGxl
ICovCiAJCQljb250aW51ZTsKIApAQCAtMjAyLDE1ICsyMDMsMTUgQEAgZW5naW5lc19zYW1wbGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25z
KQogCQkgKi8KIAkJYnVzeSA9IHZhbCAmIChSSU5HX1dBSVRfU0VNQVBIT1JFIHwgUklOR19XQUlU
KTsKIAkJaWYgKCFidXN5KSB7Ci0JCQl2YWwgPSBJOTE1X1JFQURfRlcoUklOR19NSV9NT0RFKGVu
Z2luZS0+bW1pb19iYXNlKSk7CisJCQl2YWwgPSBFTkdJTkVfUkVBRF9GVyhlbmdpbmUsIFJJTkdf
TUlfTU9ERSk7CiAJCQlidXN5ID0gISh2YWwgJiBNT0RFX0lETEUpOwogCQl9CiAJCWlmIChidXN5
KQogCQkJYWRkX3NhbXBsZSgmcG11LT5zYW1wbGVbSTkxNV9TQU1QTEVfQlVTWV0sIHBlcmlvZF9u
cyk7CiAJfQotCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNvcmUubG9jaywg
ZmxhZ3MpOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnVuY29yZS0+bG9jaywgZmxhZ3MpOwog
Ci0JaW50ZWxfcnVudGltZV9wbV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsK
KwlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7CiB9CiAK
IHN0YXRpYyB2b2lkCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
