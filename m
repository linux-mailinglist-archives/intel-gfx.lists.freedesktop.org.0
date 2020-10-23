Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5432D2970AD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900136F880;
	Fri, 23 Oct 2020 13:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09786F880
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:35:08 +0000 (UTC)
IronPort-SDR: ye0kzrX+jmZudY3ID/OxBCee7CO1t48tWBnsN+D2D6Z5NQ5MGug4pJheWyumnMzwhq6MGEiwv7
 Rr5Qv5TkcwUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="229310621"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="229310621"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:35:08 -0700
IronPort-SDR: ZevSiB0cLza/kbi3Q07z/dZFQRtLS03weJLsDeJZLWn2jQ+P11qvVzPSQTk7j27Pk/fI1xyoo3
 BKUe0RK7zkow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="423427215"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 23 Oct 2020 06:35:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:35:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:14 +0300
Message-Id: <20201023133420.12039-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/19] drm/i915: Split
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
CmluZGV4IDY4ZTlkMjgxM2QzMi4uMmM4ODEzZjM0YTQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKQEAgLTMyNTEsNyArMzI1MSw3IEBAIHN0YXRpYyB2b2lkIGpzcF9ocGRfaXJxX3NldHVwKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCSAgVEdQX0RESV9IUERfRU5BQkxF
X01BU0ssIDApOwogfQogCi1zdGF0aWMgdm9pZCBnZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdlbjExX3RjX2hw
ZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewog
CXUzMiBob3RwbHVnOwogCkBAIC0zMjYzLDYgKzMyNjMsMTEgQEAgc3RhdGljIHZvaWQgZ2VuMTFf
aHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzUpIHwKIAkJICAgR0VOMTFf
SE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNik7CiAJSTkxNV9XUklURShHRU4xMV9UQ19I
T1RQTFVHX0NUTCwgaG90cGx1Zyk7Cit9CisKK3N0YXRpYyB2b2lkIGdlbjExX3RidF9ocGRfZGV0
ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwl1MzIg
aG90cGx1ZzsKIAogCWhvdHBsdWcgPSBJOTE1X1JFQUQoR0VOMTFfVEJUX0hPVFBMVUdfQ1RMKTsK
IAlob3RwbHVnIHw9IEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzEpIHwKQEAg
LTMyODgsNyArMzI5Myw4IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9pcnFfc2V0dXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJVEUoR0VOMTFfREVfSFBEX0lN
UiwgdmFsKTsKIAlQT1NUSU5HX1JFQUQoR0VOMTFfREVfSFBEX0lNUik7CiAKLQlnZW4xMV9ocGRf
ZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKKwlnZW4xMV90Y19ocGRfZGV0ZWN0aW9uX3NldHVw
KGRldl9wcml2KTsKKwlnZW4xMV90YnRfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdik7CiAK
IAlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9UR1ApCiAJCWljcF9ocGRfaXJx
X3NldHVwKGRldl9wcml2LApAQCAtMzYwMyw3ICszNjA5LDggQEAgc3RhdGljIHZvaWQgZ2VuOF9k
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
