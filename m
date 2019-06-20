Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19CF4DB59
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8D26E7E6;
	Thu, 20 Jun 2019 20:38:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62E96E7E5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938676"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:11 +0100
Message-Id: <20190620203835.1421-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/33] drm/i915: Convert init_unused_rings to
 intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgcmVt
b3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4K
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgNDIgKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTkgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggMzBkYTYwM2VlN2ZkLi42Zjk2
ZDM2MGU4ZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTIwMiwyOCArMTIwMiwzMiBA
QCB2b2lkIGk5MTVfZ2VtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQog
CWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIH0KIAot
c3RhdGljIHZvaWQgaW5pdF91bnVzZWRfcmluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHUzMiBiYXNlKQorc3RhdGljIHZvaWQgaW5pdF91bnVzZWRfcmluZyhzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LCB1MzIgYmFzZSkKIHsKLQlJOTE1X1dSSVRFKFJJTkdfQ1RMKGJhc2UpLCAwKTsK
LQlJOTE1X1dSSVRFKFJJTkdfSEVBRChiYXNlKSwgMCk7Ci0JSTkxNV9XUklURShSSU5HX1RBSUwo
YmFzZSksIDApOwotCUk5MTVfV1JJVEUoUklOR19TVEFSVChiYXNlKSwgMCk7CisJc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKworCWludGVsX3VuY29yZV93cml0ZSh1
bmNvcmUsIFJJTkdfQ1RMKGJhc2UpLCAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBS
SU5HX0hFQUQoYmFzZSksIDApOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIFJJTkdfVEFJ
TChiYXNlKSwgMCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgUklOR19TVEFSVChiYXNl
KSwgMCk7CiB9CiAKLXN0YXRpYyB2b2lkIGluaXRfdW51c2VkX3JpbmdzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGluaXRfdW51c2VkX3JpbmdzKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiB7Ci0JaWYgKElTX0k4MzAoZGV2X3ByaXYpKSB7Ci0JCWluaXRfdW51
c2VkX3JpbmcoZGV2X3ByaXYsIFBSQjFfQkFTRSk7Ci0JCWluaXRfdW51c2VkX3JpbmcoZGV2X3By
aXYsIFNSQjBfQkFTRSk7Ci0JCWluaXRfdW51c2VkX3JpbmcoZGV2X3ByaXYsIFNSQjFfQkFTRSk7
Ci0JCWluaXRfdW51c2VkX3JpbmcoZGV2X3ByaXYsIFNSQjJfQkFTRSk7Ci0JCWluaXRfdW51c2Vk
X3JpbmcoZGV2X3ByaXYsIFNSQjNfQkFTRSk7Ci0JfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYs
IDIpKSB7Ci0JCWluaXRfdW51c2VkX3JpbmcoZGV2X3ByaXYsIFNSQjBfQkFTRSk7Ci0JCWluaXRf
dW51c2VkX3JpbmcoZGV2X3ByaXYsIFNSQjFfQkFTRSk7Ci0JfSBlbHNlIGlmIChJU19HRU4oZGV2
X3ByaXYsIDMpKSB7Ci0JCWluaXRfdW51c2VkX3JpbmcoZGV2X3ByaXYsIFBSQjFfQkFTRSk7Ci0J
CWluaXRfdW51c2VkX3JpbmcoZGV2X3ByaXYsIFBSQjJfQkFTRSk7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKworCWlmIChJU19JODMwKGk5MTUpKSB7CisJCWlu
aXRfdW51c2VkX3JpbmcoZ3QsIFBSQjFfQkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNS
QjBfQkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNSQjFfQkFTRSk7CisJCWluaXRfdW51
c2VkX3JpbmcoZ3QsIFNSQjJfQkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNSQjNfQkFT
RSk7CisJfSBlbHNlIGlmIChJU19HRU4oaTkxNSwgMikpIHsKKwkJaW5pdF91bnVzZWRfcmluZyhn
dCwgU1JCMF9CQVNFKTsKKwkJaW5pdF91bnVzZWRfcmluZyhndCwgU1JCMV9CQVNFKTsKKwl9IGVs
c2UgaWYgKElTX0dFTihpOTE1LCAzKSkgeworCQlpbml0X3VudXNlZF9yaW5nKGd0LCBQUkIxX0JB
U0UpOworCQlpbml0X3VudXNlZF9yaW5nKGd0LCBQUkIyX0JBU0UpOwogCX0KIH0KIApAQCAtMTI1
Niw3ICsxMjYwLDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCSAqIHdpbGwgcHJldmVudCBjMyBlbnRyeS4gTWFrZXMgc3VyZSBhbGwg
dW51c2VkIHJpbmdzCiAJICogYXJlIHRvdGFsbHkgaWRsZS4KIAkgKi8KLQlpbml0X3VudXNlZF9y
aW5ncyhkZXZfcHJpdik7CisJaW5pdF91bnVzZWRfcmluZ3MoJmRldl9wcml2LT5ndCk7CiAKIAlC
VUdfT04oIWRldl9wcml2LT5rZXJuZWxfY29udGV4dCk7CiAJcmV0ID0gaTkxNV90ZXJtaW5hbGx5
X3dlZGdlZChkZXZfcHJpdik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
