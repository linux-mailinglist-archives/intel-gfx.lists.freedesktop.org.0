Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3971B56DB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D484D6E392;
	Thu, 23 Apr 2020 08:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432F06E35D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:02:29 +0000 (UTC)
IronPort-SDR: DoYv95FTDIbsIbLQYihAgQn5zCtub8SVH4VQgKbAmNMhEDtbb/3nPRraqwCdbWmf/kxTsVvi0z
 eIkT636RByEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 01:02:29 -0700
IronPort-SDR: jOkWghZU1siUMk8ClxHcDB10LRnvT6HcROjwhnn6COSuhI9i3+mTkQofEbHrgQu0VNJZLMe8Ud
 P+477jYHcI9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; d="scan'208";a="259344466"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 01:02:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 10:59:00 +0300
Message-Id: <20200423075902.21892-8-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 7/9] drm/i915: Rename bw_state to
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
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA0YWE1NGZjYjA2Mjku
LjZlN2NjM2E0ZjFhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpA
QCAtNDE0LDcgKzQxNCw3IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZSwgKm9sZF9jcnRjX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9id19zdGF0
ZSAqYndfc3RhdGUgPSBOVUxMOworCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqbmV3X2J3X3N0YXRl
ID0gTlVMTDsKIAl1bnNpZ25lZCBpbnQgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlOwogCXVuc2ln
bmVkIGludCBudW1fYWN0aXZlX3BsYW5lczsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKQEAg
LTQ0MywyOSArNDQzLDI5IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVs
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
