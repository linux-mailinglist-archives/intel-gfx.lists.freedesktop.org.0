Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85DDB3B6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 19:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457866EA14;
	Thu, 17 Oct 2019 17:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635B36E20C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 17:45:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 10:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="202453579"
Received: from lgrafter-mobl2.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.29.114])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2019 10:45:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 18:45:44 +0100
Message-Id: <20191017174544.22446-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174544.22446-1-matthew.auld@intel.com>
References: <20191017174544.22446-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: treat stolen as a region
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

Q29udmVydCBzdG9sZW4gbWVtb3J5IG92ZXIgdG8gYSByZWdpb24gb2JqZWN0LiBTdGlsbCBsZWF2
ZXMgb3BlbiB0aGUKcXVlc3Rpb24gd2l0aCB3aGF0IHRvIGRvIHdpdGggcHJlLWFsbG9jYXRlZCBv
YmplY3RzLi4uCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+CkNjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jIHwgNjUgKysr
KysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0
b2xlbi5oIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAg
ICB8IDE0ICstLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAg
fCAgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVu
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKaW5kZXggYzc2
MjYwY2UxM2UzLi4wYjZjNDVlZGJmOTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zdG9sZW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc3RvbGVuLmMKQEAgLTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX21tLmg+
CiAjaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVn
aW9uLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9zdG9sZW4u
aCIKIApAQCAtMTUwLDcgKzE1MSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9hZGp1c3Rfc3RvbGVuKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gMDsKIH0KIAotdm9pZCBp
OTE1X2dlbV9jbGVhbnVwX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CitzdGF0aWMgdm9pZCBpOTE1X2dlbV9jbGVhbnVwX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWYgKCFkcm1fbW1faW5pdGlhbGl6ZWQoJmRldl9wcml2LT5t
bS5zdG9sZW4pKQogCQlyZXR1cm47CkBAIC0zNTUsNyArMzU2LDcgQEAgc3RhdGljIHZvaWQgaWNs
X2dldF9zdG9sZW5fcmVzZXJ2ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJfQog
fQogCi1pbnQgaTkxNV9nZW1faW5pdF9zdG9sZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQorc3RhdGljIGludCBpOTE1X2dlbV9pbml0X3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJcmVzb3VyY2Vfc2l6ZV90IHJlc2VydmVkX2Jhc2UsIHN0
b2xlbl90b3A7CiAJcmVzb3VyY2Vfc2l6ZV90IHJlc2VydmVkX3RvdGFsLCByZXNlcnZlZF9zaXpl
OwpAQCAtNTM5LDYgKzU0MCw5IEBAIGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX3N0b2xlbihzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCiAJaTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9u
b2RlKGRldl9wcml2LCBzdG9sZW4pOwogCWtmcmVlKHN0b2xlbik7CisKKwlpZiAob2JqLT5tbS5y
ZWdpb24pCisJCWk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21lbW9yeV9yZWdpb24ob2JqKTsKIH0K
IAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9v
YmplY3Rfc3RvbGVuX29wcyA9IHsKQEAgLTU0OCw4ICs1NTIsOSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX29iamVjdF9zdG9sZW5fb3BzID0g
ewogfTsKIAogc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKLV9pOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0J
CQkgICAgICAgc3RydWN0IGRybV9tbV9ub2RlICpzdG9sZW4pCitfX2k5MTVfZ2VtX29iamVjdF9j
cmVhdGVfc3RvbGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQlzdHJ1
Y3QgZHJtX21tX25vZGUgKnN0b2xlbiwKKwkJCQlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAq
bWVtKQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJdW5zaWduZWQgaW50
IGNhY2hlX2xldmVsOwpAQCAtNTcxLDYgKzU3Niw5IEBAIF9pOTE1X2dlbV9vYmplY3RfY3JlYXRl
X3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaWYgKGVycikKIAkJ
Z290byBjbGVhbnVwOwogCisJaWYgKG1lbSkKKwkJaTkxNV9nZW1fb2JqZWN0X2luaXRfbWVtb3J5
X3JlZ2lvbihvYmosIG1lbSwgMCk7CisKIAlyZXR1cm4gb2JqOwogCiBjbGVhbnVwOgpAQCAtNTc5
LDEwICs1ODcsMTIgQEAgX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gRVJSX1BUUihlcnIpOwogfQogCi1zdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCi1pOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkgICAgICByZXNvdXJjZV9zaXpl
X3Qgc2l6ZSkKK3N0YXRpYyBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCitfaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKKwkJ
CSAgICAgICByZXNvdXJjZV9zaXplX3Qgc2l6ZSwKKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgZmxh
Z3MpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbWVtLT5pOTE1Owog
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGRybV9tbV9ub2RlICpz
dG9sZW47CiAJaW50IHJldDsKQEAgLTYwMyw3ICs2MTMsNyBAQCBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWdvdG8gZXJy
X2ZyZWU7CiAJfQogCi0Jb2JqID0gX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGRldl9w
cml2LCBzdG9sZW4pOworCW9iaiA9IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2
X3ByaXYsIHN0b2xlbiwgbWVtKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCWdvdG8gZXJyX3JlbW92
ZTsKIApAQCAtNjE2LDYgKzYyNiw0MyBAQCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIG9iajsKIH0KIAorc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgoraTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJICAgICAgcmVzb3VyY2Vfc2l6
ZV90IHNpemUpCit7CisJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKGRldl9w
cml2LT5tbS5yZWdpb25zW0lOVEVMX1JFR0lPTl9TVE9MRU5dLAorCQkJCQkgICAgIHNpemUsIEk5
MTVfQk9fQUxMT0NfQ09OVElHVU9VUyk7Cit9CisKK3N0YXRpYyBpbnQgaW5pdF9zdG9sZW4oc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSkKK3sKKwkvKgorCSAqIEluaXRpYWxpc2Ugc3Rv
bGVuIGVhcmx5IHNvIHRoYXQgd2UgbWF5IHJlc2VydmUgcHJlYWxsb2NhdGVkCisJICogb2JqZWN0
cyBmb3IgdGhlIEJJT1MgdG8gS01TIHRyYW5zaXRpb24uCisJICovCisJcmV0dXJuIGk5MTVfZ2Vt
X2luaXRfc3RvbGVuKG1lbS0+aTkxNSk7Cit9CisKK3N0YXRpYyB2b2lkIHJlbGVhc2Vfc3RvbGVu
KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJaTkxNV9nZW1fY2xlYW51cF9z
dG9sZW4obWVtLT5pOTE1KTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9tZW1vcnlf
cmVnaW9uX29wcyBpOTE1X3JlZ2lvbl9zdG9sZW5fb3BzID0geworCS5pbml0ID0gaW5pdF9zdG9s
ZW4sCisJLnJlbGVhc2UgPSByZWxlYXNlX3N0b2xlbiwKKwkuY3JlYXRlX29iamVjdCA9IF9pOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbiwKK307CisKK3N0cnVjdCBpbnRlbF9tZW1vcnlfcmVn
aW9uICppOTE1X2dlbV9zdG9sZW5fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cit7CisJcmV0dXJuIGludGVsX21lbW9yeV9yZWdpb25fY3JlYXRlKGk5MTUsCisJCQkJCSAgaW50
ZWxfZ3JhcGhpY3Nfc3RvbGVuX3Jlcy5zdGFydCwKKwkJCQkJICByZXNvdXJjZV9zaXplKCZpbnRl
bF9ncmFwaGljc19zdG9sZW5fcmVzKSwKKwkJCQkJICBJOTE1X0dUVF9QQUdFX1NJWkVfNEssIDAs
CisJCQkJCSAgJmk5MTVfcmVnaW9uX3N0b2xlbl9vcHMpOworfQorCiBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqCiBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3JfcHJlYWxsb2Nh
dGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJICAgICAgIHJlc291
cmNlX3NpemVfdCBzdG9sZW5fb2Zmc2V0LApAQCAtNjU1LDcgKzcwMiw3IEBAIGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfc3RvbGVuX2Zvcl9wcmVhbGxvY2F0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2CiAJCXJldHVybiBFUlJfUFRSKHJldCk7CiAJfQogCi0Jb2JqID0gX2k5MTVf
Z2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGRldl9wcml2LCBzdG9sZW4pOworCW9iaiA9IF9faTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2X3ByaXYsIHN0b2xlbiwgTlVMTCk7CiAJaWYg
KElTX0VSUihvYmopKSB7CiAJCURSTV9ERUJVR19EUklWRVIoImZhaWxlZCB0byBhbGxvY2F0ZSBz
dG9sZW4gb2JqZWN0XG4iKTsKIAkJaTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRldl9wcml2
LCBzdG9sZW4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3N0b2xlbi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5oCmlu
ZGV4IDIyODk2NDRkODYwNC4uYzEwNDA2MjdmYmYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5oCkBAIC0yMSw4ICsyMSw3IEBAIGludCBpOTE1X2dlbV9zdG9s
ZW5faW5zZXJ0X25vZGVfaW5fcmFuZ2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJCQkgdTY0IGVuZCk7CiB2b2lkIGk5MTVfZ2VtX3N0b2xlbl9yZW1vdmVfbm9kZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJIHN0cnVjdCBkcm1fbW1fbm9kZSAq
bm9kZSk7Ci1pbnQgaTkxNV9nZW1faW5pdF9zdG9sZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KTsKLXZvaWQgaTkxNV9nZW1fY2xlYW51cF9zdG9sZW4oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKK3N0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICppOTE1X2dl
bV9zdG9sZW5fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKgogaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAgICAgcmVzb3VyY2Vfc2l6ZV90IHNp
emUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAyNjNmMWNlYTBiNjQuLjBk
ZjA1NzgzOGEyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI3NDgsOCAr
Mjc0OCw2IEBAIHZvaWQgaTkxNV9nZW1fY2xlYW51cF9tZW1vcnlfcmVnaW9ucyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnQgaTsKIAotCWk5MTVfZ2VtX2NsZWFudXBfc3Rv
bGVuKGk5MTUpOwotCiAJZm9yIChpID0gMDsgaSA8IElOVEVMX1JFR0lPTl9VTktOT1dOOyBpKysp
IHsKIAkJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKnJlZ2lvbiA9IGk5MTUtPm1tLnJlZ2lv
bnNbaV07CiAKQEAgLTI3NjIsMTUgKzI3NjAsNiBAQCBpbnQgaTkxNV9nZW1faW5pdF9tZW1vcnlf
cmVnaW9ucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnQgZXJyLCBpOwog
Ci0JLyoKLQkgKiBJbml0aWFsaXNlIHN0b2xlbiBlYXJseSBzbyB0aGF0IHdlIG1heSByZXNlcnZl
IHByZWFsbG9jYXRlZAotCSAqIG9iamVjdHMgZm9yIHRoZSBCSU9TIHRvIEtNUyB0cmFuc2l0aW9u
LgotCSAqLwotCS8qIFhYWDogc3RvbGVuIHdpbGwgYmVjb21lIGEgcmVnaW9uIGF0IHNvbWUgcG9p
bnQgKi8KLQllcnIgPSBpOTE1X2dlbV9pbml0X3N0b2xlbihpOTE1KTsKLQlpZiAoZXJyKQotCQly
ZXR1cm4gZXJyOwotCiAJZm9yIChpID0gMDsgaSA8IElOVEVMX1JFR0lPTl9VTktOT1dOOyBpKysp
IHsKIAkJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IEVSUl9QVFIoLUVOT0RFVik7
CiAJCXUzMiB0eXBlOwpAQCAtMjc4Myw2ICsyNzcyLDkgQEAgaW50IGk5MTVfZ2VtX2luaXRfbWVt
b3J5X3JlZ2lvbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCWNhc2UgSU5URUxf
TUVNT1JZX1NZU1RFTToKIAkJCW1lbSA9IGk5MTVfZ2VtX3NobWVtX3NldHVwKGk5MTUpOwogCQkJ
YnJlYWs7CisJCWNhc2UgSU5URUxfTUVNT1JZX1NUT0xFTjoKKwkJCW1lbSA9IGk5MTVfZ2VtX3N0
b2xlbl9zZXR1cChpOTE1KTsKKwkJCWJyZWFrOwogCQl9CiAKIAkJaWYgKElTX0VSUihtZW0pKSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBlNTVhYjI3MjQ5OTYuLmY5YTNiZmU2ODY4OSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC0xNTIsNyArMTUyLDcgQEAKIAkucGFnZV9zaXpl
cyA9IEk5MTVfR1RUX1BBR0VfU0laRV80SwogCiAjZGVmaW5lIEdFTl9ERUZBVUxUX1JFR0lPTlMg
XAotCS5tZW1vcnlfcmVnaW9ucyA9IFJFR0lPTl9TTUVNCisJLm1lbW9yeV9yZWdpb25zID0gUkVH
SU9OX1NNRU0gfCBSRUdJT05fU1RPTEVOCiAKICNkZWZpbmUgSTgzMF9GRUFUVVJFUyBcCiAJR0VO
KDIpLCBcCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
