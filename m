Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 837CB59CB2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B226E929;
	Fri, 28 Jun 2019 13:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE986E928
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:13:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:13:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131519"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:58 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:54 +0530
Message-Id: <20190628130754.9527-11-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/tgl: Added new DC5/DC6 counter.
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
ZCBETUNfREVCVUcyIHRoZXNlIGNvdW50ZXIgd2lsbCByZXRhaW4KdGhlcmUgdmFsdWVzIHVwb24g
RE1DIHJlc2V0LgpDdXJyZW50bHkgdXNpbmcgSVNfR0VOKCkgbWFjcm8gaW5zdGVhZCBvZiBJU19U
SUdFUkxBS0UoKQp0byBhdm9pZCBjb21waWxhdGlvbiBlcnJvciBhbmQgZmxvdCB0aGUgcGFjdGhl
cy4KV2lsbCBiZSB1c2luZyBJU19USUdFUkxBS0UoKSBvbmNlIFRHTCBwbGF0Zm9ybQplbmFibGlu
ZyBwYWN0aGVzIG1lcmdlZCB0byBkcm0tdGlwLgoKQ2M6IGphbmkubmlrdWxhQGludGVsLmNvbQpD
YzogaW1yZS5kZWFrQGludGVsLmNvbQpDYzogYW5pbWVzaC5tYW5uYUBpbnRlbC5jb20KU2lnbmVk
LW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDggKysrKystLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YwppbmRleCA3NmU0MjVjYzE5YzIuLjNjMGFhMGNiNzRmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKQEAgLTI3MzYsMTEgKzI3MzYsMTMgQEAgc3RhdGljIGludCBpOTE1X2RtY19p
bmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCQlzZXFfcHJpbnRmKG0sICJE
QzNDTyBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChETUNfREVCVUczKSk7CiAKIAlzZXFfcHJpbnRm
KG0sICJEQzMgLT4gREM1IGNvdW50OiAlZFxuIiwKLQkJICAgSTkxNV9SRUFEKElTX0JST1hUT04o
ZGV2X3ByaXYpID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoKLQkJCQkJCSAgICBTS0xfQ1NSX0RD
M19EQzVfQ09VTlQpKTsKKwkJICAgSTkxNV9SRUFEKChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEy
KSA/IERNQ19ERUJVRzEgOgorCQkJICAgICAoSVNfQlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NS
X0RDM19EQzVfQ09VTlQgOgorCQkJCQkJICAgIFNLTF9DU1JfREMzX0RDNV9DT1VOVCkpKTsKIAlp
ZiAoIUlTX0dFTjlfTFAoZGV2X3ByaXYpKQogCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNv
dW50OiAlZFxuIiwKLQkJCSAgIEk5MTVfUkVBRChTS0xfQ1NSX0RDNV9EQzZfQ09VTlQpKTsKKwkJ
CSAgIEk5MTVfUkVBRCgoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMikgPyBETUNfREVCVUcyIDoK
KwkJCQkgICAgIFNLTF9DU1JfREM1X0RDNl9DT1VOVCkpOwogCiBvdXQ6CiAJc2VxX3ByaW50Ziht
LCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVBRChDU1JfUFJPR1JBTSgwKSkpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggM2ZlYmQyOWRmNWQzLi5jZGVmZjExM2Q3MTIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzIyMiw2ICs3MjIyLDggQEAgZW51bSB7CiAjZGVm
aW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4KQogCiAvKiBETUMgREVCVUcg
Q09VTlRFUlMgZm9yIFRHTCovCisjZGVmaW5lIERNQ19ERUJVRzEJCV9NTUlPKDB4MTAxMDg0KQor
I2RlZmluZSBETUNfREVCVUcyCQlfTU1JTygweDEwMTA4OCkKICNkZWZpbmUgRE1DX0RFQlVHMwkJ
X01NSU8oMHgxMDEwOTApIC8qREMzQ08gZGVidWcgY291bnRlciovCiAKIC8qIGludGVycnVwdHMg
Ki8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
