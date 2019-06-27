Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1DF58C28
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44336E836;
	Thu, 27 Jun 2019 20:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849C56E83B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:56:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:56:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455582"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:56:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:00 +0100
Message-Id: <20190627205633.1143-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/37] drm/i915/region: support continuous
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

U29tZSBvYmplY3RzIG1heSBuZWVkIHRvIGJlIGFsbG9jYXRlZCBhcyBhIGNvbnRpbnVvdXMgYmxv
Y2ssIHRoaW5raW5nCmFoZWFkIHRoZSB2YXJpb3VzIGtlcm5lbCBpb19tYXBwaW5nIGludGVyZmFj
ZXMgc2VlbSB0byBleHBlY3QgaXQuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+CkNjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmggIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
YyAgICB8ICAgNyArLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9u
LmMgIHwgMTUyICsrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfcmVnaW9uLmMgIHwgICAzICsKIDQgZmlsZXMgY2hhbmdlZCwgMTYwIGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IDg3MDAwZmMyNGFiMy4uMWM0Yjk5ZTUwN2MzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5o
CkBAIC0xMzMsNiArMTMzLDEwIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKIAlzdHJ1
Y3QgbGlzdF9oZWFkIGJhdGNoX3Bvb2xfbGluazsKIAlJOTE1X1NFTEZURVNUX0RFQ0xBUkUoc3Ry
dWN0IGxpc3RfaGVhZCBzdF9saW5rKTsKIAorCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisjZGVmaW5l
IEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyAoMTw8MCkKKyNkZWZpbmUgSTkxNV9CT19BTExPQ19G
TEFHUyAoSTkxNV9CT19BTExPQ19DT05USUdVT1VTKQorCiAJLyoKIAkgKiBJcyB0aGUgb2JqZWN0
IHRvIGJlIG1hcHBlZCBhcyByZWFkLW9ubHkgdG8gdGhlIEdQVQogCSAqIE9ubHkgaG9ub3VyZWQg
aWYgaGFyZHdhcmUgaGFzIHJlbGV2YW50IHB0ZSBiaXQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uYwppbmRleCA3MjFiNDdlNDY0OTIuLjliNmEzMmJmYTIwZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAtOTAsNiArOTAs
NyBAQCBpOTE1X21lbW9yeV9yZWdpb25fZ2V0X3BhZ2VzX2J1ZGR5KHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCiB7CiAJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IG9i
ai0+bWVtb3J5X3JlZ2lvbjsKIAlyZXNvdXJjZV9zaXplX3Qgc2l6ZSA9IG9iai0+YmFzZS5zaXpl
OworCXVuc2lnbmVkIGludCBmbGFncyA9IG9iai0+ZmxhZ3M7CiAJc3RydWN0IHNnX3RhYmxlICpz
dDsKIAlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwogCXVuc2lnbmVkIGludCBzZ19wYWdlX3NpemVz
OwpAQCAtMTMwLDcgKzEzMSw3IEBAIGk5MTVfbWVtb3J5X3JlZ2lvbl9nZXRfcGFnZXNfYnVkZHko
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJCWlmICghSVNfRVJSKGJsb2NrKSkK
IAkJCQlicmVhazsKIAotCQkJaWYgKCFvcmRlci0tKSB7CisJCQlpZiAoZmxhZ3MgJiBJOTE1X0JP
X0FMTE9DX0NPTlRJR1VPVVMgfHwgIW9yZGVyLS0pIHsKIAkJCQlyZXNvdXJjZV9zaXplX3QgdGFy
Z2V0OwogCQkJCWludCBlcnI7CiAKQEAgLTIxOSw2ICsyMjAsOSBAQCBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX3JlZ2lvbihzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCWlmICghbWVt
KQogCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKIAorCWlmIChmbGFncyAmIH5JOTE1X0JPX0FM
TE9DX0ZMQUdTKQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKKwogCXNpemUgPSByb3VuZF91
cChzaXplLCBtZW0tPm1pbl9wYWdlX3NpemUpOwogCiAJR0VNX0JVR19PTighc2l6ZSk7CkBAIC0y
MzYsNiArMjQwLDcgQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24oc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKm1lbSwKIAogCUlOSVRfTElTVF9IRUFEKCZvYmotPmJsb2Nrcyk7CiAJ
b2JqLT5tZW1vcnlfcmVnaW9uID0gbWVtOworCW9iai0+ZmxhZ3MgPSBmbGFnczsKIAogCW11dGV4
X2xvY2soJm1lbS0+b2JqX2xvY2spOwogCWxpc3RfYWRkKCZvYmotPnJlZ2lvbl9saW5rLCAmbWVt
LT5vYmplY3RzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
bnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50
ZWxfbWVtb3J5X3JlZ2lvbi5jCmluZGV4IGVjZTQ5OTg2OTc0Ny4uYzlkZThiNTAzOWU0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVn
aW9uLmMKQEAgLTc4LDE3ICs3OCwxNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2ZpbGwodm9pZCAq
YXJnKQogCiBzdGF0aWMgdm9pZCBpZ3RfbWFya19ldmljdGFibGUoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKIHsKLQlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKwlp
ZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSkKKwkJaTkxNV9nZW1fb2Jq
ZWN0X3VucGluX3BhZ2VzKG9iaik7CiAJb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX0RPTlRORUVE
OwogCWxpc3RfbW92ZSgmb2JqLT5yZWdpb25fbGluaywgJm9iai0+bWVtb3J5X3JlZ2lvbi0+cHVy
Z2VhYmxlKTsKIH0KIAotc3RhdGljIGludCBpZ3RfbW9ja19ldmljdCh2b2lkICphcmcpCitzdGF0
aWMgaW50IGlndF9mcmFnX3JlZ2lvbihzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAor
CQkJICAgc3RydWN0IGxpc3RfaGVhZCAqb2JqZWN0cykKIHsKLQlzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbiAqbWVtID0gYXJnOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJ
dW5zaWduZWQgbG9uZyBuX29iamVjdHM7Ci0JTElTVF9IRUFEKG9iamVjdHMpOwogCXJlc291cmNl
X3NpemVfdCB0YXJnZXQ7CiAJcmVzb3VyY2Vfc2l6ZV90IHRvdGFsOwogCWludCBlcnIgPSAwOwpA
QCAtMTA0LDcgKzEwNCw3IEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfZXZpY3Qodm9pZCAqYXJnKQog
CQkJZ290byBlcnJfY2xvc2Vfb2JqZWN0czsKIAkJfQogCi0JCWxpc3RfYWRkKCZvYmotPnN0X2xp
bmssICZvYmplY3RzKTsKKwkJbGlzdF9hZGQoJm9iai0+c3RfbGluaywgb2JqZWN0cyk7CiAKIAkJ
ZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwogCQlpZiAoZXJyKQpAQCAtMTE4
LDYgKzExOCwzOSBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2V2aWN0KHZvaWQgKmFyZykKIAkJCWln
dF9tYXJrX2V2aWN0YWJsZShvYmopOwogCX0KIAorCXJldHVybiAwOworCitlcnJfY2xvc2Vfb2Jq
ZWN0czoKKwljbG9zZV9vYmplY3RzKG9iamVjdHMpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRp
YyB2b2lkIGlndF9kZWZyYWdfcmVnaW9uKHN0cnVjdCBsaXN0X2hlYWQgKm9iamVjdHMpCit7CisJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKworCWxpc3RfZm9yX2VhY2hfZW50cnko
b2JqLCBvYmplY3RzLCBzdF9saW5rKSB7CisJCWlmIChvYmotPm1tLm1hZHYgPT0gSTkxNV9NQURW
X1dJTExORUVEKQorCQkJaWd0X21hcmtfZXZpY3RhYmxlKG9iaik7CisJfQorfQorCitzdGF0aWMg
aW50IGlndF9tb2NrX2V2aWN0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3Jl
Z2lvbiAqbWVtID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJTElT
VF9IRUFEKG9iamVjdHMpOworCXJlc291cmNlX3NpemVfdCB0YXJnZXQ7CisJcmVzb3VyY2Vfc2l6
ZV90IHRvdGFsOworCWludCBlcnI7CisKKwllcnIgPSBpZ3RfZnJhZ19yZWdpb24obWVtLCAmb2Jq
ZWN0cyk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKworCXRvdGFsID0gcmVzb3VyY2Vfc2l6
ZSgmbWVtLT5yZWdpb24pOworCXRhcmdldCA9IG1lbS0+bW0ubWluX3NpemU7CisKIAl3aGlsZSAo
dGFyZ2V0IDw9IHRvdGFsIC8gMikgewogCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3Jl
Z2lvbihtZW0sIHRhcmdldCwgMCk7CiAJCWlmIChJU19FUlIob2JqKSkgewpAQCAtMTQ4LDExICsx
ODEsMTIwIEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfZXZpY3Qodm9pZCAqYXJnKQogCXJldHVybiBl
cnI7CiB9CiAKK3N0YXRpYyBpbnQgaWd0X21vY2tfY29udGludW91cyh2b2lkICphcmcpCit7CisJ
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOworCUxJU1RfSEVBRChvYmplY3RzKTsKKwlyZXNvdXJjZV9zaXplX3Qg
dGFyZ2V0OworCXJlc291cmNlX3NpemVfdCB0b3RhbDsKKwlpbnQgZXJyOworCisJZXJyID0gaWd0
X2ZyYWdfcmVnaW9uKG1lbSwgJm9iamVjdHMpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisK
Kwl0b3RhbCA9IHJlc291cmNlX3NpemUoJm1lbS0+cmVnaW9uKTsKKwl0YXJnZXQgPSB0b3RhbCAv
IDI7CisKKwkvKgorCSAqIFNhbml0eSBjaGVjayB0aGF0IHdlIGNhbiBhbGxvY2F0ZSBhbGwgb2Yg
dGhlIGF2YWlsYWJsZSBmcmFnbWVudGVkCisJICogc3BhY2UuCisJICovCisJb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24obWVtLCB0YXJnZXQsIDApOworCWlmIChJU19FUlIob2Jq
KSkgeworCQllcnIgPSBQVFJfRVJSKG9iaik7CisJCWdvdG8gZXJyX2Nsb3NlX29iamVjdHM7CisJ
fQorCisJbGlzdF9hZGQoJm9iai0+c3RfbGluaywgJm9iamVjdHMpOworCisJZXJyID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCWlmIChlcnIpIHsKKwkJcHJfZXJyKCJmYWlsZWQg
dG8gYWxsb2NhdGUgYXZhaWxhYmxlIHNwYWNlXG4iKTsKKwkJZ290byBlcnJfY2xvc2Vfb2JqZWN0
czsKKwl9CisKKwlpZ3RfbWFya19ldmljdGFibGUob2JqKTsKKworCS8qIFRyeSB0aGUgc21hbGxl
c3QgcG9zc2libGUgc2l6ZSAtLSBzaG91bGQgc3VjY2VlZCAqLworCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfcmVnaW9uKG1lbSwgbWVtLT5tbS5taW5fc2l6ZSwKKwkJCQkJICAgIEk5MTVf
Qk9fQUxMT0NfQ09OVElHVU9VUyk7CisJaWYgKElTX0VSUihvYmopKSB7CisJCWVyciA9IFBUUl9F
UlIob2JqKTsKKwkJZ290byBlcnJfY2xvc2Vfb2JqZWN0czsKKwl9CisKKwlsaXN0X2FkZCgmb2Jq
LT5zdF9saW5rLCAmb2JqZWN0cyk7CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2Vz
KG9iaik7CisJaWYgKGVycikgeworCQlwcl9lcnIoImZhaWxlZCB0byBhbGxvY2F0ZSBzbWFsbGVz
dCBwb3NzaWJsZSBzaXplXG4iKTsKKwkJZ290byBlcnJfY2xvc2Vfb2JqZWN0czsKKwl9CisKKwlp
Z3RfbWFya19ldmljdGFibGUob2JqKTsKKworCWlmIChvYmotPm1tLnBhZ2VzLT5uZW50cyAhPSAx
KSB7CisJCXByX2VycigiWzFdb2JqZWN0IHNwYW5zIG11bHRpcGxlIHNnIGVudHJpZXNcbiIpOwor
CQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl9jbG9zZV9vYmplY3RzOworCX0KKworCS8qCisJ
ICogRXZlbiB0aG91Z2ggdGhlcmUgaXMgZW5vdWdoIGZyZWUgc3BhY2UgZm9yIHRoZSBhbGxvY2F0
aW9uLCB3ZQorCSAqIHNob3VsZG4ndCBiZSBhYmxlIHRvIGFsbG9jYXRlIGl0LCBnaXZlbiB0aGF0
IGl0IGlzIGZyYWdtZW50ZWQsIGFuZAorCSAqIG5vbi1jb250aW51b3VzLgorCSAqLworCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKG1lbSwgdGFyZ2V0LCBJOTE1X0JPX0FMTE9D
X0NPTlRJR1VPVVMpOworCWlmIChJU19FUlIob2JqKSkgeworCQllcnIgPSBQVFJfRVJSKG9iaik7
CisJCWdvdG8gZXJyX2Nsb3NlX29iamVjdHM7CisJfQorCisJbGlzdF9hZGQoJm9iai0+c3RfbGlu
aywgJm9iamVjdHMpOworCisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwor
CWlmICghZXJyKSB7CisJCXByX2VycigiZXhwZWN0ZWQgYWxsb2NhdGlvbiB0byBmYWlsXG4iKTsK
KwkJZXJyID0gLUVJTlZBTDsKKwkJZ290byBlcnJfY2xvc2Vfb2JqZWN0czsKKwl9CisKKwlpZ3Rf
ZGVmcmFnX3JlZ2lvbigmb2JqZWN0cyk7CisKKwkvKiBTaG91bGQgbm93IHN1Y2NlZWQgKi8KKwlv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihtZW0sIHRhcmdldCwgSTkxNV9CT19B
TExPQ19DT05USUdVT1VTKTsKKwlpZiAoSVNfRVJSKG9iaikpIHsKKwkJZXJyID0gUFRSX0VSUihv
YmopOworCQlnb3RvIGVycl9jbG9zZV9vYmplY3RzOworCX0KKworCWxpc3RfYWRkKCZvYmotPnN0
X2xpbmssICZvYmplY3RzKTsKKworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2Jq
KTsKKwlpZiAoZXJyKSB7CisJCXByX2VycigiZmFpbGVkIHRvIGFsbG9jYXRlIGZyb20gZGVmcmFn
ZWQgYXJlYVxuIik7CisJCWdvdG8gZXJyX2Nsb3NlX29iamVjdHM7CisJfQorCisJaWYgKG9iai0+
bW0ucGFnZXMtPm5lbnRzICE9IDEpIHsKKwkJcHJfZXJyKCJvYmplY3Qgc3BhbnMgbXVsdGlwbGUg
c2cgZW50cmllc1xuIik7CisJCWVyciA9IC1FSU5WQUw7CisJfQorCitlcnJfY2xvc2Vfb2JqZWN0
czoKKwljbG9zZV9vYmplY3RzKCZvYmplY3RzKTsKKworCXJldHVybiBlcnI7Cit9CisKIGludCBp
bnRlbF9tZW1vcnlfcmVnaW9uX21vY2tfc2VsZnRlc3RzKHZvaWQpCiB7CiAJc3RhdGljIGNvbnN0
IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKIAkJU1VCVEVTVChpZ3RfbW9ja19maWxs
KSwKIAkJU1VCVEVTVChpZ3RfbW9ja19ldmljdCksCisJCVNVQlRFU1QoaWd0X21vY2tfY29udGlu
dW91cyksCiAJfTsKIAlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtOwogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19yZWdpb24uYwppbmRleCA4MGVhZmRjNTQ5MjcuLjllZWRhOGY0NWYzOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKQEAgLTIwLDYgKzIwLDkg
QEAgbW9ja19vYmplY3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAl1bnNpZ25lZCBpbnQgY2FjaGVfbGV2
ZWw7CiAKKwlpZiAoZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpCisJCXNpemUgPSBy
b3VuZHVwX3Bvd19vZl90d28oc2l6ZSk7CisKIAlpZiAoc2l6ZSA+IEJJVChtZW0tPm1tLm1heF9v
cmRlcikgKiBtZW0tPm1tLm1pbl9zaXplKQogCQlyZXR1cm4gRVJSX1BUUigtRTJCSUcpOwogCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
