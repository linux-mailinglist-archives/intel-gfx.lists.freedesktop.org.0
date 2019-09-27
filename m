Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8364C0A6E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E72E6E183;
	Fri, 27 Sep 2019 17:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C1D36E17B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:34:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="189508413"
Received: from rgdowlin-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.171])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 10:34:31 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 18:34:00 +0100
Message-Id: <20190927173409.31175-14-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927173409.31175-1-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/22] drm/i915: treat shmem as a region
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

U2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzog
Sm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogQWJk
aWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMgICAgICB8ICA1ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMgICAgfCAxNCArKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyAgICAgfCA2OCArKysrKysrKysrKysr
Ky0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAg
MiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAgOSAt
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICB8ICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAyOSArKysr
Ky0tLQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgIDYg
Ky0KIDggZmlsZXMgY2hhbmdlZCwgOTUgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKaW5kZXggNzY4MzU2OTA4MTYw
Li44MDQzZmY2M2Q3M2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9waHlzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMu
YwpAQCAtMTYsNiArMTYsNyBAQAogI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3QuaCIKKyNpbmNsdWRlICJpOTE1
X2dlbV9yZWdpb24uaCIKICNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCiAKIHN0YXRpYyBp
bnQgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19waHlzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCkBAIC0xOTEsOCArMTkyLDEwIEBAIGludCBpOTE1X2dlbV9vYmplY3RfYXR0YWNo
X3BoeXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgaW50IGFsaWduKQogCS8qIFBl
cm1hLXBpbiAodW50aWwgcmVsZWFzZSkgdGhlIHBoeXNpY2FsIHNldCBvZiBwYWdlcyAqLwogCV9f
aTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwogCi0JaWYgKCFJU19FUlJfT1JfTlVMTChw
YWdlcykpCisJaWYgKCFJU19FUlJfT1JfTlVMTChwYWdlcykpIHsKIAkJaTkxNV9nZW1fc2htZW1f
b3BzLnB1dF9wYWdlcyhvYmosIHBhZ2VzKTsKKwkJaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVt
b3J5X3JlZ2lvbihvYmopOworCX0KIAltdXRleF91bmxvY2soJm9iai0+bW0ubG9jayk7CiAJcmV0
dXJuIDA7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9y
ZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYwppbmRl
eCBlOTU1MGUwMzY0Y2MuLjBhZWFlYmI0MTA1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9yZWdpb24uYwpAQCAtNiw2ICs2LDcgQEAKICNpbmNsdWRlICJpbnRlbF9tZW1v
cnlfcmVnaW9uLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fcmVnaW9uLmgiCiAjaW5jbHVkZSAiaTkx
NV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCiAKIHZvaWQKIGk5MTVfZ2VtX29iamVj
dF9wdXRfcGFnZXNfYnVkZHkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKQEAgLTE0
NCwxMSArMTQ1LDIyIEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKHN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uICptZW0sCiAJR0VNX0JVR19PTighc2l6ZSk7CiAJR0VNX0JVR19PTigh
SVNfQUxJR05FRChzaXplLCBJOTE1X0dUVF9NSU5fQUxJR05NRU5UKSk7CiAKKwkvKgorCSAqIFRo
ZXJlIGlzIGEgcHJldmFsZW5jZSBvZiB0aGUgYXNzdW1wdGlvbiB0aGF0IHdlIGZpdCB0aGUgb2Jq
ZWN0J3MKKwkgKiBwYWdlIGNvdW50IGluc2lkZSBhIDMyYml0IF9zaWduZWRfIHZhcmlhYmxlLiBM
ZXQncyBkb2N1bWVudCB0aGlzIGFuZAorCSAqIGNhdGNoIGlmIHdlIGV2ZXIgbmVlZCB0byBmaXgg
aXQuIEluIHRoZSBtZWFudGltZSwgaWYgeW91IGRvIHNwb3QKKwkgKiBzdWNoIGEgbG9jYWwgdmFy
aWFibGUsIHBsZWFzZSBjb25zaWRlciBmaXhpbmchCisJICovCisKIAlpZiAoc2l6ZSA+PiBQQUdF
X1NISUZUID4gSU5UX01BWCkKIAkJcmV0dXJuIEVSUl9QVFIoLUUyQklHKTsKIAogCWlmIChvdmVy
Zmxvd3NfdHlwZShzaXplLCBvYmotPmJhc2Uuc2l6ZSkpCiAJCXJldHVybiBFUlJfUFRSKC1FMkJJ
Ryk7CiAKLQlyZXR1cm4gbWVtLT5vcHMtPmNyZWF0ZV9vYmplY3QobWVtLCBzaXplLCBmbGFncyk7
CisJb2JqID0gbWVtLT5vcHMtPmNyZWF0ZV9vYmplY3QobWVtLCBzaXplLCBmbGFncyk7CisJaWYg
KCFJU19FUlIob2JqKSkKKwkJdHJhY2VfaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZShvYmopOworCisJ
cmV0dXJuIG9iajsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9zaG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMK
aW5kZXggOWY1ZDkwM2Y3NzkzLi42OTZlMTVlOGM0MTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zaG1lbS5jCkBAIC03LDcgKzcsOSBAQAogI2luY2x1ZGUgPGxpbnV4L3Bh
Z2V2ZWMuaD4KICNpbmNsdWRlIDxsaW51eC9zd2FwLmg+CiAKKyNpbmNsdWRlICJnZW0vaTkxNV9n
ZW1fcmVnaW9uLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X2dlbWZz
LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCiAjaW5jbHVkZSAiaTkxNV9zY2F0dGVy
bGlzdC5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKQEAgLTI2LDYgKzI4LDcgQEAgc3RhdGlj
IHZvaWQgY2hlY2tfcmVsZWFzZV9wYWdldmVjKHN0cnVjdCBwYWdldmVjICpwdmVjKQogc3RhdGlj
IGludCBzaG1lbV9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7
CisJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IG9iai0+bW0ucmVnaW9uOwogCWNv
bnN0IHVuc2lnbmVkIGxvbmcgcGFnZV9jb3VudCA9IG9iai0+YmFzZS5zaXplIC8gUEFHRV9TSVpF
OwogCXVuc2lnbmVkIGxvbmcgaTsKIAlzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZzsKQEAg
LTUyLDcgKzU1LDcgQEAgc3RhdGljIGludCBzaG1lbV9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKIAkgKiBJZiB0aGVyZSdzIG5vIGNoYW5jZSBvZiBhbGxvY2F0aW5n
IGVub3VnaCBwYWdlcyBmb3IgdGhlIHdob2xlCiAJICogb2JqZWN0LCBiYWlsIGVhcmx5LgogCSAq
LwotCWlmIChwYWdlX2NvdW50ID4gdG90YWxyYW1fcGFnZXMoKSkKKwlpZiAob2JqLT5iYXNlLnNp
emUgPiByZXNvdXJjZV9zaXplKCZtZW0tPnJlZ2lvbikpCiAJCXJldHVybiAtRU5PTUVNOwogCiAJ
c3QgPSBrbWFsbG9jKHNpemVvZigqc3QpLCBHRlBfS0VSTkVMKTsKQEAgLTQxNyw2ICs0MjAsOCBA
QCBzaG1lbV9wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAogc3RhdGlj
IHZvaWQgc2htZW1fcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewor
CWk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21lbW9yeV9yZWdpb24ob2JqKTsKKwogCWZwdXQob2Jq
LT5iYXNlLmZpbHApOwogfQogCkBAIC00MzUsNyArNDQwLDcgQEAgY29uc3Qgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX3NobWVtX29wcyA9IHsKIAkucmVsZWFzZSA9IHNo
bWVtX3JlbGVhc2UsCiB9OwogCi1zdGF0aWMgaW50IGNyZWF0ZV9zaG1lbShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKK3N0YXRpYyBpbnQgX19jcmVhdGVfc2htZW0oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJCXNp
emVfdCBzaXplKQogewpAQCAtNDU2LDMxICs0NjEsMjMgQEAgc3RhdGljIGludCBjcmVhdGVfc2ht
ZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJcmV0dXJuIDA7CiB9CiAKLXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKLWk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBzaXplKQorc3RhdGljIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICoKK2NyZWF0ZV9zaG1lbShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbWVtLAorCSAgICAgcmVzb3VyY2Vfc2l6ZV90IHNpemUsCisJICAgICB1bnNpZ25lZCBmbGFn
cykKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKIAlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBhZGRyZXNzX3NwYWNlICptYXBw
aW5nOwogCXVuc2lnbmVkIGludCBjYWNoZV9sZXZlbDsKIAlnZnBfdCBtYXNrOwogCWludCByZXQ7
CiAKLQkvKiBUaGVyZSBpcyBhIHByZXZhbGVuY2Ugb2YgdGhlIGFzc3VtcHRpb24gdGhhdCB3ZSBm
aXQgdGhlIG9iamVjdCdzCi0JICogcGFnZSBjb3VudCBpbnNpZGUgYSAzMmJpdCBfc2lnbmVkXyB2
YXJpYWJsZS4gTGV0J3MgZG9jdW1lbnQgdGhpcyBhbmQKLQkgKiBjYXRjaCBpZiB3ZSBldmVyIG5l
ZWQgdG8gZml4IGl0LiBJbiB0aGUgbWVhbnRpbWUsIGlmIHlvdSBkbyBzcG90Ci0JICogc3VjaCBh
IGxvY2FsIHZhcmlhYmxlLCBwbGVhc2UgY29uc2lkZXIgZml4aW5nIQotCSAqLwotCWlmIChzaXpl
ID4+IFBBR0VfU0hJRlQgPiBJTlRfTUFYKQotCQlyZXR1cm4gRVJSX1BUUigtRTJCSUcpOwotCi0J
aWYgKG92ZXJmbG93c190eXBlKHNpemUsIG9iai0+YmFzZS5zaXplKSkKLQkJcmV0dXJuIEVSUl9Q
VFIoLUUyQklHKTsKLQogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9hbGxvYygpOwogCWlmICghb2Jq
KQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotCXJldCA9IGNyZWF0ZV9zaG1lbShpOTE1
LCAmb2JqLT5iYXNlLCBzaXplKTsKKwlyZXQgPSBfX2NyZWF0ZV9zaG1lbShpOTE1LCAmb2JqLT5i
YXNlLCBzaXplKTsKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAKQEAgLTUxOSw3ICs1MTYsNyBA
QCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCB1NjQgc2l6ZSkKIAogCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9i
aiwgY2FjaGVfbGV2ZWwpOwogCi0JdHJhY2VfaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZShvYmopOwor
CWk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24ob2JqLCBtZW0sIDApOwogCiAJcmV0
dXJuIG9iajsKIApAQCAtNTI4LDYgKzUyNSwxMyBAQCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3No
bWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6ZSkKIAlyZXR1cm4gRVJS
X1BUUihyZXQpOwogfQogCitzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCitpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3NobWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6
ZSkKK3sKKwlyZXR1cm4gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24oaTkxNS0+bW0ucmVn
aW9uc1tJTlRFTF9NRU1PUllfU01FTV0sCisJCQkJCSAgICAgc2l6ZSwgMCk7Cit9CisKIC8qIEFs
bG9jYXRlIGEgbmV3IEdFTSBvYmplY3QgYW5kIGZpbGwgaXQgd2l0aCB0aGUgc3VwcGxpZWQgZGF0
YSAqLwogc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgogaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zaG1lbV9mcm9tX2RhdGEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LApAQCAt
NTc4LDMgKzU4MiwzMyBAQCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtX2Zyb21fZGF0YShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaTkxNV9nZW1fb2JqZWN0X3B1dChv
YmopOwogCXJldHVybiBFUlJfUFRSKGVycik7CiB9CisKK3N0YXRpYyBpbnQgaW5pdF9zaG1lbShz
dHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKQoreworCWludCBlcnI7CisKKwllcnIgPSBp
OTE1X2dlbWZzX2luaXQobWVtLT5pOTE1KTsKKwlpZiAoZXJyKQorCQkgRFJNX05PVEUoIlVuYWJs
ZSB0byBjcmVhdGUgYSBwcml2YXRlIHRtcGZzIG1vdW50LCBodWdlcGFnZSBzdXBwb3J0IHdpbGwg
YmUgZGlzYWJsZWQoJWQpLlxuIiwgZXJyKTsKKworCXJldHVybiAwOyAvKiBEb24ndCBlcnJvciwg
d2UgY2FuIHNpbXBseSBmYWxsYmFjayB0byB0aGUga2VybmVsIG1udCAqLworfQorCitzdGF0aWMg
dm9pZCByZWxlYXNlX3NobWVtKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJ
aTkxNV9nZW1mc19maW5pKG1lbS0+aTkxNSk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbl9vcHMgc2htZW1fcmVnaW9uX29wcyA9IHsKKwkuaW5pdCA9IGluaXRf
c2htZW0sCisJLnJlbGVhc2UgPSByZWxlYXNlX3NobWVtLAorCS5jcmVhdGVfb2JqZWN0ID0gY3Jl
YXRlX3NobWVtLAorfTsKKworc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKmk5MTVfZ2VtX3No
bWVtX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXJldHVybiBpbnRl
bF9tZW1vcnlfcmVnaW9uX2NyZWF0ZShpOTE1LCAwLAorCQkJCQkgIHRvdGFscmFtX3BhZ2VzKCkg
PDwgUEFHRV9TSElGVCwKKwkJCQkJICBJOTE1X0dUVF9QQUdFX1NJWkVfNEssIDAsCisJCQkJCSAg
JnNobWVtX3JlZ2lvbl9vcHMpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggY2QxNDE0
ZjJiY2I1Li42Y2YxM2U5ODc5NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjI2Myw2
ICsyMjYzLDggQEAgdm9pZCBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiBpbnQgaTkxNV9nZW1fZnJlZXplKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiBpbnQgaTkxNV9nZW1fZnJlZXplX2xhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIAorc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKmk5
MTVfZ2VtX3NobWVtX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKKwogc3Rh
dGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDNk
M2ZkYTRjYWU5OS4uZmQzMjliNmI0NzVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTQ1
LDcgKzQ1LDYgQEAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgogI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKLSNp
bmNsdWRlICJnZW0vaTkxNV9nZW1mcy5oIgogI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2Vy
LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5o
IgpAQCAtMTUzNSwxNiArMTUzNCwxMCBAQCBzdGF0aWMgdm9pZCBpOTE1X2dlbV9pbml0X19tbShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogdm9pZCBpOTE1X2dlbV9pbml0X2Vhcmx5
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlpbnQgZXJyOwotCiAJaTkx
NV9nZW1faW5pdF9fbW0oZGV2X3ByaXYpOwogCWk5MTVfZ2VtX2luaXRfX3BtKGRldl9wcml2KTsK
IAogCXNwaW5fbG9ja19pbml0KCZkZXZfcHJpdi0+ZmJfdHJhY2tpbmcubG9jayk7Ci0KLQllcnIg
PSBpOTE1X2dlbWZzX2luaXQoZGV2X3ByaXYpOwotCWlmIChlcnIpCi0JCURSTV9OT1RFKCJVbmFi
bGUgdG8gY3JlYXRlIGEgcHJpdmF0ZSB0bXBmcyBtb3VudCwgaHVnZXBhZ2Ugc3VwcG9ydCB3aWxs
IGJlIGRpc2FibGVkKCVkKS5cbiIsIGVycik7CiB9CiAKIHZvaWQgaTkxNV9nZW1fY2xlYW51cF9l
YXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xNTUzLDggKzE1NDYs
NiBAQCB2b2lkIGk5MTVfZ2VtX2NsZWFudXBfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCUdFTV9CVUdfT04oIWxsaXN0X2VtcHR5KCZkZXZfcHJpdi0+bW0uZnJlZV9s
aXN0KSk7CiAJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmZGV2X3ByaXYtPm1tLmZyZWVfY291bnQp
KTsKIAlXQVJOX09OKGRldl9wcml2LT5tbS5zaHJpbmtfY291bnQpOwotCi0JaTkxNV9nZW1mc19m
aW5pKGRldl9wcml2KTsKIH0KIAogaW50IGk5MTVfZ2VtX2ZyZWV6ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IGEy
OTYzNjc3ODYxZC4uNjdmYTYxZThiYjE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YwpAQCAtMjc4MCw3ICsyNzgwLDggQEAgaW50IGk5MTVfZ2VtX2luaXRfbWVtb3J5X3JlZ2lvbnMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAkJdHlwZSA9IE1FTU9SWV9UWVBFX0ZS
T01fUkVHSU9OKGludGVsX3JlZ2lvbl9tYXBbaV0pOwogCQlzd2l0Y2ggKHR5cGUpIHsKLQkJZGVm
YXVsdDoKKwkJY2FzZSBJTlRFTF9TTUVNOgorCQkJbWVtID0gaTkxNV9nZW1fc2htZW1fc2V0dXAo
aTkxNSk7CiAJCQlicmVhazsKIAkJfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBlYTUz
ZGZlMmZiYTAuLjkxMDFlYTFkZmY5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC0xNTIs
NiArMTUyLDkgQEAKICNkZWZpbmUgR0VOX0RFRkFVTFRfUEFHRV9TSVpFUyBcCiAJLnBhZ2Vfc2l6
ZXMgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEsKIAorI2RlZmluZSBHRU5fREVGQVVMVF9SRUdJT05T
IFwKKwkubWVtb3J5X3JlZ2lvbnMgPSBSRUdJT05fU01FTQorCiAjZGVmaW5lIEk4MzBfRkVBVFVS
RVMgXAogCUdFTigyKSwgXAogCS5pc19tb2JpbGUgPSAxLCBcCkBAIC0xNjksNyArMTcyLDggQEAK
IAlJOVhYX1BJUEVfT0ZGU0VUUywgXAogCUk5WFhfQ1VSU09SX09GRlNFVFMsIFwKIAlJOVhYX0NP
TE9SUywgXAotCUdFTl9ERUZBVUxUX1BBR0VfU0laRVMKKwlHRU5fREVGQVVMVF9QQUdFX1NJWkVT
LCBcCisJR0VOX0RFRkFVTFRfUkVHSU9OUwogCiAjZGVmaW5lIEk4NDVfRkVBVFVSRVMgXAogCUdF
TigyKSwgXApAQCAtMTg2LDcgKzE5MCw4IEBACiAJSTg0NV9QSVBFX09GRlNFVFMsIFwKIAlJODQ1
X0NVUlNPUl9PRkZTRVRTLCBcCiAJSTlYWF9DT0xPUlMsIFwKLQlHRU5fREVGQVVMVF9QQUdFX1NJ
WkVTCisJR0VOX0RFRkFVTFRfUEFHRV9TSVpFUywgXAorCUdFTl9ERUZBVUxUX1JFR0lPTlMKIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9pODMwX2luZm8gPSB7
CiAJSTgzMF9GRUFUVVJFUywKQEAgLTIyMCw3ICsyMjUsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2RldmljZV9pbmZvIGludGVsX2k4NjVnX2luZm8gPSB7CiAJSTlYWF9QSVBFX09GRlNF
VFMsIFwKIAlJOVhYX0NVUlNPUl9PRkZTRVRTLCBcCiAJSTlYWF9DT0xPUlMsIFwKLQlHRU5fREVG
QVVMVF9QQUdFX1NJWkVTCisJR0VOX0RFRkFVTFRfUEFHRV9TSVpFUywgXAorCUdFTl9ERUZBVUxU
X1JFR0lPTlMKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9p
OTE1Z19pbmZvID0gewogCUdFTjNfRkVBVFVSRVMsCkBAIC0zMDUsNyArMzExLDggQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9waW5ldmlld19tX2luZm8gPSB7
CiAJSTlYWF9QSVBFX09GRlNFVFMsIFwKIAlJOVhYX0NVUlNPUl9PRkZTRVRTLCBcCiAJSTk2NV9D
T0xPUlMsIFwKLQlHRU5fREVGQVVMVF9QQUdFX1NJWkVTCisJR0VOX0RFRkFVTFRfUEFHRV9TSVpF
UywgXAorCUdFTl9ERUZBVUxUX1JFR0lPTlMKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
ZXZpY2VfaW5mbyBpbnRlbF9pOTY1Z19pbmZvID0gewogCUdFTjRfRkVBVFVSRVMsCkBAIC0zNTUs
NyArMzYyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9n
bTQ1X2luZm8gPSB7CiAJSTlYWF9QSVBFX09GRlNFVFMsIFwKIAlJOVhYX0NVUlNPUl9PRkZTRVRT
LCBcCiAJSUxLX0NPTE9SUywgXAotCUdFTl9ERUZBVUxUX1BBR0VfU0laRVMKKwlHRU5fREVGQVVM
VF9QQUdFX1NJWkVTLCBcCisJR0VOX0RFRkFVTFRfUkVHSU9OUwogCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2lyb25sYWtlX2RfaW5mbyA9IHsKIAlHRU41X0ZF
QVRVUkVTLApAQCAtMzg1LDcgKzM5Myw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2
aWNlX2luZm8gaW50ZWxfaXJvbmxha2VfbV9pbmZvID0gewogCUk5WFhfUElQRV9PRkZTRVRTLCBc
CiAJSTlYWF9DVVJTT1JfT0ZGU0VUUywgXAogCUlMS19DT0xPUlMsIFwKLQlHRU5fREVGQVVMVF9Q
QUdFX1NJWkVTCisJR0VOX0RFRkFVTFRfUEFHRV9TSVpFUywgXAorCUdFTl9ERUZBVUxUX1JFR0lP
TlMKIAogI2RlZmluZSBTTkJfRF9QTEFURk9STSBcCiAJR0VONl9GRUFUVVJFUywgXApAQCAtNDMz
LDcgKzQ0Miw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxf
c2FuZHlicmlkZ2VfbV9ndDJfaW5mbyA9IHsKIAlJVkJfUElQRV9PRkZTRVRTLCBcCiAJSVZCX0NV
UlNPUl9PRkZTRVRTLCBcCiAJSVZCX0NPTE9SUywgXAotCUdFTl9ERUZBVUxUX1BBR0VfU0laRVMK
KwlHRU5fREVGQVVMVF9QQUdFX1NJWkVTLCBcCisJR0VOX0RFRkFVTFRfUkVHSU9OUwogCiAjZGVm
aW5lIElWQl9EX1BMQVRGT1JNIFwKIAlHRU43X0ZFQVRVUkVTLCBcCkBAIC00OTQsNiArNTA0LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF92YWxsZXl2aWV3
X2luZm8gPSB7CiAJSTlYWF9DVVJTT1JfT0ZGU0VUUywKIAlJOTY1X0NPTE9SUywKIAlHRU5fREVG
QVVMVF9QQUdFX1NJWkVTLAorCUdFTl9ERUZBVUxUX1JFR0lPTlMsCiB9OwogCiAjZGVmaW5lIEc3
NV9GRUFUVVJFUyAgXApAQCAtNTg4LDYgKzU5OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gaW50ZWxfY2hlcnJ5dmlld19pbmZvID0gewogCUNIVl9DVVJTT1JfT0ZG
U0VUUywKIAlDSFZfQ09MT1JTLAogCUdFTl9ERUZBVUxUX1BBR0VfU0laRVMsCisJR0VOX0RFRkFV
TFRfUkVHSU9OUywKIH07CiAKICNkZWZpbmUgR0VOOV9ERUZBVUxUX1BBR0VfU0laRVMgXApAQCAt
NjYyLDcgKzY3NCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50
ZWxfc2t5bGFrZV9ndDRfaW5mbyA9IHsKIAlIU1dfUElQRV9PRkZTRVRTLCBcCiAJSVZCX0NVUlNP
Ul9PRkZTRVRTLCBcCiAJSVZCX0NPTE9SUywgXAotCUdFTjlfREVGQVVMVF9QQUdFX1NJWkVTCisJ
R0VOOV9ERUZBVUxUX1BBR0VfU0laRVMsIFwKKwlHRU5fREVGQVVMVF9SRUdJT05TCiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfYnJveHRvbl9pbmZvID0gewog
CUdFTjlfTFBfRkVBVFVSRVMsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19nZW1fZGV2aWNlLmMKaW5kZXggZjIxMGI1MDQzMTEyLi4xMGVkM2E1MDM3NzIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKQEAg
LTgwLDggKzgwLDYgQEAgc3RhdGljIHZvaWQgbW9ja19kZXZpY2VfcmVsZWFzZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQogCiAJZGVzdHJveV93b3JrcXVldWUoaTkxNS0+d3EpOwogCi0JaTkxNV9n
ZW1mc19maW5pKGk5MTUpOwotCiAJaTkxNV9nZW1fY2xlYW51cF9tZW1vcnlfcmVnaW9ucyhpOTE1
KTsKIAogCWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCZpOTE1LT5kcm0pOwpAQCAtMTgxLDYgKzE3
OSw4IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAkJ
STkxNV9HVFRfUEFHRV9TSVpFXzY0SyB8CiAJCUk5MTVfR1RUX1BBR0VfU0laRV8yTTsKIAorCW1r
d3JpdGVfZGV2aWNlX2luZm8oaTkxNSktPm1lbW9yeV9yZWdpb25zID0gUkVHSU9OX1NNRU07CisK
IAltb2NrX3VuY29yZV9pbml0KCZpOTE1LT51bmNvcmUpOwogCWk5MTVfZ2VtX2luaXRfX21tKGk5
MTUpOwogCWludGVsX2d0X2luaXRfZWFybHkoJmk5MTUtPmd0LCBpOTE1KTsKQEAgLTIxOSw4ICsy
MTksNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqbW9ja19nZW1fZGV2aWNlKHZvaWQpCiAJ
aW50ZWxfZW5naW5lc19kcml2ZXJfcmVnaXN0ZXIoaTkxNSk7CiAJbXV0ZXhfdW5sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKIAotCVdBUk5fT04oaTkxNV9nZW1mc19pbml0KGk5MTUpKTsK
LQogCWVyciA9IGk5MTVfZ2VtX2luaXRfbWVtb3J5X3JlZ2lvbnMoaTkxNSk7CiAJaWYgKGVycikK
IAkJZ290byBlcnJfY29udGV4dDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
