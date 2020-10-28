Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CAC29D2AE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988E56E5B9;
	Wed, 28 Oct 2020 21:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40786E5B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:34:04 +0000 (UTC)
IronPort-SDR: rHI+UibxBbq5sJ01gM1bqC/ok43MFrJl/yy6V2XbquiGD4iKmoV0CBccVDC2jgK1BQJsfjhwm4
 MY8QMTCqDu1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="165751516"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="165751516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:34:04 -0700
IronPort-SDR: GYv6un7Em8YszI8nhEnhOGwikPusXLer4m8WuWfDYT+/DFBIqdLkNkS7potXQxclNMwL6jpS87
 7dveyEYIMPLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="361266071"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 28 Oct 2020 14:34:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Oct 2020 23:34:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 23:33:17 +0200
Message-Id: <20201028213323.5423-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 13/19] drm/i915: Split
 gen11_hpd_detection_setup() into tc vs. tbt variants
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiB0byBzdHVmZiBib3RoIHR5cGUtYyBhbmQgdGJ0IGludG8gdGhlIHNhbWUgZnVuY3Rp
b24uCkxldCdzIHNwbGl0IHRoaXMgc28gd2UgbWF5IG1vcmUgZWFzaWx5IGhhbmRsZSBwbGF0Zm9y
bXMgdGhhdApsYWNrIHRoZSB0YnQgc3BlZmlmaWMgYml0cy4KClJldmlld2VkLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTMgKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
aW5kZXggYjM1NWUwMzA3YThhLi40M2UzZTdmNzBjMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwpAQCAtMzI4MSw3ICszMjgxLDcgQEAgc3RhdGljIHZvaWQgZGcxX2hwZF9pcnFfc2V0dXAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJICBERzFfRERJX0hQRF9FTkFCTEVf
TUFTSywgMCk7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjExX2hwZF9kZXRlY3Rpb25fc2V0dXAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgZ2VuMTFfdGNfaHBk
X2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
dTMyIGhvdHBsdWc7CiAKQEAgLTMyOTMsNiArMzI5MywxMSBAQCBzdGF0aWMgdm9pZCBnZW4xMV9o
cGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJ
ICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNSkgfAogCQkgICBHRU4xMV9I
T1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEM2KTsKIAlJOTE1X1dSSVRFKEdFTjExX1RDX0hP
VFBMVUdfQ1RMLCBob3RwbHVnKTsKK30KKworc3RhdGljIHZvaWQgZ2VuMTFfdGJ0X2hwZF9kZXRl
Y3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXUzMiBo
b3RwbHVnOwogCiAJaG90cGx1ZyA9IEk5MTVfUkVBRChHRU4xMV9UQlRfSE9UUExVR19DVEwpOwog
CWhvdHBsdWcgfD0gR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDMSkgfApAQCAt
MzMxOCw3ICszMzIzLDggQEAgc3RhdGljIHZvaWQgZ2VuMTFfaHBkX2lycV9zZXR1cChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJSTkxNV9XUklURShHRU4xMV9ERV9IUERfSU1S
LCB2YWwpOwogCVBPU1RJTkdfUkVBRChHRU4xMV9ERV9IUERfSU1SKTsKIAotCWdlbjExX2hwZF9k
ZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOworCWdlbjExX3RjX2hwZF9kZXRlY3Rpb25fc2V0dXAo
ZGV2X3ByaXYpOworCWdlbjExX3RidF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKIAog
CWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX1RHUCkKIAkJaWNwX2hwZF9pcnFf
c2V0dXAoZGV2X3ByaXYsCkBAIC0zNjMzLDcgKzM2MzksOCBAQCBzdGF0aWMgdm9pZCBnZW44X2Rl
X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkJ
R0VOM19JUlFfSU5JVCh1bmNvcmUsIEdFTjExX0RFX0hQRF8sIH5kZV9ocGRfbWFza2VkLAogCQkJ
ICAgICAgZGVfaHBkX2VuYWJsZXMpOwotCQlnZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9w
cml2KTsKKwkJZ2VuMTFfdGNfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7CisJCWdlbjEx
X3RidF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKIAl9IGVsc2UgaWYgKElTX0dFTjlf
TFAoZGV2X3ByaXYpKSB7CiAJCWJ4dF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKIAl9
IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
