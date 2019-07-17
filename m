Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C866BDF6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 16:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1726E1D6;
	Wed, 17 Jul 2019 14:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 204146E1D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 14:14:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 07:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="169569842"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jul 2019 07:14:38 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:39:49 +0530
Message-Id: <20190717140949.29329-11-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717140949.29329-1-anshuman.gupta@intel.com>
References: <20190717140949.29329-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/10] drm/i915/tgl:Added new DC5/DC6 counter.
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

VEdMIG9ud2FyZHMgd2UgaGF2ZSBuZXcgREM1IGFuZCBEQzYgY291bnRlcgpETUNfREVCVUcxIGFu
ZCBETUNfREVCVUcyLCB0aGVzZSBjb3VudGVyIHdpbGwgcmV0YWluCnRoZXJlIHZhbHVlcyB1cG9u
IERNQyByZXNldC4KCkNjOiBqYW5pLm5pa3VsYUBpbnRlbC5jb20KQ2M6IGltcmUuZGVha0BpbnRl
bC5jb20KQ2M6IGFuaW1lc2gubWFubmFAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFu
IEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA4ICsrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggYjM4MmIwYjll
NDMwLi5mYTA5ZDkzYzYzOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0y
NTE1LDExICsyNTE1LDEzIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHZvaWQgKnVudXNlZCkKIAkJc2VxX3ByaW50ZihtLCAiREMzQ08gY291bnQ6ICVkXG4i
LCBJOTE1X1JFQUQoRE1DX0RFQlVHMykpOwogCiAJc2VxX3ByaW50ZihtLCAiREMzIC0+IERDNSBj
b3VudDogJWRcbiIsCi0JCSAgIEk5MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9D
U1JfREMzX0RDNV9DT1VOVCA6Ci0JCQkJCQkgICAgU0tMX0NTUl9EQzNfREM1X0NPVU5UKSk7CisJ
CSAgIEk5MTVfUkVBRChJU19USUdFUkxBS0UoZGV2X3ByaXYpID8gRE1DX0RFQlVHMSA6CisJCQkg
ICAgIChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VOVCA6CisJCQkJ
CQkgICAgU0tMX0NTUl9EQzNfREM1X0NPVU5UKSkpOwogCWlmICghSVNfR0VOOV9MUChkZXZfcHJp
dikpCiAJCXNlcV9wcmludGYobSwgIkRDNSAtPiBEQzYgY291bnQ6ICVkXG4iLAotCQkJICAgSTkx
NV9SRUFEKFNLTF9DU1JfREM1X0RDNl9DT1VOVCkpOworCQkJICAgSTkxNV9SRUFEKElTX1RJR0VS
TEFLRShkZXZfcHJpdikgPyBETUNfREVCVUcyIDoKKwkJCQkgICAgIFNLTF9DU1JfREM1X0RDNl9D
T1VOVCkpOwogCiBvdXQ6CiAJc2VxX3ByaW50ZihtLCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIs
IEk5MTVfUkVBRChDU1JfUFJPR1JBTSgwKSkpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXgg
NjhlNGI3OGU0YTY0Li41ZTU2N2JkNGY4MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAt
NzI2Niw2ICs3MjY2LDggQEAgZW51bSB7CiAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlf
TU1JTygweDgwMDM4KQogCiAvKiBETUMgREVCVUcgQ09VTlRFUlMgZm9yIFRHTCovCisjZGVmaW5l
IERNQ19ERUJVRzEJCV9NTUlPKDB4MTAxMDg0KQorI2RlZmluZSBETUNfREVCVUcyCQlfTU1JTygw
eDEwMTA4OCkKICNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgxMDEwOTApIC8qREMzQ08gZGVi
dWcgY291bnRlciovCiAKIC8qIGludGVycnVwdHMgKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
