Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA22618F3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 03:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E0E899DB;
	Mon,  8 Jul 2019 01:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBD3899F2;
 Mon,  8 Jul 2019 01:35:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jul 2019 18:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,464,1557212400"; d="scan'208";a="173131313"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.53])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jul 2019 18:35:49 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 09:35:21 +0800
Message-Id: <1562549722-27046-9-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
References: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v7 8/9] drm/i915/gvt: GVTg support ppgtt pv
 optimization
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
Cc: intel-gvt-dev@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBoYW5kbGVzIHBwZ3R0IHVwZGF0ZSBmcm9tIGcydiBub3RpZmljYXRpb24uCgpJ
dCByZWFkIG91dCBwcGd0dCBwdGUgZW50cmllcyBmcm9tIGd1ZXN0IHB0ZSB0YWJsZXMgcGFnZSBh
bmQKY29udmVydCB0aGVtIHRvIGhvc3QgcGZucy4KCkl0IGNyZWF0ZXMgbG9jYWwgcHBndHQgdGFi
bGVzIGFuZCBpbnNlcnQgdGhlIGNvbnRlbnQgcGFnZXMKaW50byB0aGUgbG9jYWwgcHBndHQgdGFi
bGVzIGRpcmVjdGx5LCB3aGljaCBkb2VzIG5vdCB0cmFjawp0aGUgdXNhZ2Ugb2YgZ3Vlc3QgcGFn
ZSB0YWJsZSBhbmQgcmVtb3ZlcyB0aGUgY29zdCBvZiB3cml0ZQpwcm90ZWN0aW9uIGZyb20gdGhl
IG9yaWdpbmFsIHNoYWRvdyBwYWdlIG1lY2hhbnNpbS4KCnYwOiBSRkMuCnYxOiByZWJhc2UuCnYy
OiByZWJhc2UuCnYzOiByZXBvcnQgcHYgcGdndHQgY2FwIHRvIGd1ZXN0Lgp2NDogcmVuYW1lZCBW
R1BVX1BWTU1JTyB3aXRoIFZHUFVfUFZDQVAgZm9yIG5hbWUgY29uc2lzdGFuY2UsIG5vIFBWCnN1
cHBvcnQgaWYgZ2Z4IHZ0ZCBlbmFibGVkLgp2NTogcmViYXNlLgp2NjogcmViYXNlLgp2NzogYWRk
ZWQgY29tbWFuZCB0cmFuc3BvcnQgYnVmZmVyIHN1cHBvcnQuCgpTaWduZWQtb2ZmLWJ5OiBYaWFv
bGluIFpoYW5nIDx4aWFvbGluLnpoYW5nQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndnQvZ3R0LmMgICAgICB8IDI5NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuaCAgICAgIHwgIDExICsrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3Z0LmggICAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndnQvaGFuZGxlcnMuYyB8IDEyNyArKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndnQvdmdwdS5jICAgICB8ICAgMiArCiA1IGZpbGVzIGNoYW5nZWQsIDQzOCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Z0L2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d0dC5jCmluZGV4IDUzMTE1
YmQuLjg1YzQyZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMKQEAgLTE3NzEsNiArMTc3MSwyNSBA
QCBzdGF0aWMgaW50IHBwZ3R0X2hhbmRsZV9ndWVzdF93cml0ZV9wYWdlX3RhYmxlX2J5dGVzKAog
CXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBpbnZhbGlkYXRlX21tX3B2KHN0cnVjdCBpbnRl
bF92Z3B1X21tICptbSkKK3sKKwlzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSA9IG1tLT52Z3B1Owor
CXN0cnVjdCBpbnRlbF9ndnQgKmd2dCA9IHZncHUtPmd2dDsKKwlzdHJ1Y3QgaW50ZWxfZ3Z0X2d0
dCAqZ3R0ID0gJmd2dC0+Z3R0OworCXN0cnVjdCBpbnRlbF9ndnRfZ3R0X3B0ZV9vcHMgKm9wcyA9
IGd0dC0+cHRlX29wczsKKwlzdHJ1Y3QgaW50ZWxfZ3Z0X2d0dF9lbnRyeSBzZTsKKworCWk5MTVf
dm1fcHV0KCZtbS0+cHBndHQtPnZtKTsKKworCXBwZ3R0X2dldF9zaGFkb3dfcm9vdF9lbnRyeSht
bSwgJnNlLCAwKTsKKwlpZiAoIW9wcy0+dGVzdF9wcmVzZW50KCZzZSkpCisJCXJldHVybjsKKwlz
ZS52YWw2NCA9IDA7CisJcHBndHRfc2V0X3NoYWRvd19yb290X2VudHJ5KG1tLCAmc2UsIDApOwor
CisJbW0tPnBwZ3R0X21tLnNoYWRvd2VkICA9IGZhbHNlOworfQorCiBzdGF0aWMgdm9pZCBpbnZh
bGlkYXRlX3BwZ3R0X21tKHN0cnVjdCBpbnRlbF92Z3B1X21tICptbSkKIHsKIAlzdHJ1Y3QgaW50
ZWxfdmdwdSAqdmdwdSA9IG1tLT52Z3B1OwpAQCAtMTc4Myw2ICsxODAyLDExIEBAIHN0YXRpYyB2
b2lkIGludmFsaWRhdGVfcHBndHRfbW0oc3RydWN0IGludGVsX3ZncHVfbW0gKm1tKQogCWlmICgh
bW0tPnBwZ3R0X21tLnNoYWRvd2VkKQogCQlyZXR1cm47CiAKKwlpZiAoVkdQVV9QVkNBUChtbS0+
dmdwdSwgUFZfUFBHVFRfVVBEQVRFKSkgeworCQlpbnZhbGlkYXRlX21tX3B2KG1tKTsKKwkJcmV0
dXJuOworCX0KKwogCWZvciAoaW5kZXggPSAwOyBpbmRleCA8IEFSUkFZX1NJWkUobW0tPnBwZ3R0
X21tLnNoYWRvd19wZHBzKTsgaW5kZXgrKykgewogCQlwcGd0dF9nZXRfc2hhZG93X3Jvb3RfZW50
cnkobW0sICZzZSwgaW5kZXgpOwogCkBAIC0xODAwLDYgKzE4MjQsMjYgQEAgc3RhdGljIHZvaWQg
aW52YWxpZGF0ZV9wcGd0dF9tbShzdHJ1Y3QgaW50ZWxfdmdwdV9tbSAqbW0pCiAJbW0tPnBwZ3R0
X21tLnNoYWRvd2VkID0gZmFsc2U7CiB9CiAKK3N0YXRpYyBpbnQgc2hhZG93X21tX3B2KHN0cnVj
dCBpbnRlbF92Z3B1X21tICptbSkKK3sKKwlzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSA9IG1tLT52
Z3B1OworCXN0cnVjdCBpbnRlbF9ndnQgKmd2dCA9IHZncHUtPmd2dDsKKwlzdHJ1Y3QgaW50ZWxf
Z3Z0X2d0dF9lbnRyeSBzZTsKKworCW1tLT5wcGd0dCA9IGk5MTVfcHBndHRfY3JlYXRlKGd2dC0+
ZGV2X3ByaXYpOworCWlmIChJU19FUlIobW0tPnBwZ3R0KSkgeworCQlndnRfdmdwdV9lcnIoImZh
aWwgdG8gY3JlYXRlIHBwZ3R0IGZvciBwZHAgMHglbGx4XG4iLAorCQkJCXB4X2RtYShtbS0+cHBn
dHQtPnBkKSk7CisJCXJldHVybiBQVFJfRVJSKG1tLT5wcGd0dCk7CisJfQorCisJc2UudHlwZSA9
IEdUVF9UWVBFX1BQR1RUX1JPT1RfTDRfRU5UUlk7CisJc2UudmFsNjQgPSBweF9kbWEobW0tPnBw
Z3R0LT5wZCk7CisJcHBndHRfc2V0X3NoYWRvd19yb290X2VudHJ5KG1tLCAmc2UsIDApOworCW1t
LT5wcGd0dF9tbS5zaGFkb3dlZCAgPSB0cnVlOworCisJcmV0dXJuIDA7Cit9CiAKIHN0YXRpYyBp
bnQgc2hhZG93X3BwZ3R0X21tKHN0cnVjdCBpbnRlbF92Z3B1X21tICptbSkKIHsKQEAgLTE4MTQs
NiArMTg1OCw5IEBAIHN0YXRpYyBpbnQgc2hhZG93X3BwZ3R0X21tKHN0cnVjdCBpbnRlbF92Z3B1
X21tICptbSkKIAlpZiAobW0tPnBwZ3R0X21tLnNoYWRvd2VkKQogCQlyZXR1cm4gMDsKIAorCWlm
IChWR1BVX1BWQ0FQKG1tLT52Z3B1LCBQVl9QUEdUVF9VUERBVEUpKQorCQlyZXR1cm4gc2hhZG93
X21tX3B2KG1tKTsKKwogCW1tLT5wcGd0dF9tbS5zaGFkb3dlZCA9IHRydWU7CiAKIAlmb3IgKGlu
ZGV4ID0gMDsgaW5kZXggPCBBUlJBWV9TSVpFKG1tLT5wcGd0dF9tbS5ndWVzdF9wZHBzKTsgaW5k
ZXgrKykgewpAQCAtMjgxNiwzICsyODYzLDI1MSBAQCB2b2lkIGludGVsX3ZncHVfcmVzZXRfZ3R0
KHN0cnVjdCBpbnRlbF92Z3B1ICp2Z3B1KQogCWludGVsX3ZncHVfZGVzdHJveV9hbGxfcHBndHRf
bW0odmdwdSk7CiAJaW50ZWxfdmdwdV9yZXNldF9nZ3R0KHZncHUsIHRydWUpOwogfQorCisjZGVm
aW5lIEdFTjhfUE1MNEVfU0laRQkJKDFVTCA8PCBHRU44X1BNTDRFX1NISUZUKQorI2RlZmluZSBH
RU44X1BNTDRFX1NJWkVfTUFTSwkofihHRU44X1BNTDRFX1NJWkUgLSAxKSkKKyNkZWZpbmUgR0VO
OF9QRFBFX1NJWkUJCSgxVUwgPDwgR0VOOF9QRFBFX1NISUZUKQorI2RlZmluZSBHRU44X1BEUEVf
U0laRV9NQVNLCSh+KEdFTjhfUERQRV9TSVpFIC0gMSkpCisjZGVmaW5lIEdFTjhfUERFX1NJWkUJ
CSgxVUwgPDwgR0VOOF9QREVfU0hJRlQpCisjZGVmaW5lIEdFTjhfUERFX1NJWkVfTUFTSwkofihH
RU44X1BERV9TSVpFIC0gMSkpCisKKyNkZWZpbmUgcG1sNF9hZGRyX2VuZChhZGRyLCBlbmQpCQkJ
CQlcCisoewl1bnNpZ25lZCBsb25nIF9fYm91bmRhcnkgPSBcCisJCQkoKGFkZHIpICsgR0VOOF9Q
TUw0RV9TSVpFKSAmIEdFTjhfUE1MNEVfU0laRV9NQVNLOyBcCisJKF9fYm91bmRhcnkgPCAoZW5k
KSkgPyBfX2JvdW5kYXJ5IDogKGVuZCk7CQlcCit9KQorCisjZGVmaW5lIHBkcF9hZGRyX2VuZChh
ZGRyLCBlbmQpCQkJCQkJXAorKHsJdW5zaWduZWQgbG9uZyBfX2JvdW5kYXJ5ID0gXAorCQkJKChh
ZGRyKSArIEdFTjhfUERQRV9TSVpFKSAmIEdFTjhfUERQRV9TSVpFX01BU0s7IFwKKwkoX19ib3Vu
ZGFyeSA8IChlbmQpKSA/IF9fYm91bmRhcnkgOiAoZW5kKTsJCVwKK30pCisKKyNkZWZpbmUgcGRf
YWRkcl9lbmQoYWRkciwgZW5kKQkJCQkJCVwKKyh7CXVuc2lnbmVkIGxvbmcgX19ib3VuZGFyeSA9
IFwKKwkJCSgoYWRkcikgKyBHRU44X1BERV9TSVpFKSAmIEdFTjhfUERFX1NJWkVfTUFTSzsJXAor
CShfX2JvdW5kYXJ5IDwgKGVuZCkpID8gX19ib3VuZGFyeSA6IChlbmQpOwkJXAorfSkKKworc3Ry
dWN0IHBwZ3R0X3dhbGsgeworCXVuc2lnbmVkIGxvbmcgKm1mbnM7CisJaW50IG1mbl9pbmRleDsK
Kwl1bnNpZ25lZCBsb25nICpwdDsKK307CisKK3N0YXRpYyBpbnQgd2Fsa19wdF9yYW5nZShzdHJ1
Y3QgaW50ZWxfdmdwdSAqdmdwdSwgdTY0IHB0LAorCQkJCXU2NCBzdGFydCwgdTY0IGVuZCwgc3Ry
dWN0IHBwZ3R0X3dhbGsgKndhbGspCit7CisJY29uc3Qgc3RydWN0IGludGVsX2d2dF9kZXZpY2Vf
aW5mbyAqaW5mbyA9ICZ2Z3B1LT5ndnQtPmRldmljZV9pbmZvOworCXN0cnVjdCBpbnRlbF9ndnRf
Z3R0X2dtYV9vcHMgKmdtYV9vcHMgPSB2Z3B1LT5ndnQtPmd0dC5nbWFfb3BzOworCXVuc2lnbmVk
IGxvbmcgc3RhcnRfaW5kZXgsIGVuZF9pbmRleDsKKwlpbnQgcmV0OworCWludCBpOworCXVuc2ln
bmVkIGxvbmcgbWZuLCBnZm47CisKKwlzdGFydF9pbmRleCA9IGdtYV9vcHMtPmdtYV90b19wdGVf
aW5kZXgoc3RhcnQpOworCWVuZF9pbmRleCA9ICgoZW5kIC0gc3RhcnQpID4+IFBBR0VfU0hJRlQp
ICsgc3RhcnRfaW5kZXg7CisKKwlyZXQgPSBpbnRlbF9ndnRfaHlwZXJ2aXNvcl9yZWFkX2dwYSh2
Z3B1LAorCQkocHQgJiBQQUdFX01BU0spICsgKHN0YXJ0X2luZGV4IDw8IGluZm8tPmd0dF9lbnRy
eV9zaXplX3NoaWZ0KSwKKwkJd2Fsay0+cHQgKyBzdGFydF9pbmRleCwKKwkJKGVuZF9pbmRleCAt
IHN0YXJ0X2luZGV4KSA8PCBpbmZvLT5ndHRfZW50cnlfc2l6ZV9zaGlmdCk7CisJaWYgKHJldCkg
eworCQlndnRfdmdwdV9lcnIoImZhaWwgdG8gcmVhZCBncGEgJWxseFxuIiwgcHQpOworCQlyZXR1
cm4gcmV0OworCX0KKworCWZvciAoaSA9IHN0YXJ0X2luZGV4OyBpIDwgZW5kX2luZGV4OyBpKysp
IHsKKwkJZ2ZuID0gd2Fsay0+cHRbaV0gPj4gUEFHRV9TSElGVDsKKwkJbWZuID0gaW50ZWxfZ3Z0
X2h5cGVydmlzb3JfZ2ZuX3RvX21mbih2Z3B1LCBnZm4pOworCQlpZiAobWZuID09IElOVEVMX0dW
VF9JTlZBTElEX0FERFIpIHsKKwkJCWd2dF92Z3B1X2VycigiZmFpbCB0byB0cmFuc2xhdGUgZ2Zu
OiAweCVseFxuIiwgZ2ZuKTsKKwkJCXJldHVybiAtRU5YSU87CisJCX0KKwkJd2Fsay0+bWZuc1t3
YWxrLT5tZm5faW5kZXgrK10gPSBtZm4gPDwgUEFHRV9TSElGVDsKKwl9CisKKwlyZXR1cm4gMDsK
K30KKworCitzdGF0aWMgaW50IHdhbGtfcGRfcmFuZ2Uoc3RydWN0IGludGVsX3ZncHUgKnZncHUs
IHU2NCBwZCwKKwkJCQl1NjQgc3RhcnQsIHU2NCBlbmQsIHN0cnVjdCBwcGd0dF93YWxrICp3YWxr
KQoreworCWNvbnN0IHN0cnVjdCBpbnRlbF9ndnRfZGV2aWNlX2luZm8gKmluZm8gPSAmdmdwdS0+
Z3Z0LT5kZXZpY2VfaW5mbzsKKwlzdHJ1Y3QgaW50ZWxfZ3Z0X2d0dF9nbWFfb3BzICpnbWFfb3Bz
ID0gdmdwdS0+Z3Z0LT5ndHQuZ21hX29wczsKKwl1bnNpZ25lZCBsb25nIGluZGV4OworCXU2NCBw
dCwgbmV4dDsKKwlpbnQgcmV0ICA9IDA7CisKKwlkbyB7CisJCWluZGV4ID0gZ21hX29wcy0+Z21h
X3RvX3BkZV9pbmRleChzdGFydCk7CisKKwkJcmV0ID0gaW50ZWxfZ3Z0X2h5cGVydmlzb3JfcmVh
ZF9ncGEodmdwdSwKKwkJCShwZCAmIFBBR0VfTUFTSykgKyAoaW5kZXggPDwKKwkJCWluZm8tPmd0
dF9lbnRyeV9zaXplX3NoaWZ0KSwgJnB0LCA4KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7
CisJCW5leHQgPSBwZF9hZGRyX2VuZChzdGFydCwgZW5kKTsKKwkJd2Fsa19wdF9yYW5nZSh2Z3B1
LCBwdCwgc3RhcnQsIG5leHQsIHdhbGspOworCisJCXN0YXJ0ID0gbmV4dDsKKwl9IHdoaWxlIChz
dGFydCAhPSBlbmQpOworCisJcmV0dXJuIHJldDsKK30KKworCitzdGF0aWMgaW50IHdhbGtfcGRw
X3JhbmdlKHN0cnVjdCBpbnRlbF92Z3B1ICp2Z3B1LCB1NjQgcGRwLAorCQkJCSAgdTY0IHN0YXJ0
LCB1NjQgZW5kLCBzdHJ1Y3QgcHBndHRfd2FsayAqd2FsaykKK3sKKwljb25zdCBzdHJ1Y3QgaW50
ZWxfZ3Z0X2RldmljZV9pbmZvICppbmZvID0gJnZncHUtPmd2dC0+ZGV2aWNlX2luZm87CisJc3Ry
dWN0IGludGVsX2d2dF9ndHRfZ21hX29wcyAqZ21hX29wcyA9IHZncHUtPmd2dC0+Z3R0LmdtYV9v
cHM7CisJdW5zaWduZWQgbG9uZyBpbmRleDsKKwl1NjQgcGQsIG5leHQ7CisJaW50IHJldCAgPSAw
OworCisJZG8geworCQlpbmRleCA9IGdtYV9vcHMtPmdtYV90b19sNF9wZHBfaW5kZXgoc3RhcnQp
OworCisJCXJldCA9IGludGVsX2d2dF9oeXBlcnZpc29yX3JlYWRfZ3BhKHZncHUsCisJCQkocGRw
ICYgUEFHRV9NQVNLKSArIChpbmRleCA8PAorCQkJaW5mby0+Z3R0X2VudHJ5X3NpemVfc2hpZnQp
LCAmcGQsIDgpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwkJbmV4dCA9IHBkcF9hZGRy
X2VuZChzdGFydCwgZW5kKTsKKwkJd2Fsa19wZF9yYW5nZSh2Z3B1LCBwZCwgc3RhcnQsIG5leHQs
IHdhbGspOworCQlzdGFydCA9IG5leHQ7CisJfSB3aGlsZSAoc3RhcnQgIT0gZW5kKTsKKworCXJl
dHVybiByZXQ7Cit9CisKKworc3RhdGljIGludCB3YWxrX3BtbDRfcmFuZ2Uoc3RydWN0IGludGVs
X3ZncHUgKnZncHUsIHU2NCBwbWw0LAorCQkJCXU2NCBzdGFydCwgdTY0IGVuZCwgc3RydWN0IHBw
Z3R0X3dhbGsgKndhbGspCit7CisJY29uc3Qgc3RydWN0IGludGVsX2d2dF9kZXZpY2VfaW5mbyAq
aW5mbyA9ICZ2Z3B1LT5ndnQtPmRldmljZV9pbmZvOworCXN0cnVjdCBpbnRlbF9ndnRfZ3R0X2dt
YV9vcHMgKmdtYV9vcHMgPSB2Z3B1LT5ndnQtPmd0dC5nbWFfb3BzOworCXVuc2lnbmVkIGxvbmcg
aW5kZXg7CisJdTY0IHBkcCwgbmV4dDsKKwlpbnQgcmV0ICA9IDA7CisKKwlkbyB7CisJCWluZGV4
ID0gZ21hX29wcy0+Z21hX3RvX3BtbDRfaW5kZXgoc3RhcnQpOworCQlyZXQgPSBpbnRlbF9ndnRf
aHlwZXJ2aXNvcl9yZWFkX2dwYSh2Z3B1LAorCQkJKHBtbDQgJiBQQUdFX01BU0spICsgKGluZGV4
IDw8CisJCQlpbmZvLT5ndHRfZW50cnlfc2l6ZV9zaGlmdCksICZwZHAsIDgpOworCQlpZiAocmV0
KQorCQkJcmV0dXJuIHJldDsKKwkJbmV4dCA9IHBtbDRfYWRkcl9lbmQoc3RhcnQsIGVuZCk7CisJ
CXdhbGtfcGRwX3JhbmdlKHZncHUsIHBkcCwgc3RhcnQsIG5leHQsIHdhbGspOworCQlzdGFydCA9
IG5leHQ7CisJfSB3aGlsZSAoc3RhcnQgIT0gZW5kKTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0
YXRpYyBpbnQgaW50ZWxfdmdwdV9wdl9wcGd0dF9pbnNlcnRfNGx2bChzdHJ1Y3QgaW50ZWxfdmdw
dSAqdmdwdSwKKwkJc3RydWN0IGludGVsX3ZncHVfbW0gKm1tLAorCQl1NjQgcG1sNCwgdTY0IHN0
YXJ0LCB1NjQgbGVuZ3RoLCB1MzIgY2FjaGVfbGV2ZWwpCit7CisJaW50IHJldCA9IDA7CisJc3Ry
dWN0IHNnX3RhYmxlIHN0OworCXN0cnVjdCBzY2F0dGVybGlzdCAqc2cgPSBOVUxMOworCWludCBu
dW1fcGFnZXM7CisJc3RydWN0IGk5MTVfdm1hIHZtYTsKKwlzdHJ1Y3QgcHBndHRfd2FsayB3YWxr
OworCWludCBpOworCisJbnVtX3BhZ2VzID0gbGVuZ3RoID4+IFBBR0VfU0hJRlQ7CisKKwl3YWxr
Lm1mbl9pbmRleCA9IDA7CisJd2Fsay5tZm5zID0gTlVMTDsKKwl3YWxrLnB0ID0gTlVMTDsKKwor
CXdhbGsubWZucyA9IGttYWxsb2NfYXJyYXkobnVtX3BhZ2VzLAorCQkJc2l6ZW9mKHVuc2lnbmVk
IGxvbmcpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIXdhbGsubWZucykgeworCQlyZXQgPSAtRU5PTUVN
OworCQlnb3RvIGZhaWw7CisJfQorCisJd2Fsay5wdCA9ICh1bnNpZ25lZCBsb25nICopX19nZXRf
ZnJlZV9wYWdlcyhHRlBfS0VSTkVMLCAwKTsKKwlpZiAoIXdhbGsucHQpIHsKKwkJcmV0ID0gLUVO
T01FTTsKKwkJZ290byBmYWlsOworCX0KKworCWlmIChzZ19hbGxvY190YWJsZSgmc3QsIG51bV9w
YWdlcywgR0ZQX0tFUk5FTCkpIHsKKwkJcmV0ID0gLUVOT01FTTsKKwkJZ290byBmYWlsOworCX0K
KworCXJldCA9IHdhbGtfcG1sNF9yYW5nZSh2Z3B1LCBwbWw0LCBzdGFydCwgc3RhcnQgKyBsZW5n
dGgsICZ3YWxrKTsKKwlpZiAocmV0KQorCQlnb3RvIGZhaWxfZnJlZV9zZzsKKworCVdBUk5fT04o
bnVtX3BhZ2VzICE9IHdhbGsubWZuX2luZGV4KTsKKworCWZvcl9lYWNoX3NnKHN0LnNnbCwgc2cs
IG51bV9wYWdlcywgaSkgeworCQlzZy0+b2Zmc2V0ID0gMDsKKwkJc2ctPmxlbmd0aCA9IFBBR0Vf
U0laRTsKKwkJc2dfZG1hX2FkZHJlc3Moc2cpID0gd2Fsay5tZm5zW2ldOworCQlzZ19kbWFfbGVu
KHNnKSA9IFBBR0VfU0laRTsKKwl9CisKKwltZW1zZXQoJnZtYSwgMCwgc2l6ZW9mKHZtYSkpOwor
CXZtYS5ub2RlLnN0YXJ0ID0gc3RhcnQ7CisJdm1hLnBhZ2VzID0gJnN0OworCW1tLT5wcGd0dC0+
dm0uaW5zZXJ0X2VudHJpZXMoJm1tLT5wcGd0dC0+dm0sICZ2bWEsIGNhY2hlX2xldmVsLCAwKTsK
KworZmFpbF9mcmVlX3NnOgorCXNnX2ZyZWVfdGFibGUoJnN0KTsKK2ZhaWw6CisJa2ZyZWUod2Fs
ay5tZm5zKTsKKwlmcmVlX3BhZ2UoKHVuc2lnbmVkIGxvbmcpd2Fsay5wdCk7CisKKwlyZXR1cm4g
cmV0OworfQorCitpbnQgaW50ZWxfdmdwdV9oYW5kbGVfcHZfcHBndHRfdXBkYXRlKHN0cnVjdCBp
bnRlbF92Z3B1ICp2Z3B1LAorCQl1MzIgYWN0aW9uLCBzdHJ1Y3QgcHZfcHBndHRfdXBkYXRlICpw
dl9wcGd0dCkKK3sKKwlzdHJ1Y3QgaW50ZWxfdmdwdV9tbSAqbW07CisJdTY0IHBkcCwgc3RhcnQs
IGxlbmd0aDsKKwl1MzIgY2FjaGVfbGV2ZWw7CisJaW50IHJldCA9IDA7CisKKwlwZHAgPSBwdl9w
cGd0dC0+cGRwOworCXN0YXJ0ID0gcHZfcHBndHQtPnN0YXJ0OworCWxlbmd0aCA9IHB2X3BwZ3R0
LT5sZW5ndGg7CisJY2FjaGVfbGV2ZWwgPSBwdl9wcGd0dC0+Y2FjaGVfbGV2ZWw7CisKKwltbSA9
IGludGVsX3ZncHVfZmluZF9wcGd0dF9tbSh2Z3B1LCAmcGRwKTsKKwlpZiAoIW1tKSB7CisJCWd2
dF92Z3B1X2VycigiZmFpbGVkIHRvIGZpbmQgcGRwIDB4JWxseFxuIiwgcGRwKTsKKwkJcmV0ID0g
LUVJTlZBTDsKKwl9CisKKwlpZiAoYWN0aW9uID09IFBWX0FDVElPTl9QUEdUVF9MNF9BTExPQykg
eworCQlyZXQgPSBtbS0+cHBndHQtPnZtLmFsbG9jYXRlX3ZhX3JhbmdlKCZtbS0+cHBndHQtPnZt
LAorCQkJCXN0YXJ0LCBsZW5ndGgpOworCQlpZiAocmV0KQorCQkJZ3Z0X3ZncHVfZXJyKCJmYWls
ZWQgdG8gYWxsb2MgJWxseFxuIiwgcGRwKTsKKwl9CisKKwlpZiAoYWN0aW9uID09IFBWX0FDVElP
Tl9QUEdUVF9MNF9DTEVBUikgeworCQltbS0+cHBndHQtPnZtLmNsZWFyX3JhbmdlKCZtbS0+cHBn
dHQtPnZtLAorCQkJCXN0YXJ0LCBsZW5ndGgpOworCX0KKworCWlmIChhY3Rpb24gPT0gIFBWX0FD
VElPTl9QUEdUVF9MNF9JTlNFUlQpIHsKKwkJcmV0ID0gaW50ZWxfdmdwdV9wdl9wcGd0dF9pbnNl
cnRfNGx2bCh2Z3B1LCBtbSwKKwkJCQlwZHAsIHN0YXJ0LCBsZW5ndGgsIGNhY2hlX2xldmVsKTsK
KwkJaWYgKHJldCkKKwkJCWd2dF92Z3B1X2VycigiZmFpbGVkIHRvIGluc2VydCAlbGx4XG4iLCBw
ZHApOworCX0KKworCXJldHVybiByZXQ7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndnQvZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmgKaW5kZXggNDJk
MDM5NC4uN2ZlNmRmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d0dC5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuaApAQCAtMTQxLDYgKzE0MSw3IEBA
IHN0cnVjdCBpbnRlbF9ndnRfcGFydGlhbF9wdGUgewogCiBzdHJ1Y3QgaW50ZWxfdmdwdV9tbSB7
CiAJZW51bSBpbnRlbF9ndnRfbW1fdHlwZSB0eXBlOworCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0
dDsKIAlzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdTsKIAogCXN0cnVjdCBrcmVmIHJlZjsKQEAgLTI1
Miw2ICsyNTMsMTQgQEAgc3RydWN0IGludGVsX3ZncHVfcHBndHRfc3B0IHsKIAlzdHJ1Y3QgbGlz
dF9oZWFkIHBvc3Rfc2hhZG93X2xpc3Q7CiB9OwogCisvKiBwcGd0dCBwdiBzdXBwb3J0IGRhdGEg
c3RydWN0dXJlICovCitzdHJ1Y3QgcHZfcHBndHRfdXBkYXRlIHsKKwl1NjQgcGRwOworCXU2NCBz
dGFydDsKKwl1NjQgbGVuZ3RoOworCXUzMiBjYWNoZV9sZXZlbDsKK307CisKIGludCBpbnRlbF92
Z3B1X3N5bmNfb29zX3BhZ2VzKHN0cnVjdCBpbnRlbF92Z3B1ICp2Z3B1KTsKIAogaW50IGludGVs
X3ZncHVfZmx1c2hfcG9zdF9zaGFkb3coc3RydWN0IGludGVsX3ZncHUgKnZncHUpOwpAQCAtMjc3
LDQgKzI4Niw2IEBAIGludCBpbnRlbF92Z3B1X2VtdWxhdGVfZ2d0dF9tbWlvX3JlYWQoc3RydWN0
IGludGVsX3ZncHUgKnZncHUsCiBpbnQgaW50ZWxfdmdwdV9lbXVsYXRlX2dndHRfbW1pb193cml0
ZShzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSwKIAl1bnNpZ25lZCBpbnQgb2ZmLCB2b2lkICpwX2Rh
dGEsIHVuc2lnbmVkIGludCBieXRlcyk7CiAKK2ludCBpbnRlbF92Z3B1X2hhbmRsZV9wdl9wcGd0
dF91cGRhdGUoc3RydWN0IGludGVsX3ZncHUgKnZncHUsCisJCXUzMiBhY3Rpb24sIHN0cnVjdCBw
dl9wcGd0dF91cGRhdGUgKnB2X3BwZ3R0KTsKICNlbmRpZiAvKiBfR1ZUX0dUVF9IXyAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2d2dC5oCmluZGV4IGY3ZjRiMDMuLmM5ZDVmMmMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQv
Z3Z0LmgKQEAgLTUzLDYgKzUzLDEwIEBACiAKICNkZWZpbmUgR1ZUX01BWF9WR1BVIDgKIAorI2Rl
ZmluZSBWR1BVX1BWQ0FQKHZncHUsIGNhcCkJXAorCSgodmdwdV92cmVnX3QodmdwdSwgdmd0aWZf
cmVnKHB2X2NhcHMpKSAmIChjYXApKSBcCisJCQkmJiB2Z3B1LT5zaGFyZWRfcGFnZV9lbmFibGVk
KQorCiBzdHJ1Y3QgaW50ZWxfZ3Z0X2hvc3QgewogCXN0cnVjdCBkZXZpY2UgKmRldjsKIAlib29s
IGluaXRpYWxpemVkOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRs
ZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYwppbmRleCA0MTE1ZmQw
Li44NWI0MzQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYwpAQCAtMTIwOSw2ICsx
MjA5LDEyNyBAQCBzdGF0aWMgaW50IHB2aW5mb19tbWlvX3JlYWQoc3RydWN0IGludGVsX3ZncHUg
KnZncHUsIHVuc2lnbmVkIGludCBvZmZzZXQsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbmxp
bmUgdW5zaWduZWQgaW50IGN0X2hlYWRlcl9nZXRfbGVuKHUzMiBoZWFkZXIpCit7CisJcmV0dXJu
IChoZWFkZXIgPj4gUFZfQ1RfTVNHX0xFTl9TSElGVCkgJiBQVl9DVF9NU0dfTEVOX01BU0s7Cit9
CisKK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGN0X2hlYWRlcl9nZXRfYWN0aW9uKHUzMiBo
ZWFkZXIpCit7CisJcmV0dXJuIChoZWFkZXIgPj4gUFZfQ1RfTVNHX0FDVElPTl9TSElGVCkgJiBQ
Vl9DVF9NU0dfQUNUSU9OX01BU0s7Cit9CisKK3N0YXRpYyBpbnQgZmV0Y2hfcHZfY29tbWFuZF9i
dWZmZXIoc3RydWN0IGludGVsX3ZncHUgKnZncHUsCisJCXN0cnVjdCB2Z3B1X3B2X2N0X2J1ZmZl
cl9kZXNjICpkZXNjLAorCQl1MzIgKmZlbmNlLCB1MzIgKmFjdGlvbiwgdTMyICpkYXRhKQorewor
CXUzMiBoZWFkLCB0YWlsLCBsZW4sIHNpemUsIG9mZjsKKwl1MzIgY21kX2hlYWQ7CisJdTMyIGF2
YWlsOworCXUzMiByZXQ7CisKKwkvKiBmZXRjaCBjb21tYW5kIGRlc2NyaXB0b3IgKi8KKwlvZmYg
PSBQVl9ERVNDX09GRjsKKwlyZXQgPSBpbnRlbF9ndnRfcmVhZF9zaGFyZWRfcGFnZSh2Z3B1LCBv
ZmYsIGRlc2MsIHNpemVvZigqZGVzYykpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwlH
RU1fQlVHX09OKGRlc2MtPnNpemUgJSA0KTsKKwlHRU1fQlVHX09OKGRlc2MtPmhlYWQgJSA0KTsK
KwlHRU1fQlVHX09OKGRlc2MtPnRhaWwgJSA0KTsKKwlHRU1fQlVHX09OKHRhaWwgPj0gc2l6ZSk7
CisJR0VNX0JVR19PTihoZWFkID49IHNpemUpOworCisJLyogdGFpbCA9PSBoZWFkIGNvbmRpdGlv
biBpbmRpY2F0ZXMgZW1wdHkgKi8KKwloZWFkID0gZGVzYy0+aGVhZC80OworCXRhaWwgPSBkZXNj
LT50YWlsLzQ7CisJc2l6ZSA9IGRlc2MtPnNpemUvNDsKKworCWlmICh1bmxpa2VseSgodGFpbCAt
IGhlYWQpID09IDApKQorCQlyZXR1cm4gLUVOT0RBVEE7CisKKwkvKiBmZXRjaCBjb21tYW5kIGhl
YWQgKi8KKwlvZmYgPSBkZXNjLT5hZGRyICsgaGVhZCAqIDQ7CisJcmV0ID0gaW50ZWxfZ3Z0X3Jl
YWRfc2hhcmVkX3BhZ2UodmdwdSwgb2ZmLCAmY21kX2hlYWQsIDQpOworCWhlYWQgPSAoaGVhZCAr
IDEpICUgc2l6ZTsKKwlpZiAocmV0KQorCQlnb3RvIGVycjsKKworCWxlbiA9IGN0X2hlYWRlcl9n
ZXRfbGVuKGNtZF9oZWFkKSAtIDE7CisJKmFjdGlvbiA9IGN0X2hlYWRlcl9nZXRfYWN0aW9uKGNt
ZF9oZWFkKTsKKworCS8qIGZldGNoIGNvbW1hbmQgZmVuY2UgKi8KKwlvZmYgPSBkZXNjLT5hZGRy
ICsgaGVhZCAqIDQ7CisJcmV0ID0gaW50ZWxfZ3Z0X3JlYWRfc2hhcmVkX3BhZ2UodmdwdSwgb2Zm
LCBmZW5jZSwgNCk7CisJaGVhZCA9IChoZWFkICsgMSkgJSBzaXplOworCWlmIChyZXQpCisJCWdv
dG8gZXJyOworCisJLyogbm8gY29tbWFuZCBkYXRhICovCisJaWYgKGxlbiA9PSAwKQorCQlnb3Rv
IGVycjsKKworCS8qIGZldGNoIGNvbW1hbmQgZGF0YSAqLworCWF2YWlsID0gc2l6ZSAtIGhlYWQ7
CisJaWYgKGxlbiA8PSBhdmFpbCkgeworCQlvZmYgPSAgZGVzYy0+YWRkciArIGhlYWQgKiA0Owor
CQlyZXQgPSBpbnRlbF9ndnRfcmVhZF9zaGFyZWRfcGFnZSh2Z3B1LCBvZmYsIGRhdGEsIGxlbiAq
IDQpOworCQloZWFkID0gKGhlYWQgKyBsZW4pICUgc2l6ZTsKKwkJaWYgKHJldCkKKwkJCWdvdG8g
ZXJyOworCX0gZWxzZSB7CisJCS8qIHN3YXAgY2FzZSAqLworCQlvZmYgPSAgZGVzYy0+YWRkciAr
IGhlYWQgKiA0OworCQlyZXQgPSBpbnRlbF9ndnRfcmVhZF9zaGFyZWRfcGFnZSh2Z3B1LCBvZmYs
IGRhdGEsIGF2YWlsICogNCk7CisJCWhlYWQgPSAoaGVhZCArIGF2YWlsKSAlIHNpemU7CisJCWlm
IChyZXQpCisJCQlnb3RvIGVycjsKKworCQlvZmYgPSBkZXNjLT5hZGRyOworCQlyZXQgPSBpbnRl
bF9ndnRfcmVhZF9zaGFyZWRfcGFnZSh2Z3B1LCBvZmYsICZkYXRhW2F2YWlsXSwKKwkJCQkobGVu
IC0gYXZhaWwpICogNCk7CisJCWhlYWQgPSAoaGVhZCArIGxlbiAtIGF2YWlsKSAlIHNpemU7CisJ
CWlmIChyZXQpCisJCQlnb3RvIGVycjsKKwl9CisKK2VycjoKKwlkZXNjLT5oZWFkID0gaGVhZCAq
IDQ7CisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCBoYW5kbGVfcHZfYWN0aW9ucyhzdHJ1
Y3QgaW50ZWxfdmdwdSAqdmdwdSkKK3sKKwlzdHJ1Y3QgdmdwdV9wdl9jdF9idWZmZXJfZGVzYyBk
ZXNjOworCXUzMiBmZW5jZSwgYWN0aW9uOworCXUzMiBkYXRhWzMyXTsKKwlpbnQgcmV0OworCXN0
cnVjdCBwdl9wcGd0dF91cGRhdGUgKnBwZ3R0OworCisJcmV0ID0gZmV0Y2hfcHZfY29tbWFuZF9i
dWZmZXIodmdwdSwgJmRlc2MsICZmZW5jZSwgJmFjdGlvbiwgZGF0YSk7CisJaWYgKHJldCkKKwkJ
cmV0dXJuIHJldDsKKworCXN3aXRjaCAoYWN0aW9uKSB7CisJY2FzZSBQVl9BQ1RJT05fUFBHVFRf
TDRfQUxMT0M6CisJY2FzZSBQVl9BQ1RJT05fUFBHVFRfTDRfQ0xFQVI6CisJY2FzZSBQVl9BQ1RJ
T05fUFBHVFRfTDRfSU5TRVJUOgorCQlwcGd0dCA9IChzdHJ1Y3QgcHZfcHBndHRfdXBkYXRlICop
ZGF0YTsKKwkJcmV0ID0gaW50ZWxfdmdwdV9oYW5kbGVfcHZfcHBndHRfdXBkYXRlKHZncHUsIGFj
dGlvbiwgcHBndHQpOworCQlicmVhazsKKwlkZWZhdWx0OgorCQlicmVhazsKKwl9CisKKwkvKiB3
cml0ZSBjb21tYW5kIGRlc2NyaXB0b3IgYmFjayAqLworCWRlc2MuZmVuY2UgPSBmZW5jZTsKKwlk
ZXNjLnN0YXR1cyA9IHJldDsKKworCXJldCA9IGludGVsX2d2dF93cml0ZV9zaGFyZWRfcGFnZSh2
Z3B1LCBQVl9ERVNDX09GRiwKKwkJCSZkZXNjLCBzaXplb2YoZGVzYykpOworCXJldHVybiByZXQ7
Cit9CisKIHN0YXRpYyBpbnQgaGFuZGxlX2cydl9ub3RpZmljYXRpb24oc3RydWN0IGludGVsX3Zn
cHUgKnZncHUsIGludCBub3RpZmljYXRpb24pCiB7CiAJZW51bSBpbnRlbF9ndnRfZ3R0X3R5cGUg
cm9vdF9lbnRyeV90eXBlID0gR1RUX1RZUEVfUFBHVFRfUk9PVF9MNF9FTlRSWTsKQEAgLTEyMTcs
NiArMTMzOCw3IEBAIHN0YXRpYyBpbnQgaGFuZGxlX2cydl9ub3RpZmljYXRpb24oc3RydWN0IGlu
dGVsX3ZncHUgKnZncHUsIGludCBub3RpZmljYXRpb24pCiAJdW5zaWduZWQgbG9uZyBncGEsIGdm
bjsKIAl1MTYgdmVyX21ham9yID0gUFZfTUFKT1I7CiAJdTE2IHZlcl9taW5vciA9IFBWX01JTk9S
OworCWludCByZXQgPSAwOwogCiAJcGRwcyA9ICh1NjQgKikmdmdwdV92cmVnNjRfdCh2Z3B1LCB2
Z3RpZl9yZWcocGRwWzBdKSk7CiAKQEAgLTEyNDMsNiArMTM2NSw5IEBAIHN0YXRpYyBpbnQgaGFu
ZGxlX2cydl9ub3RpZmljYXRpb24oc3RydWN0IGludGVsX3ZncHUgKnZncHUsIGludCBub3RpZmlj
YXRpb24pCiAJCWludGVsX2d2dF93cml0ZV9zaGFyZWRfcGFnZSh2Z3B1LCAwLCAmdmVyX21ham9y
LCAyKTsKIAkJaW50ZWxfZ3Z0X3dyaXRlX3NoYXJlZF9wYWdlKHZncHUsIDIsICZ2ZXJfbWlub3Is
IDIpOwogCQlicmVhazsKKwljYXNlIFZHVF9HMlZfUFZfU0VORF9UUklHR0VSOgorCQlyZXQgPSBo
YW5kbGVfcHZfYWN0aW9ucyh2Z3B1KTsKKwkJYnJlYWs7CiAJY2FzZSBWR1RfRzJWX0VYRUNMSVNU
X0NPTlRFWFRfQ1JFQVRFOgogCWNhc2UgVkdUX0cyVl9FWEVDTElTVF9DT05URVhUX0RFU1RST1k6
CiAJY2FzZSAxOgkvKiBSZW1vdmUgdGhpcyBpbiBndWVzdCBkcml2ZXIuICovCkBAIC0xMjUwLDcg
KzEzNzUsNyBAQCBzdGF0aWMgaW50IGhhbmRsZV9nMnZfbm90aWZpY2F0aW9uKHN0cnVjdCBpbnRl
bF92Z3B1ICp2Z3B1LCBpbnQgbm90aWZpY2F0aW9uKQogCWRlZmF1bHQ6CiAJCWd2dF92Z3B1X2Vy
cigiSW52YWxpZCBQViBub3RpZmljYXRpb24gJWRcbiIsIG5vdGlmaWNhdGlvbik7CiAJfQotCXJl
dHVybiAwOworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBpbnQgc2VuZF9kaXNwbGF5X3JlYWR5
X3VldmVudChzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSwgaW50IHJlYWR5KQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3ZncHUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2
dC92Z3B1LmMKaW5kZXggMTUxZjI3MS4uZjk4MmEyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Z0L3ZncHUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvdmdwdS5j
CkBAIC00OSw2ICs0OSw4IEBAIHZvaWQgcG9wdWxhdGVfcHZpbmZvX3BhZ2Uoc3RydWN0IGludGVs
X3ZncHUgKnZncHUpCiAJdmdwdV92cmVnX3QodmdwdSwgdmd0aWZfcmVnKHZndF9jYXBzKSkgfD0g
VkdUX0NBUFNfSFVHRV9HVFQ7CiAJdmdwdV92cmVnX3QodmdwdSwgdmd0aWZfcmVnKHZndF9jYXBz
KSkgfD0gVkdUX0NBUFNfUFY7CiAKKwlpZiAoIWludGVsX3Z0ZF9hY3RpdmUoKSkKKwkJdmdwdV92
cmVnX3QodmdwdSwgdmd0aWZfcmVnKHB2X2NhcHMpKSA9IFBWX1BQR1RUX1VQREFURTsKIAl2Z3B1
X3ZyZWdfdCh2Z3B1LCB2Z3RpZl9yZWcoYXZhaWxfcnMubWFwcGFibGVfZ21hZHIuYmFzZSkpID0K
IAkJdmdwdV9hcGVydHVyZV9nbWFkcl9iYXNlKHZncHUpOwogCXZncHVfdnJlZ190KHZncHUsIHZn
dGlmX3JlZyhhdmFpbF9ycy5tYXBwYWJsZV9nbWFkci5zaXplKSkgPQotLSAKMi43LjQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
