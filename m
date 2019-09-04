Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71194A8693
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D0489C1F;
	Wed,  4 Sep 2019 16:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1916989C1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="173632800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Sep 2019 09:26:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:17 +0300
Message-Id: <20190904162625.15048-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: Check pipe source size against
 pfit limits
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBwYW5lbCBmaXR0ZXIgaW1wb3NlcyBleHRyYSBsaW1pdHMgb24gdGhlIG1heGltdW0gcGlwZSBz
b3VyY2UKc2l6ZSB3ZSBjYW4gdXNlLiBDaGVjayBmb3IgdGhhdC4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1NiArKysrKysrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDM0ODA3MWRiOGI0Yy4uMDli
YjhkOTI1NGNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTE3NjgsNiArMTE3NjgsNTYgQEAgc3RhdGljIGJvb2wgYzhfcGxhbmVzX2NoYW5n
ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogCXJldHVy
biAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5lcyAhPSAhbmV3X2NydGNfc3RhdGUtPmM4X3BsYW5l
czsKIH0KIAorc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlp
bnQgbWF4X3NyY193LCBtYXhfc3JjX2g7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkgeworCQltYXhfc3JjX3cgPSA1MTIwOworCQltYXhfc3JjX2ggPSA0MzIwOworCX0gZWxzZSBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkg
eworCQltYXhfc3JjX3cgPSBjcnRjLT5waXBlID09IFBJUEVfQSA/IDUxMjAgOiA0MDk2OworCQlt
YXhfc3JjX2ggPSA0MDk2OworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KSB7
CisJCW1heF9zcmNfdyA9IDQwOTY7CisJCW1heF9zcmNfaCA9IDQwOTY7CisJfSBlbHNlIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDcpIHsKKwkJLyoKKwkJICogUEYwIDd4NSBjYXBhYmxlCisJ
CSAqIFBGMSAzeDMgY2FwYWJsZSAoY291bGQgYmUgc3dpdGNoZWQgdG8gN3g1CisJCSAqICAgICAg
ICAgICAgICAgICAgbW9kZSBvbiBIU1cgd2hlbiBQRjIgdW51c2VkKQorCQkgKiBQRjIgM3gzIGNh
cGFibGUKKwkJICoKKwkJICogVGhpcyBhc3N1bWVzIHdlIHVzZSBhIDE6MSBtYXBwaW5nIGJldHdl
ZW4gcGlwZSBhbmQgUEYuCisJCSAqLworCQltYXhfc3JjX3cgPSBjcnRjLT5waXBlID09IFBJUEVf
QSA/IDQwOTYgOiAyMDQ4OworCQltYXhfc3JjX2ggPSA0MDk2OworCX0gZWxzZSB7CisJCW1heF9z
cmNfdyA9IDQwOTY7CisJCW1heF9zcmNfaCA9IDQwOTY7CisJfQorCisJaWYgKGNydGNfc3RhdGUt
PnBpcGVfc3JjX3cgPiBtYXhfc3JjX3cgfHwKKwkgICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCA+
IG1heF9zcmNfaCkgeworCQlEUk1fREVCVUdfS01TKCJwaXBlICVjIHNvdXJjZSBzaXplICglZHgl
ZCkgZXhjZWVkcyBwZml0IG1heCAoJWR4JWQpXG4iLAorCQkJICAgICAgcGlwZV9uYW1lKGNydGMt
PnBpcGUpLCBjcnRjX3N0YXRlLT5waXBlX3NyY193LAorCQkJICAgICAgY3J0Y19zdGF0ZS0+cGlw
ZV9zcmNfaCwgbWF4X3NyY193LCBtYXhfc3JjX2gpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisK
KwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVjayhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoIWNydGNfc3RhdGUt
PnBjaF9wZml0LmVuYWJsZWQpCisJCXJldHVybiAwOworCisJcmV0dXJuIGludGVsX3BjaF9wZml0
X2NoZWNrX3NyY19zaXplKGNydGNfc3RhdGUpOworfQorCiBzdGF0aWMgaW50IGludGVsX2NydGNf
YXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkJCQkgICBzdHJ1Y3QgZHJtX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC0xMTc5MSw2ICsxMTg0MSwxMiBAQCBzdGF0aWMg
aW50IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkJCXJl
dHVybiByZXQ7CiAJfQogCisJaWYgKCFIQVNfR01DSChkZXZfcHJpdikpIHsKKwkJcmV0ID0gaW50
ZWxfcGNoX3BmaXRfY2hlY2socGlwZV9jb25maWcpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJl
dDsKKwl9CisKIAkvKgogCSAqIE1heSBuZWVkIHRvIHVwZGF0ZSBwaXBlIGdhbW1hIGVuYWJsZSBi
aXRzCiAJICogd2hlbiBDOCBwbGFuZXMgYXJlIGdldHRpbmcgZW5hYmxlZC9kaXNhYmxlZC4KLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
