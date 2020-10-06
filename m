Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE45284E0B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2789E6E4B5;
	Tue,  6 Oct 2020 14:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BA589864
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:53 +0000 (UTC)
IronPort-SDR: 7WeYjej8TasIy4Jn71Utq6VISoCf+eVpZubCW7MKelkFtYIRI0u4XSnmq126eJPimfpx9u2QgB
 i2ScjV4gyGAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161123569"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161123569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:31 -0700
IronPort-SDR: nUaOu3FDH5xdnVbeKMNenLdMjYJllziuO9Y58kMhip/AMtzYmMfhBjCH+IcG5AT8b0ft7GrTUX
 4y3RyiJ9jMjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="353505154"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2020 07:34:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:43 +0300
Message-Id: <20201006143349.5561-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/20] drm/i915: Split
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiB0byBzdHVmZiBib3RoIHR5cGUtYyBhbmQgdGJ0IGludG8gdGhlIHNhbWUgZnVuY3Rp
b24uCkxldCdzIHNwbGl0IHRoaXMgc28gd2UgbWF5IG1vcmUgZWFzaWx5IGhhbmRsZSBwbGF0Zm9y
bXMgdGhhdApsYWNrIHRoZSB0YnQgc3BlZmlmaWMgYml0cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDEzICsrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CmluZGV4IDg3Y2NjODJiZjIxZC4uMDg4NjM2OWUzODkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKQEAgLTMyNTIsNyArMzI1Miw3IEBAIHN0YXRpYyB2b2lkIGpzcF9ocGRfaXJxX3NldHVwKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCSAgVEdQX0RESV9IUERfRU5BQkxF
X01BU0ssIDApOwogfQogCi1zdGF0aWMgdm9pZCBnZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdlbjExX3RjX2hw
ZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewog
CXUzMiBob3RwbHVnOwogCkBAIC0zMjY0LDYgKzMyNjQsMTEgQEAgc3RhdGljIHZvaWQgZ2VuMTFf
aHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzUpIHwKIAkJICAgR0VOMTFf
SE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNik7CiAJSTkxNV9XUklURShHRU4xMV9UQ19I
T1RQTFVHX0NUTCwgaG90cGx1Zyk7Cit9CisKK3N0YXRpYyB2b2lkIGdlbjExX3RidF9ocGRfZGV0
ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwl1MzIg
aG90cGx1ZzsKIAogCWhvdHBsdWcgPSBJOTE1X1JFQUQoR0VOMTFfVEJUX0hPVFBMVUdfQ1RMKTsK
IAlob3RwbHVnIHw9IEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzEpIHwKQEAg
LTMyODksNyArMzI5NCw4IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9pcnFfc2V0dXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJVEUoR0VOMTFfREVfSFBEX0lN
UiwgdmFsKTsKIAlQT1NUSU5HX1JFQUQoR0VOMTFfREVfSFBEX0lNUik7CiAKLQlnZW4xMV9ocGRf
ZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKKwlnZW4xMV90Y19ocGRfZGV0ZWN0aW9uX3NldHVw
KGRldl9wcml2KTsKKwlnZW4xMV90YnRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7CiAK
IAlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9UR1ApCiAJCWljcF9ocGRfaXJx
X3NldHVwKGRldl9wcml2LApAQCAtMzYxMiw3ICszNjE4LDggQEAgc3RhdGljIHZvaWQgZ2VuOF9k
ZV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJ
CUdFTjNfSVJRX0lOSVQodW5jb3JlLCBHRU4xMV9ERV9IUERfLCB+ZGVfaHBkX21hc2tlZCwKIAkJ
CSAgICAgIGRlX2hwZF9lbmFibGVzKTsKLQkJZ2VuMTFfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZf
cHJpdik7CisJCWdlbjExX3RjX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOworCQlnZW4x
MV90YnRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7CiAJfSBlbHNlIGlmIChJU19HRU45
X0xQKGRldl9wcml2KSkgewogCQlieHRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7CiAJ
fSBlbHNlIGlmIChJU19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7Ci0tIAoyLjI2LjIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
