Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6375875C10
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE83B6E841;
	Fri, 26 Jul 2019 00:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B812E6E840
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:24:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 17:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="194046840"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 17:24:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 17:24:10 -0700
Message-Id: <20190726002412.5827-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726002412.5827-1-lucas.demarchi@intel.com>
References: <20190726002412.5827-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Add and use new DC5 and DC6
 residency counter registers
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaWdl
ciBMYWtlIGhhcyBhIG5ldyByZWdpc3RlciBvZmZzZXQgZm9yIERDNSBhbmQgREM2IHJlc2lkZW5j
eSBjb3VudGVycy4KCnYyOgogIC0gUmVuYW1lIHJlZ2lzdGVycyBzaW5jZSB0aGV5IGFyZSBub3Qg
aW4gdGhlIENTUiBtZW1vcnkgcmFuZ2UKICAgIChyZXF1ZXN0ZWQgYnkgQW5zaHVtYW4pCiAgLSBG
aXggdHlwZSAocmVxdWVzdGVkIGJ5IE1hdHRoZXcpCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAyMSArKysrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCmluZGV4IDI0Nzg3YmI0OGM5Zi4uNmRiZDg1YjM4NzU5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwpAQCAtMjQ2NSw2ICsyNDY1LDcgQEAgc3RhdGljIGludCBpOTE1X2RtY19p
bmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKIAlpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsKIAlzdHJ1Y3QgaW50ZWxfY3NyICpjc3I7CisJaTkxNV9yZWdfdCBkYzVf
cmVnLCBkYzZfcmVnID0ge307CiAKIAlpZiAoIUhBU19DU1IoZGV2X3ByaXYpKQogCQlyZXR1cm4g
LUVOT0RFVjsKQEAgLTI0ODIsMTUgKzI0ODMsMTkgQEAgc3RhdGljIGludCBpOTE1X2RtY19pbmZv
KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCXNlcV9wcmludGYobSwgInZlcnNp
b246ICVkLiVkXG4iLCBDU1JfVkVSU0lPTl9NQUpPUihjc3ItPnZlcnNpb24pLAogCQkgICBDU1Jf
VkVSU0lPTl9NSU5PUihjc3ItPnZlcnNpb24pKTsKIAotCWlmIChXQVJOX09OKElOVEVMX0dFTihk
ZXZfcHJpdikgPiAxMSkpCi0JCWdvdG8gb3V0OworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKSB7CisJCWRjNV9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVDsKKwkJZGM2X3JlZyA9
IFRHTF9ETUNfREVCVUdfREM2X0NPVU5UOworCX0gZWxzZSB7CisJCWRjNV9yZWcgPSBJU19CUk9Y
VE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VOVCA6CisJCQkJCQkgU0tMX0NTUl9E
QzNfREM1X0NPVU5UOworCQlpZiAoIUlTX0dFTjlfTFAoZGV2X3ByaXYpKQorCQkJZGM2X3JlZyA9
IFNLTF9DU1JfREM1X0RDNl9DT1VOVDsKKwl9CiAKLQlzZXFfcHJpbnRmKG0sICJEQzMgLT4gREM1
IGNvdW50OiAlZFxuIiwKLQkJICAgSTkxNV9SRUFEKElTX0JST1hUT04oZGV2X3ByaXYpID8gQlhU
X0NTUl9EQzNfREM1X0NPVU5UIDoKLQkJCQkJCSAgICBTS0xfQ1NSX0RDM19EQzVfQ09VTlQpKTsK
LQlpZiAoIUlTX0dFTjlfTFAoZGV2X3ByaXYpKQotCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2
IGNvdW50OiAlZFxuIiwKLQkJCSAgIEk5MTVfUkVBRChTS0xfQ1NSX0RDNV9EQzZfQ09VTlQpKTsK
KwlzZXFfcHJpbnRmKG0sICJEQzMgLT4gREM1IGNvdW50OiAlZFxuIiwgSTkxNV9SRUFEKGRjNV9y
ZWcpKTsKKwlpZiAoZGM2X3JlZy5yZWcpCisJCXNlcV9wcmludGYobSwgIkRDNSAtPiBEQzYgY291
bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM2X3JlZykpOwogCiBvdXQ6CiAJc2VxX3ByaW50ZihtLCAi
cHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVBRChDU1JfUFJPR1JBTSgwKSkpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMjRmMmE1MmEyYjQyLi5lOTk5Y2U5NGI0NWMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzI2OCw2ICs3MjY4LDggQEAgZW51bSB7CiAjZGVmaW5l
IFNLTF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDMwKQogI2RlZmluZSBTS0xfQ1NSX0RD
NV9EQzZfQ09VTlQJX01NSU8oMHg4MDAyQykKICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1X0NPVU5U
CV9NTUlPKDB4ODAwMzgpCisjZGVmaW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4
MTAxMDg0KQorI2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVAlfTU1JTygweDEwMTA4OCkK
IAogLyogaW50ZXJydXB0cyAqLwogI2RlZmluZSBERV9NQVNURVJfSVJRX0NPTlRST0wgICAoMSA8
PCAzMSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
