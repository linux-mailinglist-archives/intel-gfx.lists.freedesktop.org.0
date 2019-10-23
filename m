Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99817E1C37
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85DB890AB;
	Wed, 23 Oct 2019 13:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85091890AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:21:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="188250436"
Received: from cmclare-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.98])
 by orsmga007.jf.intel.com with ESMTP; 23 Oct 2019 06:21:01 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 14:20:54 +0100
Message-Id: <20191023132100.9578-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/7] drm/i915: support creating LMEM objects
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

V2UgY3VycmVudGx5IGRlZmluZSBMTUVNLCBvciBsb2NhbCBtZW1vcnksIGFzIGp1c3QgYW5vdGhl
ciBtZW1vcnkKcmVnaW9uLCBsaWtlIHN5c3RlbSBtZW1vcnkgb3Igc3RvbGVuLCB3aGljaCB3ZSBj
YW4gZXhwb3NlIHRvIHVzZXJzcGFjZQphbmQgY2FuIGJlIG1hcHBlZCB0byB0aGUgQ1BVIHZpYSBz
b21lIEJBUi4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4KQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAyICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgICAgICB8IDU3ICsrKysrKysr
KysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmggICAg
ICB8IDI5ICsrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgICAgICB8ICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMg
ICAgICB8IDE2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0u
aCAgICAgIHwgMTEgKysrKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmggIHwgIDEgKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9u
LmMgIHwgNDAgKysrKysrKysrKysrKwogOCBmaWxlcyBjaGFuZ2VkLCAxNTkgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9s
bWVtLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbG1lbS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cmVnaW9uX2xtZW0uYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3JlZ2lvbl9sbWVtLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDJmZDRiZWQxODhlNS4u
MzA4ZjJiMWMwM2JjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMTIwLDYgKzEyMCw3IEBAIGdl
bS15ICs9IFwKIAlnZW0vaTkxNV9nZW1faW50ZXJuYWwubyBcCiAJZ2VtL2k5MTVfZ2VtX29iamVj
dC5vIFwKIAlnZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5vIFwKKwlnZW0vaTkxNV9nZW1fbG1lbS5v
IFwKIAlnZW0vaTkxNV9nZW1fbW1hbi5vIFwKIAlnZW0vaTkxNV9nZW1fcGFnZXMubyBcCiAJZ2Vt
L2k5MTVfZ2VtX3BoeXMubyBcCkBAIC0xNDgsNiArMTQ5LDcgQEAgaTkxNS15ICs9IFwKIAkgIGk5
MTVfc2NoZWR1bGVyLm8gXAogCSAgaTkxNV90cmFjZV9wb2ludHMubyBcCiAJICBpOTE1X3ZtYS5v
IFwKKwkgIGludGVsX3JlZ2lvbl9sbWVtLm8gXAogCSAgaW50ZWxfd29wY20ubwogCiAjIGdlbmVy
YWwtcHVycG9zZSBtaWNyb2NvbnRyb2xsZXIgKEd1Qykgc3VwcG9ydApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi4zYmVlYzliMzhlODMKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jCkBAIC0wLDAgKzEsNTcgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3Jh
dGlvbgorICovCisKKyNpbmNsdWRlICJpbnRlbF9tZW1vcnlfcmVnaW9uLmgiCisjaW5jbHVkZSAi
Z2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCisj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKKworY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rf
b3BzIGk5MTVfZ2VtX2xtZW1fb2JqX29wcyA9IHsKKwkuZ2V0X3BhZ2VzID0gaTkxNV9nZW1fb2Jq
ZWN0X2dldF9wYWdlc19idWRkeSwKKwkucHV0X3BhZ2VzID0gaTkxNV9nZW1fb2JqZWN0X3B1dF9w
YWdlc19idWRkeSwKKwkucmVsZWFzZSA9IGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21lbW9yeV9y
ZWdpb24sCit9OworCitib29sIGk5MTVfZ2VtX29iamVjdF9pc19sbWVtKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopCit7CisJcmV0dXJuIG9iai0+b3BzID09ICZpOTE1X2dlbV9sbWVt
X29ial9vcHM7Cit9CisKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKK2k5MTVfZ2VtX29i
amVjdF9jcmVhdGVfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgICBy
ZXNvdXJjZV9zaXplX3Qgc2l6ZSwKKwkJCSAgICB1bnNpZ25lZCBpbnQgZmxhZ3MpCit7CisJcmV0
dXJuIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKGk5MTUtPm1tLnJlZ2lvbnNbSU5URUxf
UkVHSU9OX0xNRU1dLAorCQkJCQkgICAgIHNpemUsIGZsYWdzKTsKK30KKworIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICoKK19faTkxNV9nZW1fbG1lbV9vYmplY3RfY3JlYXRlKHN0cnVjdCBp
bnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCisJCQkgICAgICByZXNvdXJjZV9zaXplX3Qgc2l6ZSwK
KwkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncykKK3sKKwlzdGF0aWMgc3RydWN0IGxvY2tfY2xh
c3Nfa2V5IGxvY2tfY2xhc3M7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBtZW0t
Pmk5MTU7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKworCWlmIChzaXplID4g
QklUKG1lbS0+bW0ubWF4X29yZGVyKSAqIG1lbS0+bW0uY2h1bmtfc2l6ZSkKKwkJcmV0dXJuIEVS
Ul9QVFIoLUUyQklHKTsKKworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9hbGxvYygpOworCWlmICgh
b2JqKQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKworCWRybV9nZW1fcHJpdmF0ZV9vYmpl
Y3RfaW5pdCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsKKwlpOTE1X2dlbV9vYmplY3Rf
aW5pdChvYmosICZpOTE1X2dlbV9sbWVtX29ial9vcHMsICZsb2NrX2NsYXNzKTsKKworCW9iai0+
cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX1dDIHwgSTkxNV9HRU1fRE9NQUlOX0dUVDsK
KworCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgSTkxNV9DQUNIRV9O
T05FKTsKKworCWk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24ob2JqLCBtZW0sIGZs
YWdzKTsKKworCXJldHVybiBvYmo7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbG1lbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2xtZW0uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmZjM2YxNTU4
MGZlMwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9sbWVtLmgKQEAgLTAsMCArMSwyOSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1J
VCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKwor
I2lmbmRlZiBfX0k5MTVfR0VNX0xNRU1fSAorI2RlZmluZSBfX0k5MTVfR0VNX0xNRU1fSAorCisj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CitzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKK3N0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uOworCitl
eHRlcm4gY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX2xtZW1f
b2JqX29wczsKKworYm9vbCBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKTsKKworc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgoraTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJ
ICAgIHJlc291cmNlX3NpemVfdCBzaXplLAorCQkJICAgIHVuc2lnbmVkIGludCBmbGFncyk7CisK
K3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKK19faTkxNV9nZW1fbG1lbV9vYmplY3RfY3Jl
YXRlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCisJCQkgICAgICByZXNvdXJjZV9z
aXplX3Qgc2l6ZSwKKwkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncyk7CisKKyNlbmRpZiAvKiAh
X19JOTE1X0dFTV9MTUVNX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDg4ODJjMDkw
OGMzYi4uNzlhODdlNzA2NDA1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEwMSw2ICsx
MDEsOCBAQAogI2luY2x1ZGUgImk5MTVfdm1hLmgiCiAjaW5jbHVkZSAiaTkxNV9pcnEuaCIKIAor
I2luY2x1ZGUgImludGVsX3JlZ2lvbl9sbWVtLmgiCisKICNpbmNsdWRlICJpbnRlbF9ndnQuaCIK
IAogLyogR2VuZXJhbCBjdXN0b21pemF0aW9uOgpAQCAtMTc4MSw2ICsxNzgzLDcgQEAgSVNfU1VC
UExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIEhB
U19JUEMoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5Lmhhc19pcGMp
CiAKICNkZWZpbmUgSEFTX1JFR0lPTihpOTE1LCBpKSAoSU5URUxfSU5GTyhpOTE1KS0+bWVtb3J5
X3JlZ2lvbnMgJiAoaSkpCisjZGVmaW5lIEhBU19MTUVNKGk5MTUpIEhBU19SRUdJT04oaTkxNSwg
UkVHSU9OX0xNRU0pCiAKICNkZWZpbmUgSEFTX0dUX1VDKGRldl9wcml2KQkoSU5URUxfSU5GTyhk
ZXZfcHJpdiktPmhhc19ndF91YykKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcmVnaW9uX2xtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9s
bWVtLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4xOTk1MzIwNTZl
MWIKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25f
bG1lbS5jCkBAIC0wLDAgKzEsMTYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
Ky8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNs
dWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX21lbW9yeV9yZWdpb24uaCIKKyNpbmNs
dWRlICJnZW0vaTkxNV9nZW1fbG1lbS5oIgorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24u
aCIKKyNpbmNsdWRlICJpbnRlbF9yZWdpb25fbG1lbS5oIgorCitjb25zdCBzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbl9vcHMgaW50ZWxfcmVnaW9uX2xtZW1fb3BzID0geworCS5pbml0ID0gaW50
ZWxfbWVtb3J5X3JlZ2lvbl9pbml0X2J1ZGR5LAorCS5yZWxlYXNlID0gaW50ZWxfbWVtb3J5X3Jl
Z2lvbl9yZWxlYXNlX2J1ZGR5LAorCS5jcmVhdGVfb2JqZWN0ID0gX19pOTE1X2dlbV9sbWVtX29i
amVjdF9jcmVhdGUsCit9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cmVnaW9uX2xtZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmgK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5lZDJhM2JhYjY0NDMKLS0t
IC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5o
CkBAIC0wLDAgKzEsMTEgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8q
CisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYg
X19JTlRFTF9SRUdJT05fTE1FTV9ICisjZGVmaW5lIF9fSU5URUxfUkVHSU9OX0xNRU1fSAorCitl
eHRlcm4gY29uc3Qgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb25fb3BzIGludGVsX3JlZ2lvbl9s
bWVtX29wczsKKworI2VuZGlmIC8qICFfX0lOVEVMX1JFR0lPTl9MTUVNX0ggKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmlu
ZGV4IDAwYTA2MzczMGJjMy4uNGIzY2FjNzNlMjkxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKQEAgLTMzLDYgKzMzLDcg
QEAgc2VsZnRlc3QoZ2VtX2NvbnRleHRzLCBpOTE1X2dlbV9jb250ZXh0X2xpdmVfc2VsZnRlc3Rz
KQogc2VsZnRlc3QoYmx0LCBpOTE1X2dlbV9vYmplY3RfYmx0X2xpdmVfc2VsZnRlc3RzKQogc2Vs
ZnRlc3QoY2xpZW50LCBpOTE1X2dlbV9jbGllbnRfYmx0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRl
c3QocmVzZXQsIGludGVsX3Jlc2V0X2xpdmVfc2VsZnRlc3RzKQorc2VsZnRlc3QobWVtb3J5X3Jl
Z2lvbiwgaW50ZWxfbWVtb3J5X3JlZ2lvbl9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGhhbmdj
aGVjaywgaW50ZWxfaGFuZ2NoZWNrX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZXhlY2xpc3Rz
LCBpbnRlbF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChndWMsIGludGVsX2d1
Y19saXZlX3NlbGZ0ZXN0KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggNTYwOTFlN2U1OTllLi42MTdhMzVjZmFjMmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlf
cmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9y
eV9yZWdpb24uYwpAQCAtMTEsOCArMTEsMTAgQEAKICNpbmNsdWRlICJtb2NrX2dlbV9kZXZpY2Uu
aCIKICNpbmNsdWRlICJtb2NrX3JlZ2lvbi5oIgogCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xt
ZW0uaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVnaW9uLmgiCiAjaW5jbHVkZSAiZ2VtL3Nl
bGZ0ZXN0cy9tb2NrX2NvbnRleHQuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1
ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5oIgogCiBzdGF0aWMgdm9pZCBjbG9zZV9vYmplY3Rz
KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCkBAIC0yNTIsNiArMjU0LDI3IEBAIHN0
YXRpYyBpbnQgaWd0X21vY2tfY29udGlndW91cyh2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0K
IAorc3RhdGljIGludCBpZ3RfbG1lbV9jcmVhdGUodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CisJaW50IGVyciA9IDA7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0o
aTkxNSwgUEFHRV9TSVpFLCAwKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBQVFJfRVJS
KG9iaik7CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJaWYgKGVy
cikKKwkJZ290byBvdXRfcHV0OworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7
CitvdXRfcHV0OgorCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKworCXJldHVybiBlcnI7Cit9
CisKIGludCBpbnRlbF9tZW1vcnlfcmVnaW9uX21vY2tfc2VsZnRlc3RzKHZvaWQpCiB7CiAJc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKQEAgLTI4MCwzICszMDMs
MjAgQEAgaW50IGludGVsX21lbW9yeV9yZWdpb25fbW9ja19zZWxmdGVzdHModm9pZCkKIAlkcm1f
ZGV2X3B1dCgmaTkxNS0+ZHJtKTsKIAlyZXR1cm4gZXJyOwogfQorCitpbnQgaW50ZWxfbWVtb3J5
X3JlZ2lvbl9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sK
KwlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0geworCQlTVUJURVNU
KGlndF9sbWVtX2NyZWF0ZSksCisJfTsKKworCWlmICghSEFTX0xNRU0oaTkxNSkpIHsKKwkJcHJf
aW5mbygiZGV2aWNlIGxhY2tzIExNRU0gc3VwcG9ydCwgc2tpcHBpbmdcbiIpOworCQlyZXR1cm4g
MDsKKwl9CisKKwlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKCZpOTE1LT5ndCkpCisJCXJldHVybiAw
OworCisJcmV0dXJuIGk5MTVfbGl2ZV9zdWJ0ZXN0cyh0ZXN0cywgaTkxNSk7Cit9Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
