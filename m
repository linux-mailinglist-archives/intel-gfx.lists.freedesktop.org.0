Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C48639C0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 19:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD756E086;
	Tue,  9 Jul 2019 17:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C8D6E088
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 17:01:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 10:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="185950532"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2019 10:00:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 10:00:44 -0700
Message-Id: <20190709170044.29489-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709162853.trljxpm6sl7vn3os@ldmartin-desk1>
References: <20190709162853.trljxpm6sl7vn3os@ldmartin-desk1>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 16/25] drm/i915/tgl: port to ddc pin mapping
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDM0ICsr
KysrLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAy
NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
CmluZGV4IDBlYmVjNjliYmJmYy4uZGZkY2QyNWVkYTAyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjkzMCwzMyArMjkzMCwxMyBAQCBzdGF0aWMgdTgg
Y25wX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAK
IHN0YXRpYyB1OCBpY2xfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiB7Ci0JdTggZGRjX3BpbjsKKwlpZiAoaW50ZWxfcG9y
dF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkpCisJCXJldHVybiBHTUJVU19QSU5fMV9CWFQg
KyBwb3J0OworCWVsc2UgaWYgKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKQorCQly
ZXR1cm4gR01CVVNfUElOXzlfVEMxX0lDUCArIGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIHBv
cnQpOwogCi0Jc3dpdGNoIChwb3J0KSB7Ci0JY2FzZSBQT1JUX0E6Ci0JCWRkY19waW4gPSBHTUJV
U19QSU5fMV9CWFQ7Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9COgotCQlkZGNfcGluID0gR01CVVNf
UElOXzJfQlhUOwotCQlicmVhazsKLQljYXNlIFBPUlRfQzoKLQkJZGRjX3BpbiA9IEdNQlVTX1BJ
Tl85X1RDMV9JQ1A7Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9EOgotCQlkZGNfcGluID0gR01CVVNf
UElOXzEwX1RDMl9JQ1A7Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9FOgotCQlkZGNfcGluID0gR01C
VVNfUElOXzExX1RDM19JQ1A7Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9GOgotCQlkZGNfcGluID0g
R01CVVNfUElOXzEyX1RDNF9JQ1A7Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCU1JU1NJTkdfQ0FT
RShwb3J0KTsKLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8yX0JYVDsKLQkJYnJlYWs7Ci0JfQotCXJl
dHVybiBkZGNfcGluOworCVdBUk4oMSwgIlVua25vd24gcG9ydDolY1xuIiwgcG9ydF9uYW1lKHBv
cnQpKTsKKwlyZXR1cm4gR01CVVNfUElOXzJfQlhUOwogfQogCiBzdGF0aWMgdTggbWNjX3BvcnRf
dG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBw
b3J0KQpAQCAtMzAxOSw3ICsyOTk5LDcgQEAgc3RhdGljIHU4IGludGVsX2hkbWlfZGRjX3Bpbihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlpZiAoSEFTX1BDSF9NQ0MoZGV2
X3ByaXYpKQogCQlkZGNfcGluID0gbWNjX3BvcnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7
Ci0JZWxzZSBpZiAoSEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQorCWVsc2UgaWYgKEhBU19QQ0hfVEdQ
KGRldl9wcml2KSB8fCBIQVNfUENIX0lDUChkZXZfcHJpdikpCiAJCWRkY19waW4gPSBpY2xfcG9y
dF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKIAllbHNlIGlmIChIQVNfUENIX0NOUChkZXZf
cHJpdikpCiAJCWRkY19waW4gPSBjbnBfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
