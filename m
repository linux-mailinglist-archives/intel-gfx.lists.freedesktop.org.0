Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FB1284E05
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6578589A44;
	Tue,  6 Oct 2020 14:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DE189A44
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:41 +0000 (UTC)
IronPort-SDR: /gOhg35HpSkCzlYEvk8AYDThP4xTP0B3hag8ZcHOy0pZFdFWqCQqAUhsZSl18yoHFv1qrziHbX
 15HaaeJYA1bQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161897641"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161897641"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:41 -0700
IronPort-SDR: 6663seuuIK4BZyGfHvTA8va//JME8kUPuF6ua+MGkI03eFZlCBDFEqeMhI/iaYC+vQ47AY3Vlq
 LPIUFTZ2ypPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="296983874"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 06 Oct 2020 07:34:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:46 +0300
Message-Id: <20201006143349.5561-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/20] drm/i915: Remove the per-plaform IIR HPD
 masking
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IG5vIGxvbmdlciB1bm1hc2sgYWxsIEhQRCBpcnFzLCBzbyB3ZSBjYW4gZHJvcCB0aGUgdWdseSBw
ZXItcGxhdGZvcm0KSFBEIElJUiBtYXNraW5nLiBJTVIgd2lsbCBwcmV2ZW50IHVuc3VwcG9ydGVk
IGJpdHMgZnJvbSBhcHBlYXJpbmcgaW4KSUlSLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jIHwgMjEgKystLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIHwgMTAgKystLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4
IDFmYTg4MDI3MmQ4OC4uZGQ2YThkMjY5MGY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAg
LTE4ODYsMjcgKzE4ODYsMTAgQEAgc3RhdGljIHZvaWQgY3B0X2lycV9oYW5kbGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBjaF9paXIpCiAKIHN0YXRpYyB2b2lkIGlj
cF9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hf
aWlyKQogewotCXUzMiBkZGlfaG90cGx1Z190cmlnZ2VyLCB0Y19ob3RwbHVnX3RyaWdnZXI7CisJ
dTMyIGRkaV9ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX0lDUDsKKwl1
MzIgdGNfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9UQ19NQVNLX0lDUDsKIAl1MzIg
cGluX21hc2sgPSAwLCBsb25nX21hc2sgPSAwOwogCi0JaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2
KSkgewotCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19UR1A7
Ci0JCXRjX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBTREVfVENfTUFTS19UR1A7Ci0JfSBl
bHNlIGlmIChIQVNfUENIX0pTUChkZXZfcHJpdikpIHsKLQkJZGRpX2hvdHBsdWdfdHJpZ2dlciA9
IHBjaF9paXIgJiBTREVfRERJX01BU0tfVEdQOwotCQl0Y19ob3RwbHVnX3RyaWdnZXIgPSAwOwot
CX0gZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7Ci0JCWRkaV9ob3RwbHVnX3RyaWdn
ZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX0lDUDsKLQkJdGNfaG90cGx1Z190cmlnZ2VyID0g
cGNoX2lpciAmIFNERV9UQ19IT1RQTFVHX0lDUChIUERfUE9SVF9UQzEpOwotCX0gZWxzZSB7Ci0J
CWRybV9XQVJOKCZkZXZfcHJpdi0+ZHJtLCAhSEFTX1BDSF9JQ1AoZGV2X3ByaXYpLAotCQkJICJV
bnJlY29nbml6ZWQgUENIIHR5cGUgMHgleFxuIiwKLQkJCSBJTlRFTF9QQ0hfVFlQRShkZXZfcHJp
dikpOwotCi0JCWRkaV9ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX0lD
UDsKLQkJdGNfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9UQ19NQVNLX0lDUDsKLQl9
Ci0KIAlpZiAoZGRpX2hvdHBsdWdfdHJpZ2dlcikgewogCQl1MzIgZGlnX2hvdHBsdWdfcmVnOwog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiM2FlMDAyYmY2MjguLmQyMTc1ZmFmN2QzNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04MzE5LDE2ICs4MzE5LDEwIEBAIGVudW0gewog
I2RlZmluZSBTREVfR01CVVNfSUNQCQkJKDEgPDwgMjMpCiAjZGVmaW5lIFNERV9UQ19IT1RQTFVH
X0lDUChocGRfcGluKQlSRUdfQklUKDI0ICsgX0hQRF9QSU5fVEMoaHBkX3BpbikpCiAjZGVmaW5l
IFNERV9ERElfSE9UUExVR19JQ1AoaHBkX3BpbikJUkVHX0JJVCgxNiArIF9IUERfUElOX0RESSho
cGRfcGluKSkKLSNkZWZpbmUgU0RFX0RESV9NQVNLX0lDUAkJKFNERV9ERElfSE9UUExVR19JQ1Ao
SFBEX1BPUlRfQikgfCBcCi0JCQkJCSBTREVfRERJX0hPVFBMVUdfSUNQKEhQRF9QT1JUX0EpKQot
I2RlZmluZSBTREVfVENfTUFTS19JQ1AJCQkoU0RFX1RDX0hPVFBMVUdfSUNQKEhQRF9QT1JUX1RD
NCkgfCBcCi0JCQkJCSBTREVfVENfSE9UUExVR19JQ1AoSFBEX1BPUlRfVEMzKSB8IFwKLQkJCQkJ
IFNERV9UQ19IT1RQTFVHX0lDUChIUERfUE9SVF9UQzIpIHwgXAotCQkJCQkgU0RFX1RDX0hPVFBM
VUdfSUNQKEhQRF9QT1JUX1RDMSkpCi0jZGVmaW5lIFNERV9ERElfTUFTS19UR1AJCShTREVfRERJ
X0hPVFBMVUdfSUNQKEhQRF9QT1JUX0MpIHwgXAorI2RlZmluZSBTREVfRERJX01BU0tfSUNQCQko
U0RFX0RESV9IT1RQTFVHX0lDUChIUERfUE9SVF9DKSB8IFwKIAkJCQkJIFNERV9ERElfSE9UUExV
R19JQ1AoSFBEX1BPUlRfQikgfCBcCiAJCQkJCSBTREVfRERJX0hPVFBMVUdfSUNQKEhQRF9QT1JU
X0EpKQotI2RlZmluZSBTREVfVENfTUFTS19UR1AJCQkoU0RFX1RDX0hPVFBMVUdfSUNQKEhQRF9Q
T1JUX1RDNikgfCBcCisjZGVmaW5lIFNERV9UQ19NQVNLX0lDUAkJCShTREVfVENfSE9UUExVR19J
Q1AoSFBEX1BPUlRfVEM2KSB8IFwKIAkJCQkJIFNERV9UQ19IT1RQTFVHX0lDUChIUERfUE9SVF9U
QzUpIHwgXAogCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKEhQRF9QT1JUX1RDNCkgfCBcCiAJCQkJ
CSBTREVfVENfSE9UUExVR19JQ1AoSFBEX1BPUlRfVEMzKSB8IFwKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
