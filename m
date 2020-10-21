Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5FF29494A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 10:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6524B6EA7E;
	Wed, 21 Oct 2020 08:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870E96EA78
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 08:21:50 +0000 (UTC)
IronPort-SDR: wP+BLBV1mL8jZwQ3UEzCF7klX6wdANd7sNBrSNVtT3xFlVE2eFMLarOkV1Iwa2gTpnqZe2OZKR
 h4HFSHUdXA6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167452505"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="167452505"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 01:21:49 -0700
IronPort-SDR: lfLMz9wq3uaXMDyRz2C0B14VUkSmY/PeDyGuB9zGVNxklUpihkV45dtduxgT9QIhtXmnpNpRCv
 4UKNKNf4tUDQ==
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="316303278"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 01:21:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 01:20:29 -0700
Message-Id: <20201021082034.3170478-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021082034.3170478-1-lucas.demarchi@intel.com>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dg1: add hpd interrupt handling
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

REcxIGhhcyBvbmUgbW9yZSBjb21ibyBwaHkgcG9ydCwgbm8gVEMgYW5kIGFsbCBpcnEgaGFuZGxp
bmcgZ29lcyB0aHJvdWdoClNERSwgbGlrZSBmb3IgTUNDLgoKdjI6IEFsc28gY2hhbmdlIGludGVs
X2hwZF9waW5fZGVmYXVsdCgpIHRvIGluY2x1ZGUgREcxIG1hcHBpbmcKdjMsIHY0OiBSZWJhc2Ug
b24gaHBkIHJlZmFjdG9yCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+
CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEzICsrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgICB8IDM3ICsrKysrKysrKysrKysrKysrKysrLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICA4ICsrKysrCiAzIGZpbGVzIGNo
YW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYmIwYjk5MzA5NThmLi4zYTk5ZjIwOWYxZTYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNTA2Niw2ICs1
MDY2LDE1IEBAIHN0YXRpYyBib29sIGh0aV91c2VzX3BoeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgZW51bSBwaHkgcGh5KQogCQkgaTkxNS0+aHRpX3N0YXRlICYgSERQT1JUX1BIWV9V
U0VEX0hETUkocGh5KSk7CiB9CiAKK3N0YXRpYyBlbnVtIGhwZF9waW4gZGcxX2hwZF9waW4oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCWVudW0gcG9ydCBwb3J0KQorewor
CWlmIChwb3J0ID49IFBPUlRfRCkKKwkJcmV0dXJuIEhQRF9QT1JUX0MgKyBwb3J0IC0gUE9SVF9E
OworCWVsc2UKKwkJcmV0dXJuIEhQRF9QT1JUX0EgKyBwb3J0IC0gUE9SVF9BOworfQorCiBzdGF0
aWMgZW51bSBocGRfcGluIHRnbF9ocGRfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAkJCQllbnVtIHBvcnQgcG9ydCkKIHsKQEAgLTUxOTUsNyArNTIwNCw5IEBAIHZvaWQg
aW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBv
cnQgcG9ydCkKIAllbmNvZGVyLT5jbG9uZWFibGUgPSAwOwogCWVuY29kZXItPnBpcGVfbWFzayA9
IH4wOwogCi0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQorCWlmIChJU19ERzEoZGV2X3By
aXYpKQorCQllbmNvZGVyLT5ocGRfcGluID0gZGcxX2hwZF9waW4oZGV2X3ByaXYsIHBvcnQpOwor
CWVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQogCQllbmNvZGVyLT5ocGRfcGluID0g
cmtsX2hwZF9waW4oZGV2X3ByaXYsIHBvcnQpOwogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpCiAJCWVuY29kZXItPmhwZF9waW4gPSB0Z2xfaHBkX3BpbihkZXZfcHJpdiwgcG9y
dCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCBiNzUzYzc3YzlhNzcuLmI2MTY5ZmJhZGIx
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0xNTIsNiArMTUyLDEzIEBAIHN0YXRpYyBj
b25zdCB1MzIgaHBkX2ljcFtIUERfTlVNX1BJTlNdID0gewogCVtIUERfUE9SVF9UQzZdID0gU0RF
X1RDX0hPVFBMVUdfSUNQKFBPUlRfVEM2KSwKIH07CiAKK3N0YXRpYyBjb25zdCB1MzIgaHBkX3Nk
ZV9kZzFbSFBEX05VTV9QSU5TXSA9IHsKKwlbSFBEX1BPUlRfQV0gPSBTREVfRERJX0hPVFBMVUdf
SUNQKFBPUlRfQSksCisJW0hQRF9QT1JUX0JdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0Ip
LAorCVtIUERfUE9SVF9DXSA9IFNERV9ERElfSE9UUExVR19JQ1AoUE9SVF9DKSwKKwlbSFBEX1BP
UlRfRF0gPSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfRCksCit9OworCiBzdGF0aWMgdm9pZCBp
bnRlbF9ocGRfaW5pdF9waW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
IAlzdHJ1Y3QgaTkxNV9ob3RwbHVnICpocGQgPSAmZGV2X3ByaXYtPmhvdHBsdWc7CkBAIC0xNzYs
MTEgKzE4MywxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9ocGRfaW5pdF9waW5zKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAllbHNlCiAJCWhwZC0+aHBkID0gaHBkX2lsazsKIAot
CWlmICghSEFTX1BDSF9TUExJVChkZXZfcHJpdikgfHwgSEFTX1BDSF9OT1AoZGV2X3ByaXYpKQor
CWlmICgoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpIDwgUENIX0RHMSkgJiYKKwkgICAgKCFIQVNf
UENIX1NQTElUKGRldl9wcml2KSB8fCBIQVNfUENIX05PUChkZXZfcHJpdikpKQogCQlyZXR1cm47
CiAKLQlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpIHx8IEhBU19QQ0hfSlNQKGRldl9wcml2KSB8
fAotCSAgICBIQVNfUENIX0lDUChkZXZfcHJpdikgfHwgSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQor
CWlmIChIQVNfUENIX0RHMShkZXZfcHJpdikpCisJCWhwZC0+cGNoX2hwZCA9IGhwZF9zZGVfZGcx
OworCWVsc2UgaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSB8fCBIQVNfUENIX0pTUChkZXZfcHJp
dikgfHwKKwkJIEhBU19QQ0hfSUNQKGRldl9wcml2KSB8fCBIQVNfUENIX01DQyhkZXZfcHJpdikp
CiAJCWhwZC0+cGNoX2hwZCA9IGhwZF9pY3A7CiAJZWxzZSBpZiAoSEFTX1BDSF9DTlAoZGV2X3By
aXYpIHx8IEhBU19QQ0hfU1BUKGRldl9wcml2KSkKIAkJaHBkLT5wY2hfaHBkID0gaHBkX3NwdDsK
QEAgLTEwNzQsNiArMTA4NCw4IEBAIHN0YXRpYyBib29sIGljcF9kZGlfcG9ydF9ob3RwbHVnX2xv
bmdfZGV0ZWN0KGVudW0gaHBkX3BpbiBwaW4sIHUzMiB2YWwpCiAJCXJldHVybiB2YWwgJiBTSE9U
UExVR19DVExfRERJX0hQRF9MT05HX0RFVEVDVChQT1JUX0IpOwogCWNhc2UgSFBEX1BPUlRfQzoK
IAkJcmV0dXJuIHZhbCAmIFNIT1RQTFVHX0NUTF9ERElfSFBEX0xPTkdfREVURUNUKFBPUlRfQyk7
CisJY2FzZSBIUERfUE9SVF9EOgorCQlyZXR1cm4gdmFsICYgU0hPVFBMVUdfQ1RMX0RESV9IUERf
TE9OR19ERVRFQ1QoUE9SVF9EKTsKIAlkZWZhdWx0OgogCQlyZXR1cm4gZmFsc2U7CiAJfQpAQCAt
MTg2NCw3ICsxODc2LDEwIEBAIHN0YXRpYyB2b2lkIGljcF9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQogCXUzMiBkZGlfaG90cGx1Z190
cmlnZ2VyLCB0Y19ob3RwbHVnX3RyaWdnZXI7CiAJdTMyIHBpbl9tYXNrID0gMCwgbG9uZ19tYXNr
ID0gMDsKIAotCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpIHsKKwlpZiAoSEFTX1BDSF9ERzEo
ZGV2X3ByaXYpKSB7CisJCWRkaV9ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX0RESV9N
QVNLX0RHMTsKKwkJdGNfaG90cGx1Z190cmlnZ2VyID0gMDsKKwl9IGVsc2UgaWYgKEhBU19QQ0hf
VEdQKGRldl9wcml2KSkgewogCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9E
RElfTUFTS19UR1A7CiAJCXRjX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBTREVfVENfTUFT
S19UR1A7CiAJfSBlbHNlIGlmIChIQVNfUENIX0pTUChkZXZfcHJpdikpIHsKQEAgLTMyNTIsNiAr
MzI2NywxMiBAQCBzdGF0aWMgdm9pZCBqc3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQkgIFRHUF9ERElfSFBEX0VOQUJMRV9NQVNLLCAwKTsKIH0K
IAorc3RhdGljIHZvaWQgZGcxX2hwZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQoreworCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAorCQkJICBERzFfRERJ
X0hQRF9FTkFCTEVfTUFTSywgMCk7Cit9CisKIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9kZXRlY3Rp
b25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBob3Rw
bHVnOwpAQCAtMzY0NSw3ICszNjY2LDkgQEAgc3RhdGljIHZvaWQgaWNwX2lycV9wb3N0aW5zdGFs
bChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZ2VuM19hc3NlcnRfaWlyX2lz
X3plcm8oJmRldl9wcml2LT51bmNvcmUsIFNERUlJUik7CiAJSTkxNV9XUklURShTREVJTVIsIH5t
YXNrKTsKIAotCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpIHsKKwlpZiAoSEFTX1BDSF9ERzEo
ZGV2X3ByaXYpKQorCQlpY3BfZGRpX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIERHMV9E
RElfSFBEX0VOQUJMRV9NQVNLKTsKKwllbHNlIGlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpIHsK
IAkJaWNwX2RkaV9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfRERJX0hQRF9FTkFC
TEVfTUFTSyk7CiAJCWljcF90Y19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfVENf
SFBEX0VOQUJMRV9NQVNLKTsKIAl9IGVsc2UgaWYgKEhBU19QQ0hfSlNQKGRldl9wcml2KSkgewpA
QCAtNDE2Miw3ICs0MTg1LDkgQEAgdm9pZCBpbnRlbF9pcnFfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWlmIChJOTE1X0hBU19IT1RQTFVHKGRldl9wcml2KSkKIAkJ
CWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBpOTE1X2hwZF9pcnFfc2V0dXA7CiAJ
fSBlbHNlIHsKLQkJaWYgKEhBU19QQ0hfSlNQKGRldl9wcml2KSkKKwkJaWYgKEhBU19QQ0hfREcx
KGRldl9wcml2KSkKKwkJCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBkZzFfaHBk
X2lycV9zZXR1cDsKKwkJZWxzZSBpZiAoSEFTX1BDSF9KU1AoZGV2X3ByaXYpKQogCQkJZGV2X3By
aXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGpzcF9ocGRfaXJxX3NldHVwOwogCQllbHNlIGlm
IChIQVNfUENIX01DQyhkZXZfcHJpdikpCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3Nl
dHVwID0gbWNjX2hwZF9pcnFfc2V0dXA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2ZDk3
ZTYyODZjMmQuLjIzNjE5OTg5MTYxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04MjM1
LDYgKzgyMzUsMTAgQEAgZW51bSB7CiAJCQkJCSBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzMp
IHwgXAogCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMyKSB8IFwKIAkJCQkJIFNERV9U
Q19IT1RQTFVHX0lDUChQT1JUX1RDMSkpCisjZGVmaW5lIFNERV9ERElfTUFTS19ERzEJCShTREVf
RERJX0hPVFBMVUdfSUNQKFBPUlRfRCkgfCBcCisJCQkJCSBTREVfRERJX0hPVFBMVUdfSUNQKFBP
UlRfQykgfCBcCisJCQkJCSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQikgfCBcCisJCQkJCSBT
REVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQSkpCiAKICNkZWZpbmUgU0RFSVNSICBfTU1JTygweGM0
MDAwKQogI2RlZmluZSBTREVJTVIgIF9NTUlPKDB4YzQwMDQpCkBAIC04NDM0LDYgKzg0MzgsMTAg
QEAgZW51bSB7CiAjZGVmaW5lIFRHUF9UQ19IUERfRU5BQkxFX01BU0sJCShJQ1BfVENfSFBEX0VO
QUJMRShQT1JUX1RDNikgfCBcCiAJCQkJCSBJQ1BfVENfSFBEX0VOQUJMRShQT1JUX1RDNSkgfCBc
CiAJCQkJCSBJQ1BfVENfSFBEX0VOQUJMRV9NQVNLKQorI2RlZmluZSBERzFfRERJX0hQRF9FTkFC
TEVfTUFTSwkJKFNIT1RQTFVHX0NUTF9ERElfSFBEX0VOQUJMRShQT1JUX0QpIHwgXAorCQkJCQkg
U0hPVFBMVUdfQ1RMX0RESV9IUERfRU5BQkxFKFBPUlRfQykgfCBcCisJCQkJCSBTSE9UUExVR19D
VExfRERJX0hQRF9FTkFCTEUoUE9SVF9CKSB8IFwKKwkJCQkJIFNIT1RQTFVHX0NUTF9ERElfSFBE
X0VOQUJMRShQT1JUX0EpKQogCiAjZGVmaW5lIF9QQ0hfRFBMTF9BICAgICAgICAgICAgICAweGM2
MDE0CiAjZGVmaW5lIF9QQ0hfRFBMTF9CICAgICAgICAgICAgICAweGM2MDE4Ci0tIAoyLjI4LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
