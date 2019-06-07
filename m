Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B1F389CE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8FE89D83;
	Fri,  7 Jun 2019 12:08:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3D189D83
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:47 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:31 +0100
Message-Id: <20190607120838.20514-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 05/12] drm/i915: Convert intel_read_wm_latency to
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
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggOGY4MmNiNzJkM2E2Li5kNzI3
MmQ0ZmYyNTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMjgxMyw2ICsyODEzLDggQEAg
aHN3X2NvbXB1dGVfbGluZXRpbWVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNz
dGF0ZSkKIHN0YXRpYyB2b2lkIGludGVsX3JlYWRfd21fbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJICB1MTYgd21bOF0pCiB7CisJc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7CisKIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSA5KSB7CiAJCXUzMiB2YWw7CiAJCWludCByZXQsIGk7CkBAIC0yODk0LDcgKzI4OTYs
NyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9yZWFkX3dtX2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCQkJd21bMF0gKz0gMTsKIAogCX0gZWxzZSBpZiAoSVNfSEFTV0VM
TChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewotCQl1NjQgc3NrcGQgPSBJ
OTE1X1JFQUQ2NChNQ0hfU1NLUEQpOworCQl1NjQgc3NrcGQgPSBpbnRlbF91bmNvcmVfcmVhZDY0
KHVuY29yZSwgTUNIX1NTS1BEKTsKIAogCQl3bVswXSA9IChzc2twZCA+PiA1NikgJiAweEZGOwog
CQlpZiAod21bMF0gPT0gMCkKQEAgLTI5MDQsMTQgKzI5MDYsMTQgQEAgc3RhdGljIHZvaWQgaW50
ZWxfcmVhZF93bV9sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
d21bM10gPSAoc3NrcGQgPj4gMjApICYgMHgxRkY7CiAJCXdtWzRdID0gKHNza3BkID4+IDMyKSAm
IDB4MUZGOwogCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA2KSB7Ci0JCXUzMiBz
c2twZCA9IEk5MTVfUkVBRChNQ0hfU1NLUEQpOworCQl1MzIgc3NrcGQgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIE1DSF9TU0tQRCk7CiAKIAkJd21bMF0gPSAoc3NrcGQgPj4gU1NLUERfV00w
X1NISUZUKSAmIFNTS1BEX1dNX01BU0s7CiAJCXdtWzFdID0gKHNza3BkID4+IFNTS1BEX1dNMV9T
SElGVCkgJiBTU0tQRF9XTV9NQVNLOwogCQl3bVsyXSA9IChzc2twZCA+PiBTU0tQRF9XTTJfU0hJ
RlQpICYgU1NLUERfV01fTUFTSzsKIAkJd21bM10gPSAoc3NrcGQgPj4gU1NLUERfV00zX1NISUZU
KSAmIFNTS1BEX1dNX01BU0s7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDUp
IHsKLQkJdTMyIG1sdHIgPSBJOTE1X1JFQUQoTUxUUl9JTEspOworCQl1MzIgbWx0ciA9IGludGVs
X3VuY29yZV9yZWFkKHVuY29yZSwgTUxUUl9JTEspOwogCiAJCS8qIElMSyBwcmltYXJ5IExQMCBs
YXRlbmN5IGlzIDcwMCBucyAqLwogCQl3bVswXSA9IDc7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
