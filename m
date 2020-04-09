Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF911A377C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 17:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5E36EBFC;
	Thu,  9 Apr 2020 15:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908FA6EBFC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 15:51:27 +0000 (UTC)
IronPort-SDR: e2Crg09C19GT3sF88ouG0SSttUjy+2Fbgkd3XqDyLnm7uRHMNfKCpt1/gZASyuU2oVS0190cwN
 7fL22IE+pNiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 08:51:27 -0700
IronPort-SDR: CAE3xdvUf3GAn508+eQSBelQVMEZbdzeBPtJuNxOa6MVUal5NHM9oGXpeqdlf5lESXDkcpMaUr
 eDRcMtOuSenw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="257857223"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Apr 2020 08:51:25 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Apr 2020 18:47:28 +0300
Message-Id: <20200409154730.18568-12-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v22 11/13] drm/i915: Rename bw_state to
 new_bw_state
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhdCBpcyBhIHByZXBhcmF0aW9uIHBhdGNoIGJlZm9yZSBuZXh0IG9uZSB3aGVyZSB3ZQppbnRy
b2R1Y2Ugb2xkX2J3X3N0YXRlIGFuZCBhIGJ1bmNoIG9mIG90aGVyIGNoYW5nZXMKYXMgd2VsbC4K
SW4gYSByZXZpZXcgY29tbWVudCBpdCB3YXMgc3VnZ2VzdGVkIHRvIHNwbGl0IG91dAphdCBsZWFz
dCB0aGF0IHJlbmFtaW5nIGludG8gYSBzZXBhcmF0ZSBwYXRjaCwgd2hhdAppcyBkb25lIGhlcmUu
Cgp2MjogUmVtb3ZlZCBzcHVyaW91cyBzcGFjZQoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDI0ICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA5NmY4NmNmYTkxZDQu
LmY3OTMyOTdlZjk0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpA
QCAtNDE4LDcgKzQxOCw3IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZSwgKm9sZF9jcnRjX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9id19zdGF0
ZSAqYndfc3RhdGUgPSBOVUxMOworCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqbmV3X2J3X3N0YXRl
ID0gTlVMTDsKIAl1bnNpZ25lZCBpbnQgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlOwogCXVuc2ln
bmVkIGludCBudW1fYWN0aXZlX3BsYW5lczsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKQEAg
LTQ0NywyOSArNDQ3LDI5IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCSAgICBvbGRfYWN0aXZlX3BsYW5lcyA9PSBuZXdfYWN0
aXZlX3BsYW5lcykKIAkJCWNvbnRpbnVlOwogCi0JCWJ3X3N0YXRlICA9IGludGVsX2F0b21pY19n
ZXRfYndfc3RhdGUoc3RhdGUpOwotCQlpZiAoSVNfRVJSKGJ3X3N0YXRlKSkKLQkJCXJldHVybiBQ
VFJfRVJSKGJ3X3N0YXRlKTsKKwkJbmV3X2J3X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9id19z
dGF0ZShzdGF0ZSk7CisJCWlmIChJU19FUlIobmV3X2J3X3N0YXRlKSkKKwkJCXJldHVybiBQVFJf
RVJSKG5ld19id19zdGF0ZSk7CiAKLQkJYndfc3RhdGUtPmRhdGFfcmF0ZVtjcnRjLT5waXBlXSA9
IG5ld19kYXRhX3JhdGU7Ci0JCWJ3X3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lc1tjcnRjLT5waXBl
XSA9IG5ld19hY3RpdmVfcGxhbmVzOworCQluZXdfYndfc3RhdGUtPmRhdGFfcmF0ZVtjcnRjLT5w
aXBlXSA9IG5ld19kYXRhX3JhdGU7CisJCW5ld19id19zdGF0ZS0+bnVtX2FjdGl2ZV9wbGFuZXNb
Y3J0Yy0+cGlwZV0gPSBuZXdfYWN0aXZlX3BsYW5lczsKIAogCQlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwKIAkJCSAgICAicGlwZSAlYyBkYXRhIHJhdGUgJXUgbnVtIGFjdGl2ZSBwbGFuZXMg
JXVcbiIsCiAJCQkgICAgcGlwZV9uYW1lKGNydGMtPnBpcGUpLAotCQkJICAgIGJ3X3N0YXRlLT5k
YXRhX3JhdGVbY3J0Yy0+cGlwZV0sCi0JCQkgICAgYndfc3RhdGUtPm51bV9hY3RpdmVfcGxhbmVz
W2NydGMtPnBpcGVdKTsKKwkJCSAgICBuZXdfYndfc3RhdGUtPmRhdGFfcmF0ZVtjcnRjLT5waXBl
XSwKKwkJCSAgICBuZXdfYndfc3RhdGUtPm51bV9hY3RpdmVfcGxhbmVzW2NydGMtPnBpcGVdKTsK
IAl9CiAKLQlpZiAoIWJ3X3N0YXRlKQorCWlmICghbmV3X2J3X3N0YXRlKQogCQlyZXR1cm4gMDsK
IAotCXJldCA9IGludGVsX2F0b21pY19sb2NrX2dsb2JhbF9zdGF0ZSgmYndfc3RhdGUtPmJhc2Up
OworCXJldCA9IGludGVsX2F0b21pY19sb2NrX2dsb2JhbF9zdGF0ZSgmbmV3X2J3X3N0YXRlLT5i
YXNlKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JZGF0YV9yYXRlID0gaW50ZWxfYndf
ZGF0YV9yYXRlKGRldl9wcml2LCBid19zdGF0ZSk7Ci0JbnVtX2FjdGl2ZV9wbGFuZXMgPSBpbnRl
bF9id19udW1fYWN0aXZlX3BsYW5lcyhkZXZfcHJpdiwgYndfc3RhdGUpOworCWRhdGFfcmF0ZSA9
IGludGVsX2J3X2RhdGFfcmF0ZShkZXZfcHJpdiwgbmV3X2J3X3N0YXRlKTsKKwludW1fYWN0aXZl
X3BsYW5lcyA9IGludGVsX2J3X251bV9hY3RpdmVfcGxhbmVzKGRldl9wcml2LCBuZXdfYndfc3Rh
dGUpOwogCiAJbWF4X2RhdGFfcmF0ZSA9IGludGVsX21heF9kYXRhX3JhdGUoZGV2X3ByaXYsIG51
bV9hY3RpdmVfcGxhbmVzKTsKIAotLSAKMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
