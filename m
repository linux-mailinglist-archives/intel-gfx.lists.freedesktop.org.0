Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7923CFE57
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6926E849;
	Tue,  8 Oct 2019 16:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC336E28B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:01:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="187332363"
Received: from obreen-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.132])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 09:01:20 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 17:01:15 +0100
Message-Id: <20191008160116.18379-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008160116.18379-1-matthew.auld@intel.com>
References: <20191008160116.18379-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/region: support contiguous
 allocations
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

U29tZSBrZXJuZWwgaW50ZXJuYWwgb2JqZWN0cyBtYXkgbmVlZCB0byBiZSBhbGxvY2F0ZWQgYXMg
YSBjb250aWd1b3VzCmJsb2NrLCBhbHNvIHRoaW5raW5nIGFoZWFkIHRoZSB2YXJpb3VzIGtlcm5l
bCBpb19tYXBwaW5nIGludGVyZmFjZXMgc2VlbQp0byBleHBlY3QgaXQsIGFsdGhvdWdoIHRoaXMg
aXMgcHVyZWx5IGEgbGltaXRhdGlvbiBpbiB0aGUga2VybmVsCkFQSS4uLnNvIHBlcmhhcHMgc29t
ZXRoaW5nIHRvIGJlIGltcHJvdmVkLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGlu
dXguaW50ZWwuY29tPgpDYzogTWljaGFlbCBKIFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAg
IDYgKwogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICA0
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYyAgICB8ICAxNSAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oICAgIHwgICAzICst
CiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgNzEgKysr
Ky0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyAgICB8ICAg
OSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwgICAz
ICstCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAxNjUg
KysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19y
ZWdpb24uYyAgfCAgIDIgKy0KIDkgZmlsZXMgY2hhbmdlZCwgMjM5IGluc2VydGlvbnMoKyksIDM5
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
aAppbmRleCAwODZhOWJmNWFkY2MuLmRmZDE2ZDY1NjMwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMTM5LDYgKzEzOSwxMiBAQCBpOTE1X2dlbV9v
YmplY3RfaXNfcmVhZG9ubHkoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikK
IAlyZXR1cm4gb2JqLT5iYXNlLnZtYV9ub2RlLnJlYWRvbmx5OwogfQogCitzdGF0aWMgaW5saW5l
IGJvb2wKK2k5MTVfZ2VtX29iamVjdF9pc19jb250aWd1b3VzKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopCit7CisJcmV0dXJuIG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9D
X0NPTlRJR1VPVVM7Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbAogaTkxNV9nZW1fb2JqZWN0X3R5
cGVfaGFzKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgdW5zaWdu
ZWQgbG9uZyBmbGFncykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfdHlwZXMuaAppbmRleCAxMTM5MDU4NmNmZTEuLmM2YTcxMmNmN2Q3YSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaApAQCAtMTE5
LDYgKzExOSwxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7CiAKIAlJOTE1X1NFTEZU
RVNUX0RFQ0xBUkUoc3RydWN0IGxpc3RfaGVhZCBzdF9saW5rKTsKIAorCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7CisjZGVmaW5lIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyBCSVQoMCkKKyNkZWZpbmUg
STkxNV9CT19BTExPQ19GTEFHUyAoSTkxNV9CT19BTExPQ19DT05USUdVT1VTKQorCiAJLyoKIAkg
KiBJcyB0aGUgb2JqZWN0IHRvIGJlIG1hcHBlZCBhcyByZWFkLW9ubHkgdG8gdGhlIEdQVQogCSAq
IE9ubHkgaG9ub3VyZWQgaWYgaGFyZHdhcmUgaGFzIHJlbGV2YW50IHB0ZSBiaXQKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYwppbmRleCBmYWQzYTk0NjQxZTkuLjg5
NzA4YjNmYTAzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3JlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24u
YwpAQCAtMjMsMTAgKzIzLDEwIEBAIGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfYnVkZHkoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3Jl
Z2lvbiAqbWVtID0gb2JqLT5tbS5yZWdpb247CiAJc3RydWN0IGxpc3RfaGVhZCAqYmxvY2tzID0g
Jm9iai0+bW0uYmxvY2tzOwotCXVuc2lnbmVkIGludCBmbGFncyA9IEk5MTVfQUxMT0NfTUlOX1BB
R0VfU0laRTsKIAlyZXNvdXJjZV9zaXplX3Qgc2l6ZSA9IG9iai0+YmFzZS5zaXplOwogCXJlc291
cmNlX3NpemVfdCBwcmV2X2VuZDsKIAlzdHJ1Y3QgaTkxNV9idWRkeV9ibG9jayAqYmxvY2s7CisJ
dW5zaWduZWQgaW50IGZsYWdzOwogCXN0cnVjdCBzZ190YWJsZSAqc3Q7CiAJc3RydWN0IHNjYXR0
ZXJsaXN0ICpzZzsKIAl1bnNpZ25lZCBpbnQgc2dfcGFnZV9zaXplczsKQEAgLTQxLDYgKzQxLDEw
IEBAIGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfYnVkZHkoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaikKIAkJcmV0dXJuIC1FTk9NRU07CiAJfQogCisJZmxhZ3MgPSBJOTE1X0FMTE9D
X01JTl9QQUdFX1NJWkU7CisJaWYgKG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NPTlRJR1VP
VVMpCisJCWZsYWdzIHw9IEk5MTVfQUxMT0NfQ09OVElHVU9VUzsKKwogCXJldCA9IF9faW50ZWxf
bWVtb3J5X3JlZ2lvbl9nZXRfcGFnZXNfYnVkZHkobWVtLCBzaXplLCBmbGFncywgYmxvY2tzKTsK
IAlpZiAocmV0KQogCQlnb3RvIGVycl9mcmVlX3NnOwpAQCAtNTUsNyArNTksOCBAQCBpOTE1X2dl
bV9vYmplY3RfZ2V0X3BhZ2VzX2J1ZGR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmop
CiAJbGlzdF9mb3JfZWFjaF9lbnRyeShibG9jaywgYmxvY2tzLCBsaW5rKSB7CiAJCXU2NCBibG9j
a19zaXplLCBvZmZzZXQ7CiAKLQkJYmxvY2tfc2l6ZSA9IGk5MTVfYnVkZHlfYmxvY2tfc2l6ZSgm
bWVtLT5tbSwgYmxvY2spOworCQlibG9ja19zaXplID0gbWluX3QodTY0LCBzaXplLAorCQkJCSAg
IGk5MTVfYnVkZHlfYmxvY2tfc2l6ZSgmbWVtLT5tbSwgYmxvY2spKTsKIAkJb2Zmc2V0ID0gaTkx
NV9idWRkeV9ibG9ja19vZmZzZXQoYmxvY2spOwogCiAJCUdFTV9CVUdfT04ob3ZlcmZsb3dzX3R5
cGUoYmxvY2tfc2l6ZSwgc2ctPmxlbmd0aCkpOwpAQCAtOTYsMTAgKzEwMSwxMiBAQCBpOTE1X2dl
bV9vYmplY3RfZ2V0X3BhZ2VzX2J1ZGR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmop
CiB9CiAKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXRfbWVtb3J5X3JlZ2lvbihzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAotCQkJCQlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAq
bWVtKQorCQkJCQlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAorCQkJCQl1bnNpZ25l
ZCBsb25nIGZsYWdzKQogewogCUlOSVRfTElTVF9IRUFEKCZvYmotPm1tLmJsb2Nrcyk7CiAJb2Jq
LT5tbS5yZWdpb24gPSBpbnRlbF9tZW1vcnlfcmVnaW9uX2dldChtZW0pOworCW9iai0+ZmxhZ3Mg
fD0gZmxhZ3M7CiB9CiAKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lv
bihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQpAQCAtMTIwLDYgKzEyNyw4IEBAIGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICpt
ZW0sCiAJICogZnV0dXJlLgogCSAqLwogCisJR0VNX0JVR19PTihmbGFncyAmIH5JOTE1X0JPX0FM
TE9DX0ZMQUdTKTsKKwogCWlmICghbWVtKQogCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oCmluZGV4IGViZGRjODZk
NzhmNy4uZjJmZjZmOGJmZjc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcmVnaW9uLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3JlZ2lvbi5oCkBAIC0xNyw3ICsxNyw4IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdl
c19idWRkeShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgICAgc3RydWN0
IHNnX3RhYmxlICpwYWdlcyk7CiAKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXRfbWVtb3J5X3Jl
Z2lvbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAotCQkJCQlzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqbWVtKTsKKwkJCQkJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1l
bSwKKwkJCQkJdW5zaWduZWQgbG9uZyBmbGFncyk7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF9yZWxl
YXNlX21lbW9yeV9yZWdpb24oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CiAKIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKaW5kZXggYjRjMzkwZTlmYTUwLi42M2E0NzQzZTVmNTQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdl
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5j
CkBAIC00NTYsNiArNDU2LDcgQEAgc3RhdGljIGludCBpZ3RfbW9ja19leGhhdXN0X2RldmljZV9z
dXBwb3J0ZWRfcGFnZXModm9pZCAqYXJnKQogCiBzdGF0aWMgaW50IGlndF9tb2NrX21lbW9yeV9y
ZWdpb25faHVnZV9wYWdlcyh2b2lkICphcmcpCiB7CisJY29uc3QgdW5zaWduZWQgaW50IGZsYWdz
W10gPSB7IDAsIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyB9OwogCXN0cnVjdCBpOTE1X3BwZ3R0
ICpwcGd0dCA9IGFyZzsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBwZ3R0LT52
bS5pOTE1OwogCXVuc2lnbmVkIGxvbmcgc3VwcG9ydGVkID0gSU5URUxfSU5GTyhpOTE1KS0+cGFn
ZV9zaXplczsKQEAgLTQ3NCw0NiArNDc1LDUyIEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfbWVtb3J5
X3JlZ2lvbl9odWdlX3BhZ2VzKHZvaWQgKmFyZykKIAlmb3JfZWFjaF9zZXRfYml0KGJpdCwgJnN1
cHBvcnRlZCwgaWxvZzIoSTkxNV9HVFRfTUFYX1BBR0VfU0laRSkgKyAxKSB7CiAJCXVuc2lnbmVk
IGludCBwYWdlX3NpemUgPSBCSVQoYml0KTsKIAkJcmVzb3VyY2Vfc2l6ZV90IHBoeXM7CisJCWlu
dCBpOwogCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKG1lbSwgcGFnZV9z
aXplLCAwKTsKLQkJaWYgKElTX0VSUihvYmopKSB7Ci0JCQllcnIgPSBQVFJfRVJSKG9iaik7Ci0J
CQlnb3RvIG91dF9yZWdpb247Ci0JCX0KKwkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZmxh
Z3MpOyArK2kpIHsKKwkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKG1lbSwg
cGFnZV9zaXplLAorCQkJCQkJCSAgICBmbGFnc1tpXSk7CisJCQlpZiAoSVNfRVJSKG9iaikpIHsK
KwkJCQllcnIgPSBQVFJfRVJSKG9iaik7CisJCQkJZ290byBvdXRfcmVnaW9uOworCQkJfQogCi0J
CXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJnBwZ3R0LT52bSwgTlVMTCk7Ci0JCWlmIChJ
U19FUlIodm1hKSkgewotCQkJZXJyID0gUFRSX0VSUih2bWEpOwotCQkJZ290byBvdXRfcHV0Owot
CQl9CisJCQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosICZwcGd0dC0+dm0sIE5VTEwpOwor
CQkJaWYgKElTX0VSUih2bWEpKSB7CisJCQkJZXJyID0gUFRSX0VSUih2bWEpOworCQkJCWdvdG8g
b3V0X3B1dDsKKwkJCX0KIAotCQllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNF
Uik7Ci0JCWlmIChlcnIpCi0JCQlnb3RvIG91dF9jbG9zZTsKKwkJCWVyciA9IGk5MTVfdm1hX3Bp
bih2bWEsIDAsIDAsIFBJTl9VU0VSKTsKKwkJCWlmIChlcnIpCisJCQkJZ290byBvdXRfY2xvc2U7
CiAKLQkJZXJyID0gaWd0X2NoZWNrX3BhZ2Vfc2l6ZXModm1hKTsKLQkJaWYgKGVycikKLQkJCWdv
dG8gb3V0X3VucGluOworCQkJZXJyID0gaWd0X2NoZWNrX3BhZ2Vfc2l6ZXModm1hKTsKKwkJCWlm
IChlcnIpCisJCQkJZ290byBvdXRfdW5waW47CiAKLQkJcGh5cyA9IGk5MTVfZ2VtX29iamVjdF9n
ZXRfZG1hX2FkZHJlc3Mob2JqLCAwKTsKLQkJaWYgKCFJU19BTElHTkVEKHBoeXMsIHBhZ2Vfc2l6
ZSkpIHsKLQkJCXByX2VycigiJXMgYWRkciBtaXNhbGlnbmVkKCVwYSkgcGFnZV9zaXplPSV1XG4i
LAotCQkJICAgICAgIF9fZnVuY19fLCAmcGh5cywgcGFnZV9zaXplKTsKLQkJCWVyciA9IC1FSU5W
QUw7Ci0JCQlnb3RvIG91dF91bnBpbjsKLQkJfQorCQkJcGh5cyA9IGk5MTVfZ2VtX29iamVjdF9n
ZXRfZG1hX2FkZHJlc3Mob2JqLCAwKTsKKwkJCWlmICghSVNfQUxJR05FRChwaHlzLCBwYWdlX3Np
emUpKSB7CisJCQkJcHJfZXJyKCIlcyBhZGRyIG1pc2FsaWduZWQoJXBhKSBwYWdlX3NpemU9JXVc
biIsCisJCQkJICAgICAgIF9fZnVuY19fLCAmcGh5cywgcGFnZV9zaXplKTsKKwkJCQllcnIgPSAt
RUlOVkFMOworCQkJCWdvdG8gb3V0X3VucGluOworCQkJfQogCi0JCWlmICh2bWEtPnBhZ2Vfc2l6
ZXMuZ3R0ICE9IHBhZ2Vfc2l6ZSkgewotCQkJcHJfZXJyKCIlcyBwYWdlX3NpemVzLmd0dD0ldSwg
ZXhwZWN0ZWQ9JXVcbiIsCi0JCQkgICAgICAgX19mdW5jX18sIHZtYS0+cGFnZV9zaXplcy5ndHQs
IHBhZ2Vfc2l6ZSk7Ci0JCQllcnIgPSAtRUlOVkFMOwotCQkJZ290byBvdXRfdW5waW47Ci0JCX0K
KwkJCWlmICh2bWEtPnBhZ2Vfc2l6ZXMuZ3R0ICE9IHBhZ2Vfc2l6ZSkgeworCQkJCXByX2Vycigi
JXMgcGFnZV9zaXplcy5ndHQ9JXUsIGV4cGVjdGVkPSV1XG4iLAorCQkJCSAgICAgICBfX2Z1bmNf
Xywgdm1hLT5wYWdlX3NpemVzLmd0dCwKKwkJCQkgICAgICAgcGFnZV9zaXplKTsKKwkJCQllcnIg
PSAtRUlOVkFMOworCQkJCWdvdG8gb3V0X3VucGluOworCQkJfQogCi0JCWk5MTVfdm1hX3VucGlu
KHZtYSk7Ci0JCWk5MTVfdm1hX2Nsb3NlKHZtYSk7CisJCQlpOTE1X3ZtYV91bnBpbih2bWEpOwor
CQkJaTkxNV92bWFfY2xvc2Uodm1hKTsKIAotCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJ
CQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqLCBJOTE1X01NX05PUk1BTCk7CisJCQlp
OTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJCX0KIAl9CiAKIAlnb3RvIG91dF9yZWdpb247CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggMmVmNjdjMzk3
ZmNhLi45ODAwNjYxOGU4NzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X21lbW9yeV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmMKQEAgLTQ3LDggKzQ3LDggQEAgX19pbnRlbF9tZW1vcnlfcmVnaW9uX2dldF9wYWdl
c19idWRkeShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCQkJCSAgICAgIHVuc2ln
bmVkIGludCBmbGFncywKIAkJCQkgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpibG9ja3MpCiB7Ci0J
dW5zaWduZWQgbG9uZyBuX3BhZ2VzID0gc2l6ZSA+PiBpbG9nMihtZW0tPm1tLmNodW5rX3NpemUp
OwogCXVuc2lnbmVkIGludCBtaW5fb3JkZXIgPSAwOworCXVuc2lnbmVkIGxvbmcgbl9wYWdlczsK
IAogCUdFTV9CVUdfT04oIUlTX0FMSUdORUQoc2l6ZSwgbWVtLT5tbS5jaHVua19zaXplKSk7CiAJ
R0VNX0JVR19PTighbGlzdF9lbXB0eShibG9ja3MpKTsKQEAgLTU4LDYgKzU4LDEzIEBAIF9faW50
ZWxfbWVtb3J5X3JlZ2lvbl9nZXRfcGFnZXNfYnVkZHkoc3RydWN0IGludGVsX21lbW9yeV9yZWdp
b24gKm1lbSwKIAkJCSAgICBpbG9nMihtZW0tPm1tLmNodW5rX3NpemUpOwogCX0KIAorCWlmIChm
bGFncyAmIEk5MTVfQUxMT0NfQ09OVElHVU9VUykgeworCQlzaXplID0gcm91bmR1cF9wb3dfb2Zf
dHdvKHNpemUpOworCQltaW5fb3JkZXIgPSBpbG9nMihzaXplKSAtIGlsb2cyKG1lbS0+bW0uY2h1
bmtfc2l6ZSk7CisJfQorCisJbl9wYWdlcyA9IHNpemUgPj4gaWxvZzIobWVtLT5tbS5jaHVua19z
aXplKTsKKwogCW11dGV4X2xvY2soJm1lbS0+bW1fbG9jayk7CiAKIAlkbyB7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKaW5kZXggMmVhMTdkNmMzMWVkLi4yOWI4
NmNhMTdkZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9y
ZWdpb24uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgK
QEAgLTE4LDcgKzE4LDggQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7CiBzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbjsKIHN0cnVjdCBzZ190YWJsZTsKIAotI2RlZmluZSBJOTE1X0FMTE9D
X01JTl9QQUdFX1NJWkUgICBCSVQoMCkKKyNkZWZpbmUgSTkxNV9BTExPQ19NSU5fUEFHRV9TSVpF
ICBCSVQoMCkKKyNkZWZpbmUgSTkxNV9BTExPQ19DT05USUdVT1VTICAgICBCSVQoMSkKIAogc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb25fb3BzIHsKIAl1bnNpZ25lZCBpbnQgZmxhZ3M7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24u
YwppbmRleCA1M2Y0ZjJkOWY2NTUuLmYzMzk0ODg4ZTAxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCkBAIC0xMyw2ICsx
Myw3IEBACiAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVnaW9uLmgiCiAjaW5jbHVkZSAiZ2Vt
L3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuaCIKKyNpbmNsdWRlICJzZWxmdGVzdHMvaTkxNV9yYW5k
b20uaCIKIAogc3RhdGljIHZvaWQgY2xvc2Vfb2JqZWN0cyhzdHJ1Y3QgaW50ZWxfbWVtb3J5X3Jl
Z2lvbiAqbWVtLAogCQkJICBzdHJ1Y3QgbGlzdF9oZWFkICpvYmplY3RzKQpAQCAtODYsMTAgKzg3
LDE3NCBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2ZpbGwodm9pZCAqYXJnKQogCXJldHVybiBlcnI7
CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCitpZ3Rfb2JqZWN0X2Ny
ZWF0ZShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAorCQkgIHN0cnVjdCBsaXN0X2hl
YWQgKm9iamVjdHMsCisJCSAgdTY0IHNpemUsCisJCSAgdW5zaWduZWQgaW50IGZsYWdzKQorewor
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJaW50IGVycjsKKworCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKG1lbSwgc2l6ZSwgZmxhZ3MpOworCWlmIChJU19F
UlIob2JqKSkKKwkJcmV0dXJuIG9iajsKKworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFn
ZXMob2JqKTsKKwlpZiAoZXJyKQorCQlnb3RvIHB1dDsKKworCWxpc3RfYWRkKCZvYmotPnN0X2xp
bmssIG9iamVjdHMpOworCXJldHVybiBvYmo7CisKK3B1dDoKKwlpOTE1X2dlbV9vYmplY3RfcHV0
KG9iaik7CisJcmV0dXJuIEVSUl9QVFIoZXJyKTsKK30KKworc3RhdGljIHZvaWQgaWd0X29iamVj
dF9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJaTkxNV9nZW1f
b2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CisJX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKG9i
aiwgSTkxNV9NTV9OT1JNQUwpOworCWxpc3RfZGVsKCZvYmotPnN0X2xpbmspOworCWk5MTVfZ2Vt
X29iamVjdF9wdXQob2JqKTsKK30KKworc3RhdGljIGludCBpZ3RfbW9ja19jb250aWd1b3VzKHZv
aWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtID0gYXJnOworCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJdW5zaWduZWQgbG9uZyBuX29iamVjdHM7
CisJTElTVF9IRUFEKG9iamVjdHMpOworCUxJU1RfSEVBRChob2xlcyk7CisJSTkxNV9STkRfU1RB
VEUocHJuZyk7CisJcmVzb3VyY2Vfc2l6ZV90IHRhcmdldDsKKwlyZXNvdXJjZV9zaXplX3QgdG90
YWw7CisJcmVzb3VyY2Vfc2l6ZV90IG1pbjsKKwlpbnQgZXJyID0gMDsKKworCXRvdGFsID0gcmVz
b3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pOworCisJLyogTWluIHNpemUgKi8KKwlvYmogPSBpZ3Rf
b2JqZWN0X2NyZWF0ZShtZW0sICZvYmplY3RzLCBtZW0tPm1tLmNodW5rX3NpemUsCisJCQkJSTkx
NV9CT19BTExPQ19DT05USUdVT1VTKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBQVFJf
RVJSKG9iaik7CisKKwlpZiAob2JqLT5tbS5wYWdlcy0+bmVudHMgIT0gMSkgeworCQlwcl9lcnIo
IiVzIG1pbiBvYmplY3Qgc3BhbnMgbXVsdGlwbGUgc2cgZW50cmllc1xuIiwgX19mdW5jX18pOwor
CQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl9jbG9zZV9vYmplY3RzOworCX0KKworCWlndF9v
YmplY3RfcmVsZWFzZShvYmopOworCisJLyogTWF4IHNpemUgKi8KKwlvYmogPSBpZ3Rfb2JqZWN0
X2NyZWF0ZShtZW0sICZvYmplY3RzLCB0b3RhbCwgSTkxNV9CT19BTExPQ19DT05USUdVT1VTKTsK
KwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBQVFJfRVJSKG9iaik7CisKKwlpZiAob2JqLT5t
bS5wYWdlcy0+bmVudHMgIT0gMSkgeworCQlwcl9lcnIoIiVzIG1heCBvYmplY3Qgc3BhbnMgbXVs
dGlwbGUgc2cgZW50cmllc1xuIiwgX19mdW5jX18pOworCQllcnIgPSAtRUlOVkFMOworCQlnb3Rv
IGVycl9jbG9zZV9vYmplY3RzOworCX0KKworCWlndF9vYmplY3RfcmVsZWFzZShvYmopOworCisJ
LyogSW50ZXJuYWwgZnJhZ21lbnRhdGlvbiBzaG91bGQgbm90IGJsZWVkIGludG8gdGhlIG9iamVj
dCBzaXplICovCisJdGFyZ2V0ID0gcm91bmRfdXAocHJhbmRvbV91MzJfc3RhdGUoJnBybmcpICUg
dG90YWwsIFBBR0VfU0laRSk7CisJdGFyZ2V0ID0gbWF4X3QodTY0LCBQQUdFX1NJWkUsIHRhcmdl
dCk7CisKKwlvYmogPSBpZ3Rfb2JqZWN0X2NyZWF0ZShtZW0sICZvYmplY3RzLCB0YXJnZXQsCisJ
CQkJSTkxNV9CT19BTExPQ19DT05USUdVT1VTKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVy
biBQVFJfRVJSKG9iaik7CisKKwlpZiAob2JqLT5iYXNlLnNpemUgIT0gdGFyZ2V0KSB7CisJCXBy
X2VycigiJXMgb2JqLT5iYXNlLnNpemUoJWxseCkgIT0gdGFyZ2V0KCVsbHgpXG4iLCBfX2Z1bmNf
XywKKwkJICAgICAgICh1NjQpb2JqLT5iYXNlLnNpemUsICh1NjQpdGFyZ2V0KTsKKwkJZXJyID0g
LUVJTlZBTDsKKwkJZ290byBlcnJfY2xvc2Vfb2JqZWN0czsKKwl9CisKKwlpZiAob2JqLT5tbS5w
YWdlcy0+bmVudHMgIT0gMSkgeworCQlwcl9lcnIoIiVzIG9iamVjdCBzcGFucyBtdWx0aXBsZSBz
ZyBlbnRyaWVzXG4iLCBfX2Z1bmNfXyk7CisJCWVyciA9IC1FSU5WQUw7CisJCWdvdG8gZXJyX2Ns
b3NlX29iamVjdHM7CisJfQorCisJaWd0X29iamVjdF9yZWxlYXNlKG9iaik7CisKKwkvKgorCSAq
IFRyeSB0byBmcmFnbWVudCB0aGUgYWRkcmVzcyBzcGFjZSwgc3VjaCB0aGF0IGhhbGYgb2YgaXQg
aXMgZnJlZSwgYnV0CisJICogdGhlIG1heCBjb250aWd1b3VzIGJsb2NrIHNpemUgaXMgU1pfNjRL
LgorCSAqLworCisJdGFyZ2V0ID0gU1pfNjRLOworCW5fb2JqZWN0cyA9IGRpdjY0X3U2NCh0b3Rh
bCwgdGFyZ2V0KTsKKworCXdoaWxlIChuX29iamVjdHMtLSkgeworCQlzdHJ1Y3QgbGlzdF9oZWFk
ICpsaXN0OworCisJCWlmIChuX29iamVjdHMgJSAyKQorCQkJbGlzdCA9ICZob2xlczsKKwkJZWxz
ZQorCQkJbGlzdCA9ICZvYmplY3RzOworCisJCW9iaiA9IGlndF9vYmplY3RfY3JlYXRlKG1lbSwg
bGlzdCwgdGFyZ2V0LAorCQkJCQlJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpOworCQlpZiAoSVNf
RVJSKG9iaikpIHsKKwkJCWVyciA9IFBUUl9FUlIob2JqKTsKKwkJCWdvdG8gZXJyX2Nsb3NlX29i
amVjdHM7CisJCX0KKwl9CisKKwljbG9zZV9vYmplY3RzKG1lbSwgJmhvbGVzKTsKKworCW1pbiA9
IHRhcmdldDsKKwl0YXJnZXQgPSB0b3RhbCA+PiAxOworCisJLyogTWFrZSBzdXJlIHdlIGNhbiBz
dGlsbCBhbGxvY2F0ZSBhbGwgdGhlIGZyYWdtZW50ZWQgc3BhY2UgKi8KKwlvYmogPSBpZ3Rfb2Jq
ZWN0X2NyZWF0ZShtZW0sICZvYmplY3RzLCB0YXJnZXQsIDApOworCWlmIChJU19FUlIob2JqKSkg
eworCQllcnIgPSBQVFJfRVJSKG9iaik7CisJCWdvdG8gZXJyX2Nsb3NlX29iamVjdHM7CisJfQor
CisJaWd0X29iamVjdF9yZWxlYXNlKG9iaik7CisKKwkvKgorCSAqIEV2ZW4gdGhvdWdoIHdlIGhh
dmUgZW5vdWdoIGZyZWUgc3BhY2UsIHdlIGRvbid0IGhhdmUgYSBiaWcgZW5vdWdoCisJICogY29u
dGlndW91cyBibG9jay4gTWFrZSBzdXJlIHRoYXQgaG9sZHMgdHJ1ZS4KKwkgKi8KKworCWRvIHsK
KwkJYm9vbCBzaG91bGRfZmFpbCA9IHRhcmdldCA+IG1pbjsKKworCQlvYmogPSBpZ3Rfb2JqZWN0
X2NyZWF0ZShtZW0sICZvYmplY3RzLCB0YXJnZXQsCisJCQkJCUk5MTVfQk9fQUxMT0NfQ09OVElH
VU9VUyk7CisJCWlmIChzaG91bGRfZmFpbCAhPSBJU19FUlIob2JqKSkgeworCQkJcHJfZXJyKCIl
cyB0YXJnZXQgYWxsb2NhdGlvbiglbGx4KSBtaXNtYXRjaFxuIiwKKwkJCSAgICAgICBfX2Z1bmNf
XywgKHU2NCl0YXJnZXQpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyX2Nsb3NlX29i
amVjdHM7CisJCX0KKworCQl0YXJnZXQgPj49IDE7CisJfSB3aGlsZSAodGFyZ2V0ID49IG1lbS0+
bW0uY2h1bmtfc2l6ZSk7CisKK2Vycl9jbG9zZV9vYmplY3RzOgorCWxpc3Rfc3BsaWNlX3RhaWwo
JmhvbGVzLCAmb2JqZWN0cyk7CisJY2xvc2Vfb2JqZWN0cyhtZW0sICZvYmplY3RzKTsKKwlyZXR1
cm4gZXJyOworfQorCiBpbnQgaW50ZWxfbWVtb3J5X3JlZ2lvbl9tb2NrX3NlbGZ0ZXN0cyh2b2lk
KQogewogCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CiAJCVNV
QlRFU1QoaWd0X21vY2tfZmlsbCksCisJCVNVQlRFU1QoaWd0X21vY2tfY29udGlndW91cyksCiAJ
fTsKIAlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtOwogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L21vY2tfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdp
b24uYwppbmRleCAwZTlhNTc1ZWRlM2IuLjdiMGM5OWRkYzJkNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKQEAgLTM2LDcgKzM2LDcgQEAgbW9ja19v
YmplY3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAKIAlpOTE1X2dl
bV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIEk5MTVfQ0FDSEVfTk9ORSk7CiAKLQlp
OTE1X2dlbV9vYmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwgbWVtKTsKKwlpOTE1X2dlbV9v
YmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwgbWVtLCBmbGFncyk7CiAKIAlyZXR1cm4gb2Jq
OwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
