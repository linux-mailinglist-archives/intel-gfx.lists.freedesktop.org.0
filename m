Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD49510A5CA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DB1897AC;
	Tue, 26 Nov 2019 21:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF03896F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:07:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:07:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211540659"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2019 13:07:42 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 13:07:32 -0800
Message-Id: <20191126210732.407496-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126210732.407496-1-matthew.d.roper@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on CNP+
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
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA1ICsrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IGRhZTAwZjdkZDdk
Zi4uMDI4Y2I2MjM5YzEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI5NzYsNiArMjk3
Niw4IEBAIHN0YXRpYyB2b2lkIGljcF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAlob3RwbHVnX2lycXMgPSBzZGVfZGRpX21hc2sgfCBzZGVfdGNfbWFz
azsKIAllbmFibGVkX2lycXMgPSBpbnRlbF9ocGRfZW5hYmxlZF9pcnFzKGRldl9wcml2LCBwaW5z
KTsKIAorCUk5MTVfV1JJVEUoU0hQRF9GSUxURVJfQ05ULCBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FE
Sik7CisKIAlpYnhfZGlzcGxheV9pbnRlcnJ1cHRfdXBkYXRlKGRldl9wcml2LCBob3RwbHVnX2ly
cXMsIGVuYWJsZWRfaXJxcyk7CiAKIAlpY3BfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwg
ZGRpX2VuYWJsZV9tYXNrLCB0Y19lbmFibGVfbWFzayk7CkBAIC0zMDgxLDYgKzMwODMsOSBAQCBz
dGF0aWMgdm9pZCBzcHRfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiB7CiAJdTMyIGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFzOwogCisJaWYgKElOVEVM
X1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfQ05QKQorCQlJOTE1X1dSSVRFKFNIUERfRklMVEVS
X0NOVCwgU0hQRF9GSUxURVJfQ05UXzUwMF9BREopOworCiAJaG90cGx1Z19pcnFzID0gU0RFX0hP
VFBMVUdfTUFTS19TUFQ7CiAJZW5hYmxlZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJsZWRfaXJxcyhk
ZXZfcHJpdiwgaHBkX3NwdCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk0ZDBmNTkz
ZWViNy4uNzRjZjQ1ZGUxNjJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTgxMTAsNiAr
ODExMCwxMCBAQCBlbnVtIHsKIAogI2RlZmluZSBTSE9UUExVR19DVExfVEMJCQkJX01NSU8oMHhj
NDAzNCkKICNkZWZpbmUgICBJQ1BfVENfSFBEX0VOQUJMRSh0Y19wb3J0KQkJKDggPDwgKHRjX3Bv
cnQpICogNCkKKworI2RlZmluZSBTSFBEX0ZJTFRFUl9DTlQJCQkJX01NSU8oMHhjNDAzOCkKKyNk
ZWZpbmUgICBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FESgkJMHgwMDFEOQorCiAvKiBJY2VsYWtlIERT
QyBSYXRlIENvbnRyb2wgUmFuZ2UgUGFyYW1ldGVyIFJlZ2lzdGVycyAqLwogI2RlZmluZSBEU0NB
X1JDX1JBTkdFX1BBUkFNRVRFUlNfMAkJX01NSU8oMHg2QjI0MCkKICNkZWZpbmUgRFNDQV9SQ19S
QU5HRV9QQVJBTUVURVJTXzBfVURXCQlfTU1JTygweDZCMjQwICsgNCkKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
