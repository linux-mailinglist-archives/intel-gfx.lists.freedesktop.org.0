Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2680C0A66
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E7A6E178;
	Fri, 27 Sep 2019 17:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A736E174
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:34:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:34:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="189508341"
Received: from rgdowlin-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.171])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 10:34:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 18:33:52 +0100
Message-Id: <20190927173409.31175-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927173409.31175-1-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/22] drm/i915/region: support volatile objects
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Vm9sYXRpbGUgb2JqZWN0cyBhcmUgbWFya2VkIGFzIERPTlRORUVEIHdoaWxlIHBpbm5lZCwgdGhl
cmVmb3JlIG9uY2UKdW5waW5uZWQgdGhlIGJhY2tpbmcgc3RvcmUgY2FuIGJlIGRpc2NhcmRlZC4g
VGhpcyBpcyBsaW1pdGVkIHRvIGtlcm5lbAppbnRlcm5hbCBvYmplY3RzLgoKU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBD
USBUYW5nIDxjcS50YW5nQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVs
Z3VlQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1faW50ZXJuYWwuYyAgICB8IDE3ICsrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgICB8ICA2ICsrKysrKwogLi4uL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggICAgfCAgOSArKysrKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICAgIHwgIDYgKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMgICAgICB8IDEyICsrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMg
fCAxMiArKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdp
b24uYyAgICAgIHwgIDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3Jl
Z2lvbi5oICAgICAgfCAgNSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfZ2VtX2d0dC5jICAgfCAgNSArKy0tLQogOSBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25z
KCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1faW50ZXJuYWwuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9pbnRlcm5hbC5jCmluZGV4IDBjNDFlMDRhYjhmYS4uNWU3MmNiMWNjMmQzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW50ZXJuYWwuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW50ZXJuYWwuYwpAQCAtMTE3LDEzICsxMTcs
NiBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfaW50ZXJuYWwoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJZ290byBlcnI7CiAJfQogCi0JLyogTWFyayB0
aGUgcGFnZXMgYXMgZG9udG5lZWQgd2hpbHN0IHRoZXkgYXJlIHN0aWxsIHBpbm5lZC4gQXMgc29v
bgotCSAqIGFzIHRoZXkgYXJlIHVucGlubmVkIHRoZXkgYXJlIGFsbG93ZWQgdG8gYmUgcmVhcGVk
IGJ5IHRoZSBzaHJpbmtlciwKLQkgKiBhbmQgdGhlIGNhbGxlciBpcyBleHBlY3RlZCB0byByZXBv
cHVsYXRlIC0gdGhlIGNvbnRlbnRzIG9mIHRoaXMKLQkgKiBvYmplY3QgYXJlIG9ubHkgdmFsaWQg
d2hpbHN0IGFjdGl2ZSBhbmQgcGlubmVkLgotCSAqLwotCW9iai0+bW0ubWFkdiA9IEk5MTVfTUFE
Vl9ET05UTkVFRDsKLQogCV9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhvYmosIHN0LCBzZ19w
YWdlX3NpemVzKTsKIAogCXJldHVybiAwOwpAQCAtMTQzLDcgKzEzNiw2IEBAIHN0YXRpYyB2b2lk
IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfaW50ZXJuYWwoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKIAlpbnRlcm5hbF9mcmVlX3BhZ2VzKHBhZ2VzKTsKIAogCW9iai0+bW0uZGly
dHkgPSBmYWxzZTsKLQlvYmotPm1tLm1hZHYgPSBJOTE1X01BRFZfV0lMTE5FRUQ7CiB9CiAKIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fb2JqZWN0
X2ludGVybmFsX29wcyA9IHsKQEAgLTE4OCw2ICsxODAsMTUgQEAgaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9pbnRlcm5hbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlkcm1fZ2VtX3By
aXZhdGVfb2JqZWN0X2luaXQoJmk5MTUtPmRybSwgJm9iai0+YmFzZSwgc2l6ZSk7CiAJaTkxNV9n
ZW1fb2JqZWN0X2luaXQob2JqLCAmaTkxNV9nZW1fb2JqZWN0X2ludGVybmFsX29wcyk7CiAKKwkv
KgorCSAqIE1hcmsgdGhlIG9iamVjdCBhcyB2b2xhdGlsZSwgc3VjaCB0aGF0IHRoZSBwYWdlcyBh
cmUgbWFya2VkIGFzCisJICogZG9udG5lZWQgd2hpbHN0IHRoZXkgYXJlIHN0aWxsIHBpbm5lZC4g
QXMgc29vbiBhcyB0aGV5IGFyZSB1bnBpbm5lZAorCSAqIHRoZXkgYXJlIGFsbG93ZWQgdG8gYmUg
cmVhcGVkIGJ5IHRoZSBzaHJpbmtlciwgYW5kIHRoZSBjYWxsZXIgaXMKKwkgKiBleHBlY3RlZCB0
byByZXBvcHVsYXRlIC0gdGhlIGNvbnRlbnRzIG9mIHRoaXMgb2JqZWN0IGFyZSBvbmx5IHZhbGlk
CisJICogd2hpbHN0IGFjdGl2ZSBhbmQgcGlubmVkLgorCSAqLworCW9iai0+ZmxhZ3MgPSBJOTE1
X0JPX0FMTE9DX1ZPTEFUSUxFOworCiAJb2JqLT5yZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01B
SU5fQ1BVOwogCW9iai0+d3JpdGVfZG9tYWluID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IDI5YjllZGRjNGM3
Zi4uZDU4MzljYmQ4MmMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5oCkBAIC0xMjIsNiArMTIyLDEyIEBAIGk5MTVfZ2VtX29iamVjdF9sb2NrX2ZlbmNlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwogdm9pZCBpOTE1X2dlbV9vYmplY3RfdW5s
b2NrX2ZlbmNlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSk7CiAKK3N0YXRpYyBpbmxpbmUgYm9vbAoraTkxNV9nZW1fb2JqZWN0
X2lzX3ZvbGF0aWxlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJ
cmV0dXJuIG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1ZPTEFUSUxFOworfQorCiBzdGF0aWMg
aW5saW5lIHZvaWQKIGk5MTVfZ2VtX29iamVjdF9zZXRfcmVhZG9ubHkoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfdHlwZXMuaAppbmRleCA3YWNkMzgzZjE3NGYuLjBkOTM0YjY3ZTU0NyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaApA
QCAtMTE5LDcgKzExOSw4IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKIAogCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7CiAjZGVmaW5lIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyBCSVQoMCkK
LSNkZWZpbmUgSTkxNV9CT19BTExPQ19GTEFHUyAoSTkxNV9CT19BTExPQ19DT05USUdVT1VTKQor
I2RlZmluZSBJOTE1X0JPX0FMTE9DX1ZPTEFUSUxFICAgQklUKDEpCisjZGVmaW5lIEk5MTVfQk9f
QUxMT0NfRkxBR1MgKEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyB8IEk5MTVfQk9fQUxMT0NfVk9M
QVRJTEUpCiAKIAkvKgogCSAqIElzIHRoZSBvYmplY3QgdG8gYmUgbWFwcGVkIGFzIHJlYWQtb25s
eSB0byB0aGUgR1BVCkBAIC0xNzAsNiArMTcxLDEyIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0IHsKIAkJICogTGlzdCBvZiBtZW1vcnkgcmVnaW9uIGJsb2NrcyBhbGxvY2F0ZWQgZm9yIHRo
aXMgb2JqZWN0LgogCQkgKi8KIAkJc3RydWN0IGxpc3RfaGVhZCBibG9ja3M7CisJCS8qKgorCQkg
KiBFbGVtZW50IHdpdGhpbiBtZW1vcnlfcmVnaW9uLT5vYmplY3RzIG9yIHJlZ2lvbi0+cHVyZ2Vh
YmxlCisJCSAqIGlmIHRoZSBvYmplY3QgaXMgbWFya2VkIGFzIERPTlRORUVELiBBY2Nlc3MgaXMg
cHJvdGVjdGVkIGJ5CisJCSAqIHJlZ2lvbi0+b2JqX2xvY2suCisJCSAqLworCQlzdHJ1Y3QgbGlz
dF9oZWFkIHJlZ2lvbl9saW5rOwogCiAJCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7CiAJCXZvaWQg
Km1hcHBpbmc7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCmluZGV4
IDJlOTQxZjA5M2EyMC4uYjBlYzA5NTljMTNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYwpAQCAtMTgsNiArMTgsOSBAQCB2b2lkIF9faTkxNV9nZW1fb2JqZWN0
X3NldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCiAJbG9ja2RlcF9h
c3NlcnRfaGVsZCgmb2JqLT5tbS5sb2NrKTsKIAorCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfdm9s
YXRpbGUob2JqKSkKKwkJb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX0RPTlRORUVEOworCiAJLyog
TWFrZSB0aGUgcGFnZXMgY29oZXJlbnQgd2l0aCB0aGUgR1BVIChmbHVzaGluZyBhbnkgc3dhcGlu
KS4gKi8KIAlpZiAob2JqLT5jYWNoZV9kaXJ0eSkgewogCQlvYmotPndyaXRlX2RvbWFpbiA9IDA7
CkBAIC0xNjAsNiArMTYzLDkgQEAgX19pOTE1X2dlbV9vYmplY3RfdW5zZXRfcGFnZXMoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlpZiAoSVNfRVJSX09SX05VTEwocGFnZXMpKQog
CQlyZXR1cm4gcGFnZXM7CiAKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3ZvbGF0aWxlKG9iaikp
CisJCW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9XSUxMTkVFRDsKKwogCWk5MTVfZ2VtX29iamVj
dF9tYWtlX3Vuc2hyaW5rYWJsZShvYmopOwogCiAJaWYgKG9iai0+bW0ubWFwcGluZykgewpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jCmluZGV4IGIzMTdhNWM4NDE0
NC4uZTk1NTBlMDM2NGNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Jl
Z2lvbi5jCkBAIC0xMDksMTAgKzEwOSwyMiBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0X21l
bW9yeV9yZWdpb24oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlJTklUX0xJU1Rf
SEVBRCgmb2JqLT5tbS5ibG9ja3MpOwogCW9iai0+bW0ucmVnaW9uID0gbWVtOwogCW9iai0+Zmxh
Z3MgPSBmbGFnczsKKworCW11dGV4X2xvY2soJm1lbS0+b2JqX2xvY2spOworCisJaWYgKG9iai0+
ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1ZPTEFUSUxFKQorCQlsaXN0X2FkZCgmb2JqLT5tbS5yZWdp
b25fbGluaywgJm1lbS0+cHVyZ2VhYmxlKTsKKwllbHNlCisJCWxpc3RfYWRkKCZvYmotPm1tLnJl
Z2lvbl9saW5rLCAmbWVtLT5vYmplY3RzKTsKKworCW11dGV4X3VubG9jaygmbWVtLT5vYmpfbG9j
ayk7CiB9CiAKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbihzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogeworCW11dGV4X2xvY2soJm9iai0+bW0ucmVn
aW9uLT5vYmpfbG9jayk7CisJbGlzdF9kZWwoJm9iai0+bW0ucmVnaW9uX2xpbmspOworCW11dGV4
X3VubG9jaygmb2JqLT5tbS5yZWdpb24tPm9ial9sb2NrKTsKIH0KIAogc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1
Z2VfcGFnZXMuYwppbmRleCBmOWZiZjI4NjU3ODIuLmI2ZGM5MDAzMDE1NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKQEAgLTExNSw4ICsx
MTUsNiBAQCBzdGF0aWMgaW50IGdldF9odWdlX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCiAJaWYgKGk5MTVfZ2VtX2d0dF9wcmVwYXJlX3BhZ2VzKG9iaiwgc3QpKQogCQln
b3RvIGVycjsKIAotCW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9ET05UTkVFRDsKLQogCUdFTV9C
VUdfT04oc2dfcGFnZV9zaXplcyAhPSBvYmotPm1tLnBhZ2VfbWFzayk7CiAJX19pOTE1X2dlbV9v
YmplY3Rfc2V0X3BhZ2VzKG9iaiwgc3QsIHNnX3BhZ2Vfc2l6ZXMpOwogCkBAIC0xMzcsNyArMTM1
LDYgQEAgc3RhdGljIHZvaWQgcHV0X2h1Z2VfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIAlodWdlX3BhZ2VzX2ZyZWVfcGFnZXMocGFnZXMpOwogCiAJb2JqLT5tbS5kaXJ0
eSA9IGZhbHNlOwotCW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9XSUxMTkVFRDsKIH0KIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBodWdlX3BhZ2Vfb3BzID0g
ewpAQCAtMTcwLDYgKzE2Nyw4IEBAIGh1Z2VfcGFnZXNfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+ZHJtLCAm
b2JqLT5iYXNlLCBzaXplKTsKIAlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZodWdlX3BhZ2Vf
b3BzKTsKIAorCW9iai0+ZmxhZ3MgPSBJOTE1X0JPX0FMTE9DX1ZPTEFUSUxFOworCiAJb2JqLT53
cml0ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+cmVhZF9kb21haW5zID0g
STkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPmNhY2hlX2xldmVsID0gSTkxNV9DQUNIRV9OT05F
OwpAQCAtMjI5LDggKzIyOCw2IEBAIHN0YXRpYyBpbnQgZmFrZV9nZXRfaHVnZV9wYWdlcyhzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCiAJaTkxNV9zZ190cmltKHN0KTsKIAotCW9i
ai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9ET05UTkVFRDsKLQogCV9faTkxNV9nZW1fb2JqZWN0X3Nl
dF9wYWdlcyhvYmosIHN0LCBzZ19wYWdlX3NpemVzKTsKIAogCXJldHVybiAwOwpAQCAtMjYzLDgg
KzI2MCw2IEBAIHN0YXRpYyBpbnQgZmFrZV9nZXRfaHVnZV9wYWdlc19zaW5nbGUoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlzZ19kbWFfbGVuKHNnKSA9IG9iai0+YmFzZS5zaXpl
OwogCXNnX2RtYV9hZGRyZXNzKHNnKSA9IHBhZ2Vfc2l6ZTsKIAotCW9iai0+bW0ubWFkdiA9IEk5
MTVfTUFEVl9ET05UTkVFRDsKLQogCV9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhvYmosIHN0
LCBzZy0+bGVuZ3RoKTsKIAogCXJldHVybiAwOwpAQCAtMjgzLDcgKzI3OCw2IEBAIHN0YXRpYyB2
b2lkIGZha2VfcHV0X2h1Z2VfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IHsKIAlmYWtlX2ZyZWVfaHVnZV9wYWdlcyhvYmosIHBhZ2VzKTsKIAlvYmotPm1tLmRpcnR5ID0g
ZmFsc2U7Ci0Jb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX1dJTExORUVEOwogfQogCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGZha2Vfb3BzID0gewpAQCAtMzIz
LDYgKzMxNyw4IEBAIGZha2VfaHVnZV9wYWdlc19vYmplY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsIHU2NCBzaXplLCBib29sIHNpbmdsZSkKIAllbHNlCiAJCWk5MTVfZ2VtX29iamVj
dF9pbml0KG9iaiwgJmZha2Vfb3BzKTsKIAorCW9iai0+ZmxhZ3MgPSBJOTE1X0JPX0FMTE9DX1ZP
TEFUSUxFOworCiAJb2JqLT53cml0ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9i
ai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPmNhY2hlX2xldmVs
ID0gSTkxNV9DQUNIRV9OT05FOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfbWVtb3J5X3JlZ2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3Jl
Z2lvbi5jCmluZGV4IDdhNjY4NzJkOWVhYy4uZmJhMDdmNzFkOWJkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCkBAIC0xNTQsNiArMTU0LDEwIEBAIGludGVs
X21lbW9yeV9yZWdpb25fY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCW1l
bS0+bWluX3BhZ2Vfc2l6ZSA9IG1pbl9wYWdlX3NpemU7CiAJbWVtLT5vcHMgPSBvcHM7CiAKKwlt
dXRleF9pbml0KCZtZW0tPm9ial9sb2NrKTsKKwlJTklUX0xJU1RfSEVBRCgmbWVtLT5vYmplY3Rz
KTsKKwlJTklUX0xJU1RfSEVBRCgmbWVtLT5wdXJnZWFibGUpOworCiAJbXV0ZXhfaW5pdCgmbWVt
LT5tbV9sb2NrKTsKIAogCWlmIChvcHMtPmluaXQpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uaAppbmRleCAxZGFkNTFiMmZjOTYuLjA5NWY1YThiNzdhZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaApAQCAtNDksNiArNDks
MTEgQEAgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gewogCXVuc2lnbmVkIGludCB0eXBlOwog
CXVuc2lnbmVkIGludCBpbnN0YW5jZTsKIAl1bnNpZ25lZCBpbnQgaWQ7CisKKwkvKiBQcm90ZWN0
cyBhY2Nlc3MgdG8gb2JqZWN0cyBhbmQgcHVyZ2VhYmxlICovCisJc3RydWN0IG11dGV4IG9ial9s
b2NrOworCXN0cnVjdCBsaXN0X2hlYWQgb2JqZWN0czsKKwlzdHJ1Y3QgbGlzdF9oZWFkIHB1cmdl
YWJsZTsKIH07CiAKIGludCBpbnRlbF9tZW1vcnlfcmVnaW9uX2luaXRfYnVkZHkoc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb24gKm1lbSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9nZW1fZ3R0LmMKaW5kZXggMGQ0MGUwYjQyOTIzLi5mNGQ3YjI1NGM5YTcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKQEAgLTkxLDgg
KzkxLDYgQEAgc3RhdGljIGludCBmYWtlX2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogCX0KIAlHRU1fQlVHX09OKHJlbSk7CiAKLQlvYmotPm1tLm1hZHYgPSBJOTE1
X01BRFZfRE9OVE5FRUQ7Ci0KIAlfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBwYWdl
cywgc2dfcGFnZV9zaXplcyk7CiAKIAlyZXR1cm4gMDsKQEAgLTEwNCw3ICsxMDIsNiBAQCBzdGF0
aWMgdm9pZCBmYWtlX3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
ewogCWZha2VfZnJlZV9wYWdlcyhvYmosIHBhZ2VzKTsKIAlvYmotPm1tLmRpcnR5ID0gZmFsc2U7
Ci0Jb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX1dJTExORUVEOwogfQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGZha2Vfb3BzID0gewpAQCAtMTMxLDYgKzEy
OCw4IEBAIGZha2VfZG1hX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0
IHNpemUpCiAJZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0sICZvYmotPmJh
c2UsIHNpemUpOwogCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmZha2Vfb3BzKTsKIAorCW9i
ai0+ZmxhZ3MgPSBJOTE1X0JPX0FMTE9DX1ZPTEFUSUxFOworCiAJb2JqLT53cml0ZV9kb21haW4g
PSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9N
QUlOX0NQVTsKIAlvYmotPmNhY2hlX2xldmVsID0gSTkxNV9DQUNIRV9OT05FOwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
