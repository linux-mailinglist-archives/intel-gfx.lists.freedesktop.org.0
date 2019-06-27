Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D5258C4E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC84F6E84E;
	Thu, 27 Jun 2019 20:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7911F6E873
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:57:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455803"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:57:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:29 +0100
Message-Id: <20190627205633.1143-34-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 33/37] drm/i915: support basic object
 migration
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

V2UgYXJlIGdvaW5nIHdhbnQgdG8gYWJsZSB0byBtb3ZlIG9iamVjdHMgYmV0d2VlbiBkaWZmZXJl
bnQgcmVnaW9ucwpsaWtlIHN5c3RlbSBtZW1vcnkgYW5kIGxvY2FsIG1lbW9yeS4gSW4gdGhlIGZ1
dHVyZSBldmVyeXRoaW5nIHNob3VsZApiZSBqdXN0IGFub3RoZXIgcmVnaW9uLgoKU2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+CkNjOiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBBYmRp
ZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgMTI5ICsrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwg
ICA4ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAg
IDIgKy0KIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICB8IDEy
OSArKysrKysrKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgMjY3IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMKaW5kZXggMzQzMTYyYmM4MTgxLi42OTFhZjM4OGU0ZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTI4LDYgKzI4LDcgQEAKICNpbmNsdWRlICJp
OTE1X2dlbV9jbGZsdXNoLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4dC5oIgogI2luY2x1
ZGUgImk5MTVfZ2VtX29iamVjdC5oIgorI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdF9ibHQuaCIK
ICNpbmNsdWRlICJpOTE1X2dsb2JhbHMuaCIKIAogc3RhdGljIHN0cnVjdCBpOTE1X2dsb2JhbF9v
YmplY3QgewpAQCAtMTcxLDYgKzE3MiwxMzQgQEAgdm9pZCBpOTE1X2dlbV9jbG9zZV9vYmplY3Qo
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpnZW0sIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIAl9CiB9
CiAKK2ludCBpOTE1X2dlbV9vYmplY3RfcHJlcGFyZV9tb3ZlKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopCit7CisJaW50IGVycjsKKworCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJm9iai0+
YmFzZS5kZXYtPnN0cnVjdF9tdXRleCk7CisKKwlpZiAob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFE
Vl9XSUxMTkVFRCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X25l
ZWRzX2JpdDE3X3N3aXp6bGUob2JqKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoYXRvbWlj
X3JlYWQoJm9iai0+bW0ucGFnZXNfcGluX2NvdW50KSA+CisJICAgIGF0b21pY19yZWFkKCZvYmot
PmJpbmRfY291bnQpKQorCQlyZXR1cm4gLUVCVVNZOworCisJaWYgKG9iai0+cGluX2dsb2JhbCkK
KwkJcmV0dXJuIC1FQlVTWTsKKworCWk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXAob2JqKTsK
KworCUdFTV9CVUdfT04ob2JqLT5tbS5tYXBwaW5nKTsKKwlHRU1fQlVHX09OKG9iai0+YmFzZS5m
aWxwICYmIG1hcHBpbmdfbWFwcGVkKG9iai0+YmFzZS5maWxwLT5mX21hcHBpbmcpKTsKKworCWVy
ciA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKKwkJCQkgICBJOTE1X1dBSVRfSU5URVJSVVBU
SUJMRSB8CisJCQkJICAgSTkxNV9XQUlUX0xPQ0tFRCB8CisJCQkJICAgSTkxNV9XQUlUX0FMTCwK
KwkJCQkgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsK
KworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKG9iaik7Cit9CisKK2ludCBpOTE1X2dl
bV9vYmplY3RfbWlncmF0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJICAg
IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgICBlbnVtIGludGVsX3JlZ2lvbl9pZCBp
ZCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNl
LmRldik7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmRvbm9yOworCXN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uICptZW07CisJaW50IGVyciA9IDA7CisKKwlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKworCUdFTV9CVUdfT04oaWQgPj0gSU5URUxf
TUVNT1JZX1VLTk9XTik7CisJR0VNX0JVR19PTihvYmotPm1lbW9yeV9yZWdpb24tPmlkID09IGlk
KTsKKwlHRU1fQlVHX09OKG9iai0+bW0ubWFkdiAhPSBJOTE1X01BRFZfV0lMTE5FRUQpOworCisJ
bWVtID0gaTkxNS0+cmVnaW9uc1tpZF07CisKKwlkb25vciA9IGk5MTVfZ2VtX29iamVjdF9jcmVh
dGVfcmVnaW9uKG1lbSwgb2JqLT5iYXNlLnNpemUsIDApOworCWlmIChJU19FUlIoZG9ub3IpKQor
CQlyZXR1cm4gUFRSX0VSUihkb25vcik7CisKKwkvKiBDb3B5IGJhY2tpbmctcGFnZXMgaWYgd2Ug
aGF2ZSB0byAqLworCWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3BhZ2VzKG9iaikpIHsKKwkJc3Ry
dWN0IHNnX3RhYmxlICpwYWdlczsKKworCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2Vz
KG9iaik7CisJCWlmIChlcnIpCisJCQlnb3RvIGVycl9wdXRfZG9ub3I7CisKKwkJZXJyID0gaTkx
NV9nZW1fb2JqZWN0X2NvcHlfYmx0KG9iaiwgZG9ub3IsIGNlKTsKKwkJaWYgKGVycikKKwkJCWdv
dG8gZXJyX3B1dF9kb25vcjsKKworCQlpOTE1X2dlbV9vYmplY3RfbG9jayhkb25vcik7CisJCWVy
ciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihkb25vciwgZmFsc2UpOworCQlp
OTE1X2dlbV9vYmplY3RfdW5sb2NrKGRvbm9yKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gZXJyX3B1
dF9kb25vcjsKKworCQlpOTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsKKworCQlpOTE1X2dlbV9v
YmplY3RfdW5iaW5kKGRvbm9yKTsKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3VuYmluZChvYmop
OworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfcHV0X2Rvbm9yOworCisJCW11dGV4X2xvY2soJm9i
ai0+bW0ubG9jayk7CisKKwkJcGFnZXMgPSBmZXRjaF9hbmRfemVybygmb2JqLT5tbS5wYWdlcyk7
CisJCW9iai0+b3BzLT5wdXRfcGFnZXMob2JqLCBwYWdlcyk7CisKKwkJbWVtY3B5KCZvYmotPm1t
LnBhZ2Vfc2l6ZXMsICZkb25vci0+bW0ucGFnZV9zaXplcywKKwkJICAgICAgIHNpemVvZihzdHJ1
Y3QgaTkxNV9wYWdlX3NpemVzKSk7CisJCW9iai0+bW0ucGFnZXMgPSBfX2k5MTVfZ2VtX29iamVj
dF91bnNldF9wYWdlcyhkb25vcik7CisKKwkJb2JqLT5tbS5nZXRfcGFnZS5zZ19wb3MgPSBvYmot
Pm1tLnBhZ2VzLT5zZ2w7CisJCW9iai0+bW0uZ2V0X3BhZ2Uuc2dfaWR4ID0gMDsKKwkJX19pOTE1
X2dlbV9vYmplY3RfcmVzZXRfcGFnZV9pdGVyKG9iaik7CisKKwkJbXV0ZXhfdW5sb2NrKCZvYmot
Pm1tLmxvY2spOworCX0KKworCWlmIChvYmotPm9wcy0+cmVsZWFzZSkKKwkJb2JqLT5vcHMtPnJl
bGVhc2Uob2JqKTsKKworCS8qIFdlIG5lZWQgc3RpbGwgbmVlZCBhIGxpdHRsZSBzcGVjaWFsIGNh
c2luZyBmb3Igc2htZW0gKi8KKwlpZiAob2JqLT5iYXNlLmZpbHApCisJCWZwdXQoZmV0Y2hfYW5k
X3plcm8oJm9iai0+YmFzZS5maWxwKSk7CisJZWxzZQorCQlvYmotPmJhc2UuZmlscCA9IGZldGNo
X2FuZF96ZXJvKCZkb25vci0+YmFzZS5maWxwKTsKKworCW9iai0+YmFzZS5zaXplID0gZG9ub3It
PmJhc2Uuc2l6ZTsKKwlvYmotPm1lbW9yeV9yZWdpb24gPSBtZW07CisJb2JqLT5mbGFncyA9IGRv
bm9yLT5mbGFnczsKKwlvYmotPm9wcyA9IGRvbm9yLT5vcHM7CisKKwlsaXN0X3JlcGxhY2VfaW5p
dCgmZG9ub3ItPmJsb2NrcywgJm9iai0+YmxvY2tzKTsKKworCW11dGV4X2xvY2soJm1lbS0+b2Jq
X2xvY2spOworCWxpc3RfYWRkKCZvYmotPnJlZ2lvbl9saW5rLCAmbWVtLT5vYmplY3RzKTsKKwlt
dXRleF91bmxvY2soJm1lbS0+b2JqX2xvY2spOworCisJR0VNX0JVR19PTihpOTE1X2dlbV9vYmpl
Y3RfaGFzX3BhZ2VzKGRvbm9yKSk7CisJR0VNX0JVR19PTihpOTE1X2dlbV9vYmplY3RfaGFzX3Bp
bm5lZF9wYWdlcyhkb25vcikpOworCitlcnJfcHV0X2Rvbm9yOgorCWk5MTVfZ2VtX29iamVjdF9w
dXQoZG9ub3IpOworCWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKQor
CQlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKworCXJldHVybiBlcnI7Cit9CisK
IHN0YXRpYyB2b2lkIF9faTkxNV9nZW1fZnJlZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCQkJCSAgICBzdHJ1Y3QgbGxpc3Rfbm9kZSAqZnJlZWQpCiB7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggYTdiZmU3OTAxNWVlLi4x
MWFmYjRkZWEyMTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmgKQEAgLTQwLDggKzQwLDE2IEBAIGludCBpOTE1X2dlbV9vYmplY3RfYXR0YWNoX3BoeXMoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgaW50IGFsaWduKTsKIHZvaWQgaTkxNV9nZW1f
Y2xvc2Vfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtLCBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUpOwogdm9pZCBpOTE1X2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaik7CiAKK2VudW0gaW50ZWxfcmVnaW9uX2lkOworaW50IGk5MTVfZ2VtX29iamVjdF9wcmVw
YXJlX21vdmUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CitpbnQgaTkxNV9nZW1f
b2JqZWN0X21pZ3JhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSAgICBz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCisJCQkgICAgZW51bSBpbnRlbF9yZWdpb25faWQgaWQp
OworCiB2b2lkIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSk7CiAKK3ZvaWQgX19pOTE1X2dlbV9vYmplY3RfcmVzZXRfcGFnZV9pdGVyKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOworCiBzdHJ1Y3Qgc2dfdGFibGUgKgogX19p
OTE1X2dlbV9vYmplY3RfdW5zZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF90cnVuY2F0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKaW5k
ZXggMTVlYWFlZGZmYzQ2Li5jMWJjMDQ3ZDVmYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9wYWdlcy5jCkBAIC0xMzksNyArMTM5LDcgQEAgdm9pZCBpOTE1X2dlbV9vYmpl
Y3Rfd3JpdGViYWNrKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJCW9iai0+b3Bz
LT53cml0ZWJhY2sob2JqKTsKIH0KIAotc3RhdGljIHZvaWQgX19pOTE1X2dlbV9vYmplY3RfcmVz
ZXRfcGFnZV9pdGVyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit2b2lkIF9faTkx
NV9nZW1fb2JqZWN0X3Jlc2V0X3BhZ2VfaXRlcihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQogewogCXN0cnVjdCByYWRpeF90cmVlX2l0ZXIgaXRlcjsKIAl2b2lkIF9fcmN1ICoqc2xv
dDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1v
cnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jCmluZGV4IDIzYzQ2NmExYjgwMC4uY2NmZGM0Y2JkMTc0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKQEAg
LTQ5MSw2ICs0OTEsNTkgQEAgc3RhdGljIGludCBpZ3RfbG1lbV9jcmVhdGUodm9pZCAqYXJnKQog
CXJldHVybiBlcnI7CiB9CiAKK3N0YXRpYyBpbnQgaWd0X3NtZW1fY3JlYXRlX21pZ3JhdGUodm9p
ZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSA9IGk5MTUtPmVuZ2luZVtCQ1MwXS0+a2VybmVsX2NvbnRleHQ7
CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlpbnQgZXJyOworCisJLyogU3dp
dGNoIG9iamVjdCBiYWNraW5nLXN0b3JlIG9uIGNyZWF0ZSAqLworCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfbG1lbShpOTE1LCBQQUdFX1NJWkUsIDApOworCWlmIChJU19FUlIob2JqKSkK
KwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9taWdyYXRl
KG9iaiwgY2UsIElOVEVMX01FTU9SWV9TTUVNKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9wdXQ7
CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJaWYgKGVycikKKwkJ
Z290byBvdXRfcHV0OworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CitvdXRf
cHV0OgorCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKworCXJldHVybiBlcnI7Cit9CisKK3N0
YXRpYyBpbnQgaWd0X2xtZW1fY3JlYXRlX21pZ3JhdGUodm9pZCAqYXJnKQoreworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9
IGk5MTUtPmVuZ2luZVtCQ1MwXS0+a2VybmVsX2NvbnRleHQ7CisJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iajsKKwlpbnQgZXJyOworCisJLyogU3dpdGNoIG9iamVjdCBiYWNraW5nLXN0
b3JlIG9uIGNyZWF0ZSAqLworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkx
NSwgUEFHRV9TSVpFKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBQVFJfRVJSKG9iaik7
CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbWlncmF0ZShvYmosIGNlLCBJTlRFTF9NRU1PUllf
TE1FTSk7CisJaWYgKGVycikKKwkJZ290byBvdXRfcHV0OworCisJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9wYWdlcyhvYmopOworCWlmIChlcnIpCisJCWdvdG8gb3V0X3B1dDsKKworCWk5MTVf
Z2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworb3V0X3B1dDoKKwlpOTE1X2dlbV9vYmplY3Rf
cHV0KG9iaik7CisKKwlyZXR1cm4gZXJyOworfQogc3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9n
cHUodm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwpA
QCAtNjAxLDYgKzY1NCw3OSBAQCBzdGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2NwdSh2b2lkICph
cmcpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBpZ3RfbG1lbV9wYWdlc19taWdyYXRl
KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKKwlz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBpOTE1LT5lbmdpbmVbQkNTMF0tPmtlcm5lbF9jb250
ZXh0OworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJSUdUX1RJTUVPVVQoZW5k
X3RpbWUpOworCUk5MTVfUk5EX1NUQVRFKHBybmcpOworCXUzMiBzejsKKwlpbnQgZXJyOworCisJ
c3ogPSByb3VuZF91cChwcmFuZG9tX3UzMl9zdGF0ZSgmcHJuZykgJSBTWl8zMk0sIFBBR0VfU0la
RSk7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oaTkxNSwgc3osIDApOwor
CWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCWVyciA9IGk5MTVf
Z2VtX29iamVjdF9maWxsX2JsdChvYmosIGNlLCAwKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9w
dXQ7CisKKwlkbyB7CisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9wcmVwYXJlX21vdmUob2JqKTsK
KwkJaWYgKGVycikKKwkJCWdvdG8gb3V0X3B1dDsKKworCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2lz
X2xtZW0ob2JqKSkgeworCQkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCBjZSwg
SU5URUxfTUVNT1JZX1NNRU0pOworCQkJaWYgKGVycikKKwkJCQlnb3RvIG91dF9wdXQ7CisKKwkJ
CWlmIChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKSB7CisJCQkJcHJfZXJyKCJvYmplY3Qg
c3RpbGwgYmFja2VkIGJ5IGxtZW1cbiIpOworCQkJCWVyciA9IC1FSU5WQUw7CisJCQl9CisKKwkJ
CWlmICghbGlzdF9lbXB0eSgmb2JqLT5ibG9ja3MpKSB7CisJCQkJcHJfZXJyKCJvYmplY3QgbGVh
a2luZyBtZW1vcnkgcmVnaW9uXG4iKTsKKwkJCQllcnIgPSAtRUlOVkFMOworCQkJfQorCisJCQlp
ZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfc3RydWN0X3BhZ2Uob2JqKSkgeworCQkJCXByX2Vycigi
b2JqZWN0IG5vdCBiYWNrZWQgYnkgc3RydWN0IHBhZ2VcbiIpOworCQkJCWVyciA9IC1FSU5WQUw7
CisJCQl9CisKKwkJfSBlbHNlIHsKKwkJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKG9i
aiwgY2UsIElOVEVMX01FTU9SWV9MTUVNKTsKKwkJCWlmIChlcnIpCisJCQkJZ290byBvdXRfcHV0
OworCisJCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKSB7CisJCQkJ
cHJfZXJyKCJvYmplY3Qgc3RpbGwgYmFja2VkIGJ5IHN0cnVjdCBwYWdlXG4iKTsKKwkJCQllcnIg
PSAtRUlOVkFMOworCQkJfQorCisJCQlpZiAoIWk5MTVfZ2VtX29iamVjdF9pc19sbWVtKG9iaikp
IHsKKwkJCQlwcl9lcnIoIm9iamVjdCBub3QgYmFja2VkIGJ5IGxtZW1cbiIpOworCQkJCWVyciA9
IC1FSU5WQUw7CisJCQl9CisJCX0KKworCQlpZiAoIWVycikKKwkJCWVyciA9IGk5MTVfZ2VtX29i
amVjdF9maWxsX2JsdChvYmosIGNlLCAweGRlYWRiZWFmKTsKKwkJaWYgKGVycikKKwkJCWJyZWFr
OworCX0gd2hpbGUgKCFfX2lndF90aW1lb3V0KGVuZF90aW1lLCBOVUxMKSk7CisKK291dF9wdXQ6
CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCisJcmV0dXJuIGVycjsKK30KKwogaW50IGlu
dGVsX21lbW9yeV9yZWdpb25fbW9ja19zZWxmdGVzdHModm9pZCkKIHsKIAlzdGF0aWMgY29uc3Qg
c3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewpAQCAtNjQ0LDYgKzc3MCw5IEBAIGludCBp
bnRlbF9tZW1vcnlfcmVnaW9uX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogCQlTVUJURVNUKGlndF9sbWVtX2NyZWF0ZSksCiAJCVNVQlRFU1QoaWd0X2xtZW1f
d3JpdGVfY3B1KSwKIAkJU1VCVEVTVChpZ3RfbG1lbV93cml0ZV9ncHUpLAorCQlTVUJURVNUKGln
dF9zbWVtX2NyZWF0ZV9taWdyYXRlKSwKKwkJU1VCVEVTVChpZ3RfbG1lbV9jcmVhdGVfbWlncmF0
ZSksCisJCVNVQlRFU1QoaWd0X2xtZW1fcGFnZXNfbWlncmF0ZSksCiAJfTsKIAlpbnQgZXJyOwog
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
