Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E055CBE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 02:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5474B6E1BE;
	Wed, 26 Jun 2019 00:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3106E1BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:04:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 17:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="163767564"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 17:04:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:03:48 -0700
Message-Id: <20190626000352.31926-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190626000352.31926-1-matthew.d.roper@intel.com>
References: <20190626000352.31926-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915/icl: Drop port parameter to
 icl_get_combo_buf_trans()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBvcnQgcGFyYW1ldGVyIGhhc24ndCBiZWVuIHVzZWQgc2luY2UgdGhlIGxhc3QgYnNwZWMg
cGh5IHByb2dyYW1taW5nCnVwZGF0ZS4gIERyb3AgaXQgdG8gbWFrZSBzb21lIHVwY29taW5nIGNo
YW5nZXMgc2ltcGxlci4KClJlZmVyZW5jZXM6IDk2NTljMWFmNDUxYSAoImRybS9pOTE1L2ljbDog
Y29tYm8gcG9ydCB2c3dpbmcgcHJvZ3JhbW1pbmcgY2hhbmdlcyBwZXIgQlNQRUMiKQpDYzogQ2xp
bnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENsaW50IFRh
eWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCA3OTI1YTE3NmY5MDAuLjU5MzgwNmQ0NGFkNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC04NDYsOCArODQ2LDggQEAg
Y25sX2dldF9idWZfdHJhbnNfZWRwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
aW50ICpuX2VudHJpZXMpCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJh
bnMgKgotaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCBlbnVtIHBvcnQgcG9ydCwKLQkJCWludCB0eXBlLCBpbnQgcmF0ZSwgaW50ICpuX2Vu
dHJpZXMpCitpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKKwkJCWludCAqbl9lbnRyaWVzKQogewogCWlm
ICh0eXBlID09IElOVEVMX09VVFBVVF9IRE1JKSB7CiAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpF
KGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pKTsKQEAgLTg3Miw3ICs4NzIsNyBA
QCBzdGF0aWMgaW50IGludGVsX2RkaV9oZG1pX2xldmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcgogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEpIHsKIAkJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKQotCQkJ
aWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHBvcnQsIElOVEVMX09VVFBVVF9IRE1J
LAorCQkJaWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIElOVEVMX09VVFBVVF9IRE1J
LAogCQkJCQkJMCwgJm5fZW50cmllcyk7CiAJCWVsc2UKIAkJCW5fZW50cmllcyA9IEFSUkFZX1NJ
WkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsKQEAgLTIyMzEsNyArMjIzMSw3IEBAIHU4
IGludGVsX2RkaV9kcF92b2x0YWdlX21heChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikK
IAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CiAJCWlmIChpbnRlbF9wb3J0X2lz
X2NvbWJvcGh5KGRldl9wcml2LCBwb3J0KSkKLQkJCWljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRl
dl9wcml2LCBwb3J0LCBlbmNvZGVyLT50eXBlLAorCQkJaWNsX2dldF9jb21ib19idWZfdHJhbnMo
ZGV2X3ByaXYsIGVuY29kZXItPnR5cGUsCiAJCQkJCQlpbnRlbF9kcC0+bGlua19yYXRlLCAmbl9l
bnRyaWVzKTsKIAkJZWxzZQogCQkJbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfbWdfcGh5X2Rk
aV90cmFuc2xhdGlvbnMpOwpAQCAtMjQyMCw4ICsyNDIwLDggQEAgc3RhdGljIHZvaWQgaWNsX2Rk
aV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJdTMyIG5fZW50cmllcywgdmFsOwogCWludCBsbjsKIAotCWRkaV90cmFuc2xhdGlvbnMgPSBp
Y2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgcG9ydCwgdHlwZSwKLQkJCQkJCSAgIHJh
dGUsICZuX2VudHJpZXMpOworCWRkaV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90
cmFucyhkZXZfcHJpdiwgdHlwZSwgcmF0ZSwKKwkJCQkJCSAgICZuX2VudHJpZXMpOwogCWlmICgh
ZGRpX3RyYW5zbGF0aW9ucykKIAkJcmV0dXJuOwogCi0tIAoyLjE3LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
