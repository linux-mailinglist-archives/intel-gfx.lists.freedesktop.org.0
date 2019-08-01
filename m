Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F577D927
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5046E463;
	Thu,  1 Aug 2019 10:18:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7C66E464
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:18:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 03:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="324194350"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 03:18:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 11:18:23 +0100
Message-Id: <20190801101825.2784-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/4] drm/i915/pmu: Convert engine sampling to
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
ZSBtYWNybyB1c2luZyBpbXBsaWNpdCBkZXZfcHJpdi4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wbXUuYyB8IDIzICsrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11
LmMKaW5kZXggMTIwMDg5NjZiMDBlLi5iZDlhZDRmMmI0ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
bXUuYwpAQCAtMTYyLDI5ICsxNjIsMzAgQEAgYWRkX3NhbXBsZShzdHJ1Y3QgaTkxNV9wbXVfc2Ft
cGxlICpzYW1wbGUsIHUzMiB2YWwpCiB9CiAKIHN0YXRpYyB2b2lkCi1lbmdpbmVzX3NhbXBsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMp
CitlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQg
aW50IHBlcmlvZF9ucykKIHsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+
dW5jb3JlOwogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKIAllbnVtIGludGVsX2Vu
Z2luZV9pZCBpZDsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAl1bnNpZ25lZCBsb25nIGZs
YWdzOwogCi0JaWYgKChkZXZfcHJpdi0+cG11LmVuYWJsZSAmIEVOR0lORV9TQU1QTEVfTUFTSykg
PT0gMCkKKwlpZiAoKGk5MTUtPnBtdS5lbmFibGUgJiBFTkdJTkVfU0FNUExFX01BU0spID09IDAp
CiAJCXJldHVybjsKIAogCXdha2VyZWYgPSAwOwotCWlmIChSRUFEX09OQ0UoZGV2X3ByaXYtPmd0
LmF3YWtlKSkKLQkJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZSgmZGV2
X3ByaXYtPnJ1bnRpbWVfcG0pOworCWlmIChSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKQorCQl3
YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXRfaWZfaW5fdXNlKCZpOTE1LT5ydW50aW1lX3Bt
KTsKIAlpZiAoIXdha2VyZWYpCiAJCXJldHVybjsKIAotCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZf
cHJpdi0+dW5jb3JlLmxvY2ssIGZsYWdzKTsKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZf
cHJpdiwgaWQpIHsKKwlzcGluX2xvY2tfaXJxc2F2ZSgmdW5jb3JlLT5sb2NrLCBmbGFncyk7CisJ
Zm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKIAkJc3RydWN0IGludGVsX2VuZ2lu
ZV9wbXUgKnBtdSA9ICZlbmdpbmUtPnBtdTsKIAkJYm9vbCBidXN5OwogCQl1MzIgdmFsOwogCi0J
CXZhbCA9IEk5MTVfUkVBRF9GVyhSSU5HX0NUTChlbmdpbmUtPm1taW9fYmFzZSkpOworCQl2YWwg
PSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdfQ1RMKGVuZ2luZS0+bW1pb19iYXNl
KSk7CiAJCWlmICh2YWwgPT0gMCkgLyogcG93ZXJ3ZWxsIG9mZiA9PiBlbmdpbmUgaWRsZSAqLwog
CQkJY29udGludWU7CiAKQEAgLTIwMiwxNSArMjAzLDE3IEBAIGVuZ2luZXNfc2FtcGxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKIAkJ
ICovCiAJCWJ1c3kgPSB2YWwgJiAoUklOR19XQUlUX1NFTUFQSE9SRSB8IFJJTkdfV0FJVCk7CiAJ
CWlmICghYnVzeSkgewotCQkJdmFsID0gSTkxNV9SRUFEX0ZXKFJJTkdfTUlfTU9ERShlbmdpbmUt
Pm1taW9fYmFzZSkpOworCQkJdmFsID0KKwkJCSAgaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3Jl
LAorCQkJCQkgICAgICAgUklOR19NSV9NT0RFKGVuZ2luZS0+bW1pb19iYXNlKSk7CiAJCQlidXN5
ID0gISh2YWwgJiBNT0RFX0lETEUpOwogCQl9CiAJCWlmIChidXN5KQogCQkJYWRkX3NhbXBsZSgm
cG11LT5zYW1wbGVbSTkxNV9TQU1QTEVfQlVTWV0sIHBlcmlvZF9ucyk7CiAJfQotCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNvcmUubG9jaywgZmxhZ3MpOworCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnVuY29yZS0+bG9jaywgZmxhZ3MpOwogCi0JaW50ZWxfcnVudGltZV9w
bV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKKwlpbnRlbF9ydW50aW1lX3Bt
X3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7CiB9CiAKIHN0YXRpYyB2b2lkCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
