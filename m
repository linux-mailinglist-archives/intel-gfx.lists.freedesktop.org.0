Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DD32C64DF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68696EC9C;
	Fri, 27 Nov 2020 12:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C006EC6E;
 Fri, 27 Nov 2020 12:09:56 +0000 (UTC)
IronPort-SDR: 3rFlWBZCJ73mQ9V3E+bh8tLXCKSN0t1/Dq7oWiyGjDc2XNbCxOv4HvLi2qTbVmwShJmthVOhBI
 1z76pq2J07VA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172540738"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172540738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:56 -0800
IronPort-SDR: btkUhOFqebfY2/vjJVgnCvMJfA9nCZneHmAKYGoKXLJkefouyeFODxF4ArPDD0Wsnop1frBvpL
 057in5SF/kJA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548029149"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:54 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:57 +0000
Message-Id: <20201127120718.454037-82-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 081/162] HAX drm/i915/lmem: support CPU
 relocations
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KiogRE8gTk9UIE1FUkdFLiBSRUxPQ0FUSU9OIFNVUFBPUlQgV0lMTCBCRSBEUk9QUEVEIEZST00g
REcxKyAqKgoKQWRkIExNRU0gc3VwcG9ydCBmb3IgdGhlIENQVSByZWxvYyBwYXRoLiBXaGVuIGRv
aW5nIHJlbG9jYXRpb25zIHdlIGhhdmUKYm90aCBhIEdQVSBhbmQgQ1BVIHJlbG9jIHBhdGgsIGFz
IHdlbGwgYXMgc29tZSBkZWJ1Z2dpbmcgb3B0aW9ucyB0byBmb3JjZSBhCnBhcnRpY3VsYXIgcGF0
aC4gVGhlIEdQVSByZWxvYyBwYXRoIGlzIHByZWZlcnJlZCB3aGVuIHRoZSBvYmplY3QKaXMgbm90
IGN1cnJlbnRseSBpZGxlLCBvdGhlcndpc2Ugd2UgdXNlIHRoZSBDUFUgcmVsb2MgcGF0aC4gU2lu
Y2Ugd2UKY2FuJ3Qga21hcCB0aGUgb2JqZWN0LCBhbmQgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlIG1p
Z2h0IG5vdCBiZSBhdmFpbGFibGUsCmFkZCBzdXBwb3J0IGZvciBtYXBwaW5nIGl0IHRocm91Z2gg
TE1FTUJBUi4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
aW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwu
Y29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIC4uLi9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDUzICsrKysrKysrKysr
KysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgICAgICB8
IDEyICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5oICAgICAg
fCAgNCArKwogMyBmaWxlcyBjaGFuZ2VkLCA2NSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmlu
ZGV4IDkxZjBjM2ZkOWE0Yi4uZTczYTc2MWE3ZDFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTE0LDYgKzE0LDcgQEAKICNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgiCiAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1f
aW9jdGxzLmgiCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCIKICNpbmNsdWRlICJndC9p
bnRlbF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9p
bnRlbF9ndF9idWZmZXJfcG9vbC5oIgpAQCAtMjc4LDYgKzI3OSw3IEBAIHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgewogCQlib29sIGhhc19sbGMgOiAxOwogCQlib29sIGhhc19mZW5jZSA6IDE7CiAJ
CWJvb2wgbmVlZHNfdW5mZW5jZWQgOiAxOworCQlib29sIGlzX2xtZW0gOiAxOwogCiAJCXN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxOwogCQl1MzIgKnJxX2NtZDsKQEAgLTEwNDksNiArMTA1MSw3IEBA
IHN0YXRpYyB2b2lkIHJlbG9jX2NhY2hlX2luaXQoc3RydWN0IHJlbG9jX2NhY2hlICpjYWNoZSwK
IAljYWNoZS0+aGFzX2ZlbmNlID0gY2FjaGUtPmdlbiA8IDQ7CiAJY2FjaGUtPm5lZWRzX3VuZmVu
Y2VkID0gSU5URUxfSU5GTyhpOTE1KS0+dW5mZW5jZWRfbmVlZHNfYWxpZ25tZW50OwogCWNhY2hl
LT5ub2RlLmZsYWdzID0gMDsKKwljYWNoZS0+aXNfbG1lbSA9IGZhbHNlOwogCXJlbG9jX2NhY2hl
X2NsZWFyKGNhY2hlKTsKIH0KIApAQCAtMTEyOCwxMCArMTEzMSwxNCBAQCBzdGF0aWMgdm9pZCBy
ZWxvY19jYWNoZV9yZXNldChzdHJ1Y3QgcmVsb2NfY2FjaGUgKmNhY2hlLCBzdHJ1Y3QgaTkxNV9l
eGVjYnVmZmVyCiAJfSBlbHNlIHsKIAkJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9IGNhY2hlX3Rv
X2dndHQoY2FjaGUpOwogCi0JCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0
KTsKKwkJaWYgKCFjYWNoZS0+aXNfbG1lbSkKKwkJCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVz
KGdndHQtPnZtLmd0KTsKIAkJaW9fbWFwcGluZ191bm1hcF9hdG9taWMoKHZvaWQgX19pb21lbSAq
KXZhZGRyKTsKIAotCQlpZiAoZHJtX21tX25vZGVfYWxsb2NhdGVkKCZjYWNoZS0+bm9kZSkpIHsK
KwkJaWYgKGNhY2hlLT5pc19sbWVtKSB7CisJCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMo
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICopY2FjaGUtPm5vZGUubW0pOworCQkJY2FjaGUt
PmlzX2xtZW0gPSBmYWxzZTsKKwkJfSBlbHNlIGlmIChkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJmNh
Y2hlLT5ub2RlKSkgewogCQkJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZtLAogCQkJCQkg
ICAgIGNhY2hlLT5ub2RlLnN0YXJ0LAogCQkJCQkgICAgIGNhY2hlLT5ub2RlLnNpemUpOwpAQCAt
MTE4NCw2ICsxMTkxLDQwIEBAIHN0YXRpYyB2b2lkICpyZWxvY19rbWFwKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJcmV0dXJuIHZhZGRyOwogfQogCitzdGF0aWMgdm9pZCAqcmVs
b2NfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJc3RydWN0IHJlbG9j
X2NhY2hlICpjYWNoZSwKKwkJCXVuc2lnbmVkIGxvbmcgcGFnZSkKK3sKKwl2b2lkICp2YWRkcjsK
KwlpbnQgZXJyOworCisJR0VNX0JVR19PTih1c2VfY3B1X3JlbG9jKGNhY2hlLCBvYmopKTsKKwor
CWlmIChjYWNoZS0+dmFkZHIpIHsKKwkJaW9fbWFwcGluZ191bm1hcF9hdG9taWMoKHZvaWQgX19m
b3JjZSBfX2lvbWVtICopIHVubWFza19wYWdlKGNhY2hlLT52YWRkcikpOworCX0gZWxzZSB7CisJ
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKKwkJaWYgKGVycikKKwkJCXJl
dHVybiBFUlJfUFRSKGVycik7CisKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b193Y19k
b21haW4ob2JqLCB0cnVlKTsKKwkJaWYgKGVycikgeworCQkJaTkxNV9nZW1fb2JqZWN0X3VucGlu
X3BhZ2VzKG9iaik7CisJCQlyZXR1cm4gRVJSX1BUUihlcnIpOworCQl9CisKKwkJY2FjaGUtPm5v
ZGUubW0gPSAodm9pZCAqKW9iajsKKwkJY2FjaGUtPmlzX2xtZW0gPSB0cnVlOworCX0KKworCXZh
ZGRyID0gaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwX3BhZ2VfYXRvbWljKG9iaiwgcGFnZSk7
CisKKwljYWNoZS0+dmFkZHIgPSAodW5zaWduZWQgbG9uZyl2YWRkcjsKKwljYWNoZS0+cGFnZSA9
IHBhZ2U7CisKKwlyZXR1cm4gdmFkZHI7Cit9CisKIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJIHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLAogCQkJIHVuc2lnbmVkIGxvbmcgcGFnZSkKQEAgLTEyNjIsOCArMTMwMywxMiBAQCBz
dGF0aWMgdm9pZCAqcmVsb2NfdmFkZHIoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAkJdmFkZHIgPSB1bm1hc2tfcGFnZShjYWNoZS0+dmFkZHIpOwogCX0gZWxzZSB7CiAJCXZhZGRy
ID0gTlVMTDsKLQkJaWYgKChjYWNoZS0+dmFkZHIgJiBLTUFQKSA9PSAwKQotCQkJdmFkZHIgPSBy
ZWxvY19pb21hcChvYmosIGViLCBwYWdlKTsKKwkJaWYgKChjYWNoZS0+dmFkZHIgJiBLTUFQKSA9
PSAwKSB7CisJCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0ob2JqKSkKKwkJCQl2YWRkciA9
IHJlbG9jX2xtZW0ob2JqLCBjYWNoZSwgcGFnZSk7CisJCQllbHNlCisJCQkJdmFkZHIgPSByZWxv
Y19pb21hcChvYmosIGViLCBwYWdlKTsKKwkJfQogCQlpZiAoIXZhZGRyKQogCQkJdmFkZHIgPSBy
ZWxvY19rbWFwKG9iaiwgY2FjaGUsIHBhZ2UpOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbG1lbS5jCmluZGV4IGU5NTM5NjVmODI2My4uZjZjNGQ1OTk4ZmY5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMKQEAgLTE3LDYgKzE3LDE4IEBAIGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9sbWVtX29ial9vcHMg
PSB7CiAJLnJlbGVhc2UgPSBpOTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tZW1vcnlfcmVnaW9uLAog
fTsKIAordm9pZCBfX2lvbWVtICoKK2k5MTVfZ2VtX29iamVjdF9sbWVtX2lvX21hcF9wYWdlX2F0
b21pYyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQl1bnNpZ25lZCBsb25n
IG4pCit7CisJcmVzb3VyY2Vfc2l6ZV90IG9mZnNldDsKKworCW9mZnNldCA9IGk5MTVfZ2VtX29i
amVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBuKTsKKwlvZmZzZXQgLT0gb2JqLT5tbS5yZWdpb24t
PnJlZ2lvbi5zdGFydDsKKworCXJldHVybiBpb19tYXBwaW5nX21hcF9hdG9taWNfd2MoJm9iai0+
bW0ucmVnaW9uLT5pb21hcCwgb2Zmc2V0KTsKK30KKwogYm9vbCBpOTE1X2dlbV9vYmplY3RfaXNf
bG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCXJldHVybiBvYmotPm9w
cyA9PSAmaTkxNV9nZW1fbG1lbV9vYmpfb3BzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9sbWVtLmgKaW5kZXggZmMzZjE1NTgwZmUzLi5iZjdlMTFmYWQxN2IgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uaApAQCAtMTQsNiArMTQsMTAgQEAgc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb247CiAKIGV4dGVybiBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdF9vcHMgaTkxNV9nZW1fbG1lbV9vYmpfb3BzOwogCit2b2lkIF9faW9tZW0gKgoraTkx
NV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwX3BhZ2VfYXRvbWljKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCisJCQkJCXVuc2lnbmVkIGxvbmcgbik7CisKIGJvb2wgaTkxNV9nZW1fb2Jq
ZWN0X2lzX2xtZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CiAKIHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
