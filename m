Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484E284E0A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3286E4B3;
	Tue,  6 Oct 2020 14:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2438389864
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:53 +0000 (UTC)
IronPort-SDR: UCxYmQiXtZYwNyzVM6tJ8SMKJWo6rZD5Y3k/vdfwuecJieEQWPAx2bj9kF1QqJuq3MP2qb+0Lw
 tFlNlHNHF0mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="226113794"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="226113794"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:34 -0700
IronPort-SDR: a0eChOtoku93PXSDYmhZOAMqg+y1+4re7QlyZGncUU3HLmWm88viiNRUfeAfz3JrWgnIAjYhcV
 +1DJnBRRTBgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="354397191"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 06 Oct 2020 07:34:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:44 +0300
Message-Id: <20201006143349.5561-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/20] drm/i915: Don't enable hpd detection
 logic from irq_postinstall()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiB0aGF0IEkgY2FuIHNlZSB3aHkgd2Ugc2hvdWxkIGVuYWJsZSB0aGUgaHBkIGRldGVj
dGlvbiBsb2dpYwphbHJlYWR5IGR1cmluZyBpcnEgcG9zdGluc3RhbGwgcGhhc2UuIFdlIGRvbid0
IGV2ZW4gZG8gdGhpcyBvbiBhbGwKdGhlIHBsYXRmb3Jtcy4gV2UganVzdCBuZWVkIGl0IGJlZm9y
ZSB3ZSBhY3R1YWxseSBlbmFibGUgdGhlIGhvdHBsdWcKaW50ZXJydXB0cyBpbiAuaHBkX2lycV9z
ZXR1cCgpLCBhbmQgaW4gZmFjdCB3ZSBhbHJlYWR5IGRvIGl0IHRoZXJlIGFzCndlbGwuIExldCdz
IGp1c3QgZWxpbWluYXRlIHRoZSByZWR1bmRhbnQgZWFybHkgc2V0dXAuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAzOCArKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDA4ODYzNjllMzg5MC4uYjFjNTZhMjkz
NzZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTMzNzgsOCArMzM3OCw4IEBAIHN0YXRp
YyB2b2lkIGlsa19ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAlpYnhfaHBkX2lycV9zZXR1cChkZXZfcHJpdik7CiB9CiAKLXN0YXRpYyB2b2lkIF9fYnh0
X2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAot
CQkJCSAgICAgIHUzMiBlbmFibGVkX2lycXMpCitzdGF0aWMgdm9pZCBieHRfaHBkX2RldGVjdGlv
bl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJICAgIHUzMiBl
bmFibGVkX2lycXMpCiB7CiAJdTMyIGhvdHBsdWc7CiAKQEAgLTM0MTAsMTEgKzM0MTAsNiBAQCBz
dGF0aWMgdm9pZCBfX2J4dF9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAlJOTE1X1dSSVRFKFBDSF9QT1JUX0hPVFBMVUcsIGhvdHBsdWcpOwog
fQogCi1zdGF0aWMgdm9pZCBieHRfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCi17Ci0JX19ieHRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJp
diwgQlhUX0RFX1BPUlRfSE9UUExVR19NQVNLKTsKLX0KLQogc3RhdGljIHZvaWQgYnh0X2hwZF9p
cnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBob3Rw
bHVnX2lycXMsIGVuYWJsZWRfaXJxczsKQEAgLTM0MjQsNyArMzQxOSw3IEBAIHN0YXRpYyB2b2lk
IGJ4dF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAog
CWJkd191cGRhdGVfcG9ydF9pcnEoZGV2X3ByaXYsIGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFz
KTsKIAotCV9fYnh0X2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIGVuYWJsZWRfaXJxcyk7
CisJYnh0X2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIGVuYWJsZWRfaXJxcyk7CiB9CiAK
IHN0YXRpYyB2b2lkIGlieF9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQpAQCAtMzQ0MywxMiArMzQzOCw2IEBAIHN0YXRpYyB2b2lkIGlieF9pcnFfcG9z
dGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJZ2VuM19hc3Nl
cnRfaWlyX2lzX3plcm8oJmRldl9wcml2LT51bmNvcmUsIFNERUlJUik7CiAJSTkxNV9XUklURShT
REVJTVIsIH5tYXNrKTsKLQotCWlmIChIQVNfUENIX0lCWChkZXZfcHJpdikgfHwgSEFTX1BDSF9D
UFQoZGV2X3ByaXYpIHx8Ci0JICAgIEhBU19QQ0hfTFBUKGRldl9wcml2KSkKLQkJaWJ4X2hwZF9k
ZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOwotCWVsc2UKLQkJc3B0X2hwZF9kZXRlY3Rpb25fc2V0
dXAoZGV2X3ByaXYpOwogfQogCiBzdGF0aWMgdm9pZCBpbGtfaXJxX3Bvc3RpbnN0YWxsKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKQEAgLTM0ODUsOCArMzQ3NCw2IEBAIHN0YXRp
YyB2b2lkIGlsa19pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCiAJZ2VuNV9ndF9pcnFfcG9zdGluc3RhbGwoJmRldl9wcml2LT5ndCk7CiAKLQlpbGtf
aHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7Ci0KIAlpYnhfaXJxX3Bvc3RpbnN0YWxsKGRl
dl9wcml2KTsKIAogCWlmIChJU19JUk9OTEFLRV9NKGRldl9wcml2KSkgewpAQCAtMzYxOCwxMiAr
MzYwNSw2IEBAIHN0YXRpYyB2b2lkIGdlbjhfZGVfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCQlHRU4zX0lSUV9JTklUKHVuY29yZSwgR0VOMTFf
REVfSFBEXywgfmRlX2hwZF9tYXNrZWQsCiAJCQkgICAgICBkZV9ocGRfZW5hYmxlcyk7Ci0JCWdl
bjExX3RjX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOwotCQlnZW4xMV90YnRfaHBkX2Rl
dGVjdGlvbl9zZXR1cChkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2
KSkgewotCQlieHRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJ
U19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7Ci0JCWlsa19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9w
cml2KTsKIAl9CiB9CiAKQEAgLTM2NTEsMTkgKzM2MzIsNiBAQCBzdGF0aWMgdm9pZCBpY3BfaXJx
X3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWdlbjNf
YXNzZXJ0X2lpcl9pc196ZXJvKCZkZXZfcHJpdi0+dW5jb3JlLCBTREVJSVIpOwogCUk5MTVfV1JJ
VEUoU0RFSU1SLCB+bWFzayk7Ci0KLQlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpKSB7Ci0JCWlj
cF9kZGlfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwgVEdQX0RESV9IUERfRU5BQkxFX01B
U0spOwotCQlpY3BfdGNfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwgVEdQX1RDX0hQRF9F
TkFCTEVfTUFTSyk7Ci0JfSBlbHNlIGlmIChIQVNfUENIX0pTUChkZXZfcHJpdikpIHsKLQkJaWNw
X2RkaV9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfRERJX0hQRF9FTkFCTEVfTUFT
Syk7Ci0JfSBlbHNlIGlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpIHsKLQkJaWNwX2RkaV9ocGRf
ZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBJQ1BfRERJX0hQRF9FTkFCTEVfTUFTSyk7Ci0JCWlj
cF90Y19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBJQ1BfVENfSFBEX0VOQUJMRShIUERf
UE9SVF9UQzEpKTsKLQl9IGVsc2UgewotCQlpY3BfZGRpX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2
X3ByaXYsIElDUF9ERElfSFBEX0VOQUJMRV9NQVNLKTsKLQkJaWNwX3RjX2hwZF9kZXRlY3Rpb25f
c2V0dXAoZGV2X3ByaXYsIElDUF9UQ19IUERfRU5BQkxFX01BU0spOwotCX0KIH0KIAogc3RhdGlj
IHZvaWQgZ2VuMTFfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
