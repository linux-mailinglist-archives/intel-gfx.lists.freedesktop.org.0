Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF50364F9E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97AD289C2C;
	Thu, 11 Jul 2019 00:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2431F89C2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232396"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:30 -0700
Message-Id: <20190711003833.17420-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 18/21] drm/i915/tgl: port to ddc pin mapping
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
ICAoc3VnZ2VzdGVkIGJ5IFJvZHJpZ28pCgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KTGlu
azogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzA5
MTcwMDQ0LjI5NDg5LTEtbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAzNCArKysrKy0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCAwZWJlYzY5YmJiZmMu
LmRmZGNkMjVlZGEwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKQEAgLTI5MzAsMzMgKzI5MzAsMTMgQEAgc3RhdGljIHU4IGNucF9wb3J0X3RvX2RkY19waW4o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiBzdGF0aWMgdTggaWNsX3BvcnRf
dG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBw
b3J0KQogewotCXU4IGRkY19waW47CisJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3By
aXYsIHBvcnQpKQorCQlyZXR1cm4gR01CVVNfUElOXzFfQlhUICsgcG9ydDsKKwllbHNlIGlmIChp
bnRlbF9wb3J0X2lzX3RjKGRldl9wcml2LCBwb3J0KSkKKwkJcmV0dXJuIEdNQlVTX1BJTl85X1RD
MV9JQ1AgKyBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKIAotCXN3aXRjaCAocG9y
dCkgewotCWNhc2UgUE9SVF9BOgotCQlkZGNfcGluID0gR01CVVNfUElOXzFfQlhUOwotCQlicmVh
azsKLQljYXNlIFBPUlRfQjoKLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8yX0JYVDsKLQkJYnJlYWs7
Ci0JY2FzZSBQT1JUX0M6Ci0JCWRkY19waW4gPSBHTUJVU19QSU5fOV9UQzFfSUNQOwotCQlicmVh
azsKLQljYXNlIFBPUlRfRDoKLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMF9UQzJfSUNQOwotCQli
cmVhazsKLQljYXNlIFBPUlRfRToKLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMV9UQzNfSUNQOwot
CQlicmVhazsKLQljYXNlIFBPUlRfRjoKLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMl9UQzRfSUNQ
OwotCQlicmVhazsKLQlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UocG9ydCk7Ci0JCWRkY19waW4g
PSBHTUJVU19QSU5fMl9CWFQ7Ci0JCWJyZWFrOwotCX0KLQlyZXR1cm4gZGRjX3BpbjsKKwlXQVJO
KDEsICJVbmtub3duIHBvcnQ6JWNcbiIsIHBvcnRfbmFtZShwb3J0KSk7CisJcmV0dXJuIEdNQlVT
X1BJTl8yX0JYVDsKIH0KIAogc3RhdGljIHU4IG1jY19wb3J0X3RvX2RkY19waW4oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKQEAgLTMwMTksNyArMjk5
OSw3IEBAIHN0YXRpYyB1OCBpbnRlbF9oZG1pX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCiAJaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkKIAkJZGRjX3BpbiA9
IG1jY19wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwotCWVsc2UgaWYgKEhBU19QQ0hf
SUNQKGRldl9wcml2KSkKKwllbHNlIGlmIChIQVNfUENIX1RHUChkZXZfcHJpdikgfHwgSEFTX1BD
SF9JQ1AoZGV2X3ByaXYpKQogCQlkZGNfcGluID0gaWNsX3BvcnRfdG9fZGRjX3BpbihkZXZfcHJp
diwgcG9ydCk7CiAJZWxzZSBpZiAoSEFTX1BDSF9DTlAoZGV2X3ByaXYpKQogCQlkZGNfcGluID0g
Y25wX3BvcnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7Ci0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
