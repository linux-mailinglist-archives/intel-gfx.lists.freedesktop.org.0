Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7792110C00E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A596E5C1;
	Wed, 27 Nov 2019 22:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E403C8929F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:13:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 14:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="383633840"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 14:13:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 14:13:14 -0800
Message-Id: <20191127221314.575575-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127221314.575575-1-matthew.d.roper@intel.com>
References: <20191127221314.575575-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Program SHPD_FILTER_CNT on CNP+
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

VGhlIGJzcGVjIHRlbGxzIHVzICdQcm9ncmFtIFNIUERfRklMVEVSX0NOVCB3aXRoIHRoZSAiNTAw
IG1pY3Jvc2Vjb25kcwphZGp1c3RlZCIgdmFsdWUgYmVmb3JlIGVuYWJsaW5nIGhvdHBsdWcgZGV0
ZWN0aW9uJyBvbiBDTlArLiAgV2UgaGF2ZW4ndApiZWVuIHRvdWNoaW5nIHRoaXMgcmVnaXN0ZXIg
YXQgYWxsIHRodXMgZmFyLCBidXQgd2Ugc2hvdWxkIHByb2JhYmx5CmZvbGxvdyB0aGUgYnNwZWMn
cyBndWlkYW5jZS4KClRoZSByZWdpc3RlciBhbHNvIGV4aXN0cyBvbiBMUFQgYW5kIFNQVCwgYnV0
IHRoZXJlIGlzbid0IGFueSBzcGVjaWZpYwpndWlkYW5jZSBJIGNhbiBmaW5kIG9uIGhvdyB3ZSBz
aG91bGQgYmUgcHJvZ3JhbW1pbmcgaXQgdGhlcmUgc28gbGV0J3MKbGVhdmUgaXQgYmUgZm9yIG5v
dy4KCkJzcGVjOiA0MzQyCkJzcGVjOiAzMTI5NwpCc3BlYzogODQwNwpCc3BlYzogNDkzMDUKQnNw
ZWM6IDUwNDczCgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDUgKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggOGIzMzg3NDRl
ZGRmLi40NmE5ZjdkYWZiZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMjk4MCw2ICsy
OTgwLDggQEAgc3RhdGljIHZvaWQgaWNwX2hwZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCWhvdHBsdWdfaXJxcyA9IHNkZV9kZGlfbWFzayB8IHNkZV90Y19t
YXNrOwogCWVuYWJsZWRfaXJxcyA9IGludGVsX2hwZF9lbmFibGVkX2lycXMoZGV2X3ByaXYsIHBp
bnMpOwogCisJSTkxNV9XUklURShTSFBEX0ZJTFRFUl9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBf
QURKKTsKKwogCWlieF9kaXNwbGF5X2ludGVycnVwdF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdf
aXJxcywgZW5hYmxlZF9pcnFzKTsKIAogCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2
LCBkZGlfZW5hYmxlX21hc2ssIHRjX2VuYWJsZV9tYXNrKTsKQEAgLTMwODUsNiArMzA4Nyw5IEBA
IHN0YXRpYyB2b2lkIHNwdF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIHsKIAl1MzIgaG90cGx1Z19pcnFzLCBlbmFibGVkX2lycXM7CiAKKwlpZiAoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9DTlApCisJCUk5MTVfV1JJVEUoU0hQRF9GSUxU
RVJfQ05ULCBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FESik7CisKIAlob3RwbHVnX2lycXMgPSBTREVf
SE9UUExVR19NQVNLX1NQVDsKIAllbmFibGVkX2lycXMgPSBpbnRlbF9ocGRfZW5hYmxlZF9pcnFz
KGRldl9wcml2LCBocGRfc3B0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggOTRkMGY1
OTNlZWI3Li43NGNmNDVkZTE2MmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtODExMCw2
ICs4MTEwLDEwIEBAIGVudW0gewogCiAjZGVmaW5lIFNIT1RQTFVHX0NUTF9UQwkJCQlfTU1JTygw
eGM0MDM0KQogI2RlZmluZSAgIElDUF9UQ19IUERfRU5BQkxFKHRjX3BvcnQpCQkoOCA8PCAodGNf
cG9ydCkgKiA0KQorCisjZGVmaW5lIFNIUERfRklMVEVSX0NOVAkJCQlfTU1JTygweGM0MDM4KQor
I2RlZmluZSAgIFNIUERfRklMVEVSX0NOVF81MDBfQURKCQkweDAwMUQ5CisKIC8qIEljZWxha2Ug
RFNDIFJhdGUgQ29udHJvbCBSYW5nZSBQYXJhbWV0ZXIgUmVnaXN0ZXJzICovCiAjZGVmaW5lIERT
Q0FfUkNfUkFOR0VfUEFSQU1FVEVSU18wCQlfTU1JTygweDZCMjQwKQogI2RlZmluZSBEU0NBX1JD
X1JBTkdFX1BBUkFNRVRFUlNfMF9VRFcJCV9NTUlPKDB4NkIyNDAgKyA0KQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
