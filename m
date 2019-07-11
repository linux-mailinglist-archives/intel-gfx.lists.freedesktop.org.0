Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3AA65F2E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7BC6E287;
	Thu, 11 Jul 2019 17:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708E46E287
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894705"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:12 -0700
Message-Id: <20190711173115.28296-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 18/21] drm/i915/tgl: port to ddc pin mapping
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

TWFrZSB0aGUgaWNsIGZ1bmN0aW9uIGdlbmVyaWMgc28gaXQgaXMgYmFzZWQgb24gcGh5IHR5cGUg
YW5kIGNhbiBiZQphcHBsaWVkIHRvIHRnbCBhcyB3ZWxsLgoKSSBjaGVja2VkIGlmIHRoaXMgY291
bGQgbm90IGFwcGx5IHRvIEVITCBhcyB3ZWxsLCBidXQgdW5mb3J0dW5hdGVseQp0aGVyZSB0aGUg
SFBEIGFuZCBEREMvR01CVVMgcGlucyBmb3IgRERJIEMgYXJlIG1hcHBlZCB0byBUeXBlQyBQb3J0
IDEKZXZlbiB0aG91Z2ggaXQgZG9lc24ndCBoYXZlIFRDIHBoeS4KCnYyOiBkb24ndCBhZGQgYSBz
ZXBhcmF0ZSBmdW5jdGlvbiBmb3IgVEdMLCBidXQgcmF0aGVyIHJldXNlIHRoZSBJQ0wgb25lCiAg
ICAoc3VnZ2VzdGVkIGJ5IFJvZHJpZ28pCnYzOiByZWJhc2UgYWZ0ZXIgdGhlIGludHJvZHVjdGlv
biBvZiBlbnVtIHBoeSBhbmQgdXNlIGl0IGZvciB0aGUKICAgIGNvbnZlcnNpb25zCgpDYzogQW51
c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYyB8IDM2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDBlYmVjNjliYmJmYy4uNzdhZjBkZmQ5M2Nl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjkzMCwz
MyArMjkzMCwxNSBAQCBzdGF0aWMgdTggY25wX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIHN0YXRpYyB1OCBpY2xfcG9ydF90b19kZGNfcGluKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiB7Ci0JdTgg
ZGRjX3BpbjsKKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9y
dCk7CiAKLQlzd2l0Y2ggKHBvcnQpIHsKLQljYXNlIFBPUlRfQToKLQkJZGRjX3BpbiA9IEdNQlVT
X1BJTl8xX0JYVDsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0I6Ci0JCWRkY19waW4gPSBHTUJVU19Q
SU5fMl9CWFQ7Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9DOgotCQlkZGNfcGluID0gR01CVVNfUElO
XzlfVEMxX0lDUDsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0Q6Ci0JCWRkY19waW4gPSBHTUJVU19Q
SU5fMTBfVEMyX0lDUDsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0U6Ci0JCWRkY19waW4gPSBHTUJV
U19QSU5fMTFfVEMzX0lDUDsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0Y6Ci0JCWRkY19waW4gPSBH
TUJVU19QSU5fMTJfVEM0X0lDUDsKLQkJYnJlYWs7Ci0JZGVmYXVsdDoKLQkJTUlTU0lOR19DQVNF
KHBvcnQpOwotCQlkZGNfcGluID0gR01CVVNfUElOXzJfQlhUOwotCQlicmVhazsKLQl9Ci0JcmV0
dXJuIGRkY19waW47CisJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKKwkJ
cmV0dXJuIEdNQlVTX1BJTl8xX0JYVCArIHBvcnQ7CisJZWxzZSBpZiAoaW50ZWxfcGh5X2lzX3Rj
KGRldl9wcml2LCBwaHkpKQorCQlyZXR1cm4gR01CVVNfUElOXzlfVEMxX0lDUCArIGludGVsX3Bv
cnRfdG9fdGMoZGV2X3ByaXYsIHBvcnQpOworCisJV0FSTigxLCAiVW5rbm93biBwb3J0OiVjXG4i
LCBwb3J0X25hbWUocG9ydCkpOworCXJldHVybiBHTUJVU19QSU5fMl9CWFQ7CiB9CiAKIHN0YXRp
YyB1OCBtY2NfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwb3J0IHBvcnQpCkBAIC0zMDE5LDcgKzMwMDEsNyBAQCBzdGF0aWMgdTggaW50ZWxf
aGRtaV9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWlmIChI
QVNfUENIX01DQyhkZXZfcHJpdikpCiAJCWRkY19waW4gPSBtY2NfcG9ydF90b19kZGNfcGluKGRl
dl9wcml2LCBwb3J0KTsKLQllbHNlIGlmIChIQVNfUENIX0lDUChkZXZfcHJpdikpCisJZWxzZSBp
ZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpIHx8IEhBU19QQ0hfSUNQKGRldl9wcml2KSkKIAkJZGRj
X3BpbiA9IGljbF9wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwogCWVsc2UgaWYgKEhB
U19QQ0hfQ05QKGRldl9wcml2KSkKIAkJZGRjX3BpbiA9IGNucF9wb3J0X3RvX2RkY19waW4oZGV2
X3ByaXYsIHBvcnQpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
