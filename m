Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D97B2B19A7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 10:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AEB06EED5;
	Fri, 13 Sep 2019 08:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C604B6EED3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 08:30:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 01:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,500,1559545200"; d="scan'208";a="186375254"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2019 01:30:26 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 13:53:39 +0530
Message-Id: <20190913082339.1785-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913082339.1785-1-anshuman.gupta@intel.com>
References: <20190913082339.1785-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 7/7] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2ZzIHdpbGwgYmUKdXNl
ZnVsIGZvciBEQzNDTyB2YWxpZGF0aW9uLgpETUMgZmlybXdhcmUgdXNlcyBETUNfREVCVUczIHJl
Z2lzdGVyIGFzIERDM0NPIGNvdW50ZXIKcmVnaXN0ZXIgb24gVEdMLCBhcyBwZXIgQi5TcGVjcyBE
TUNfREVCVUczIGlzIGdlbmVyYWwKcHVycG9zZSByZWdpc3Rlci4KCkNjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZTU4MzUzMzdmMDIyLi41
YmIwYTI5OWI1MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNDA0LDYg
KzI0MDQsMTIgQEAgc3RhdGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwg
dm9pZCAqdW51c2VkKQogCXNlcV9wcmludGYobSwgInZlcnNpb246ICVkLiVkXG4iLCBDU1JfVkVS
U0lPTl9NQUpPUihjc3ItPnZlcnNpb24pLAogCQkgICBDU1JfVkVSU0lPTl9NSU5PUihjc3ItPnZl
cnNpb24pKTsKIAorCS8qCisJICogVEdMIERNQyBmL3cgdXNlcyBETUNfREVCVUczIHJlZ2lzdGVy
IGZvciBEQzNDTyBjb3VudGVyLgorCSAqLworCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQor
CQlzZXFfcHJpbnRmKG0sICJEQzNDTyBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChETUNfREVCVUcz
KSk7CisKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewogCQlkYzVfcmVnID0gVEdM
X0RNQ19ERUJVR19EQzVfQ09VTlQ7CiAJCWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VO
VDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZiZmViYWI5YTQ0MS4uM2FkNzVkMGZiNzFh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTcyNTUsNiArNzI1NSw4IEBAIGVudW0gewog
I2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1JTygweDEwMTA4NCkKICNkZWZpbmUg
VEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01NSU8oMHgxMDEwODgpCiAKKyNkZWZpbmUgRE1DX0RF
QlVHMwkJX01NSU8oMHgxMDEwOTApCisKIC8qIGludGVycnVwdHMgKi8KICNkZWZpbmUgREVfTUFT
VEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCiAjZGVmaW5lIERFX1NQUklURUJfRkxJUF9ET05F
ICAgICgxIDw8IDI5KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
