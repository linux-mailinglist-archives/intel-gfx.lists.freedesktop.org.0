Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC23159921
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E886F428;
	Tue, 11 Feb 2020 18:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5196F428
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:50:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="313155509"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.229])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2020 10:50:10 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 10:50:08 -0800
Message-Id: <20200211185008.30806-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185008.30806-1-jose.souza@intel.com>
References: <20200211185008.30806-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/display/tgl: Enable hotplug
 detection in TC5 and TC6
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

VGhlIGhvdHBsdWcgaW50ZXJydXB0aW9uIGRldGVjdGlvbiB3YXMgbm90IGJlaW5nIGVuYWJsZWQg
Zm9yIFRDNSBhbmQKVEM2IGluIHRoZSBub3J0aCBkZXRlY3Rpb24gc2lkZS4KCkNjOiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCAzZDBjZDA5NjBiZDIuLmFiZDk3OWVmNzVl
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0zMDUxLDYgKzMwNTEsOSBAQCBzdGF0aWMg
dm9pZCBnZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEMyKSB8CiAJCSAg
IEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQT1JUX1RDMykgfAogCQkgICBHRU4xMV9IT1RQTFVH
X0NUTF9FTkFCTEUoUE9SVF9UQzQpOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQor
CQlob3RwbHVnIHw9IEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQT1JUX1RDNSkgfAorCQkJICAg
R0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM2KTsKIAlJOTE1X1dSSVRFKEdFTjExX1RD
X0hPVFBMVUdfQ1RMLCBob3RwbHVnKTsKIAogCWhvdHBsdWcgPSBJOTE1X1JFQUQoR0VOMTFfVEJU
X0hPVFBMVUdfQ1RMKTsKQEAgLTMwNTgsNiArMzA2MSw5IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hw
ZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkg
ICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzIpIHwKIAkJICAgR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKFBPUlRfVEMzKSB8CiAJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQ
T1JUX1RDNCk7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCWhvdHBsdWcgfD0g
R0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM1KSB8CisJCQkgICBHRU4xMV9IT1RQTFVH
X0NUTF9FTkFCTEUoUE9SVF9UQzYpOwogCUk5MTVfV1JJVEUoR0VOMTFfVEJUX0hPVFBMVUdfQ1RM
LCBob3RwbHVnKTsKIH0KIAotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
