Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243C22C647B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3989E6EC4D;
	Fri, 27 Nov 2020 12:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E7CE6EC29;
 Fri, 27 Nov 2020 12:08:14 +0000 (UTC)
IronPort-SDR: afeP2lrFWOFPiGzOxAOyr0u1Iix1v1WgavJbN9cR649cdz1nJGqNeJ0KNL7oEwMtaIaldc6w17
 lQreLe3gcc+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883419"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883419"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:14 -0800
IronPort-SDR: hrqPR23TCnOw4FfhQr7yI2t3Gs8IqFP8bxSt2prbZfo4LMlPLPQ1VHBikzztOtGRhg0KB6Pc/D
 ZNIg4hdGCFTA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028683"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:12 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:02 +0000
Message-Id: <20201127120718.454037-27-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 026/162] drm/i915: Flatten obj->mm.lock
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
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KCldpdGggdXNlcnB0ciBmaXhlZCwgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYWxsIHNlcGFyYXRl
IGxvY2tkZXAgY2xhc3Nlcwpub3csIGFuZCB3ZSBjYW4gcmVtb3ZlIGFsbCBsb2NrZGVwIHRyaWNr
cyB1c2VkLiBBIHRyeWxvY2sgaW4gdGhlCnNocmlua2VyIGlzIGFsbCB3ZSBuZWVkIG5vdyB0byBm
bGF0dGVuIHRoZSBsb2NraW5nIGhpZXJhcmNoeS4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgfCAgNiArLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICB8IDIwICsrLS0tLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgfCAzNCArKysrKysrKysr
LS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAgICAg
fCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgfCAx
MCArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgIHwg
IDIgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCmluZGV4IDEzOTM5
ODhiZDVhZi4uMDI4YTU1NmFiMWE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5jCkBAIC02Miw3ICs2Miw3IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXQo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgY29uc3Qgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3Rfb3BzICpvcHMsCiAJCQkgIHN0cnVjdCBsb2NrX2NsYXNzX2tleSAqa2V5
LCB1bnNpZ25lZCBmbGFncykKIHsKLQlfX211dGV4X2luaXQoJm9iai0+bW0ubG9jaywgb3BzLT5u
YW1lID86ICJvYmotPm1tLmxvY2siLCBrZXkpOworCW11dGV4X2luaXQoJm9iai0+bW0ubG9jayk7
CiAKIAlzcGluX2xvY2tfaW5pdCgmb2JqLT52bWEubG9jayk7CiAJSU5JVF9MSVNUX0hFQUQoJm9i
ai0+dm1hLmxpc3QpOwpAQCAtODYsMTAgKzg2LDYgQEAgdm9pZCBpOTE1X2dlbV9vYmplY3RfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCW11dGV4X2luaXQoJm9iai0+bW0u
Z2V0X3BhZ2UubG9jayk7CiAJSU5JVF9SQURJWF9UUkVFKCZvYmotPm1tLmdldF9kbWFfcGFnZS5y
YWRpeCwgR0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTik7CiAJbXV0ZXhfaW5pdCgmb2JqLT5tbS5n
ZXRfZG1hX3BhZ2UubG9jayk7Ci0KLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfTE9DS0RFUCkgJiYg
aTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSkKLQkJaTkxNV9nZW1fc2hyaW5rZXJf
dGFpbnRzX211dGV4KHRvX2k5MTUob2JqLT5iYXNlLmRldiksCi0JCQkJCSAgICAgICAmb2JqLT5t
bS5sb2NrKTsKIH0KIAogLyoqCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgKaW5kZXggMzM0MTIyNDhmNmRmLi4xYjg1ZjUxYzZkZGQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTMzOSwyNyArMzM5LDEwIEBAIHZvaWQg
X19pOTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiBpbnQgX19fX2k5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7CiBpbnQgX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwogCi1lbnVtIGk5MTVfbW1fc3ViY2xhc3MgeyAvKiBs
b2NrZGVwIHN1YmNsYXNzIGZvciBvYmotPm1tLmxvY2svc3RydWN0X211dGV4ICovCi0JSTkxNV9N
TV9OT1JNQUwgPSAwLAotCS8qCi0JICogT25seSB1c2VkIGJ5IHN0cnVjdF9tdXRleCwgd2hlbiBj
YWxsZWQgInJlY3Vyc2l2ZWx5IiBmcm9tCi0JICogZGlyZWN0LXJlY2xhaW0tZXNxdWUuIFNhZmUg
YmVjYXVzZSB0aGVyZSBpcyBvbmx5IGV2ZXJ5IG9uZQotCSAqIHN0cnVjdF9tdXRleCBpbiB0aGUg
ZW50aXJlIHN5c3RlbS4KLQkgKi8KLQlJOTE1X01NX1NIUklOS0VSID0gMSwKLQkvKgotCSAqIFVz
ZWQgZm9yIG9iai0+bW0ubG9jayB3aGVuIGFsbG9jYXRpbmcgcGFnZXMuIFNhZmUgYmVjYXVzZSB0
aGUgb2JqZWN0Ci0JICogaXNuJ3QgeWV0IG9uIGFueSBMUlUsIGFuZCB0aGVyZWZvcmUgdGhlIHNo
cmlua2VyIGNhbid0IGRlYWRsb2NrIG9uCi0JICogaXQuIEFzIHNvb24gYXMgdGhlIG9iamVjdCBo
YXMgcGFnZXMsIG9iai0+bW0ubG9jayBuZXN0cyB3aXRoaW4KLQkgKiBmc19yZWNsYWltLgotCSAq
LwotCUk5MTVfTU1fR0VUX1BBR0VTID0gMSwKLX07Ci0KIHN0YXRpYyBpbmxpbmUgaW50IF9fbXVz
dF9jaGVjawogaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogewotCW1pZ2h0X2xvY2tfbmVzdGVkKCZvYmotPm1tLmxvY2ssIEk5MTVfTU1f
R0VUX1BBR0VTKTsKKwltaWdodF9sb2NrKCZvYmotPm1tLmxvY2spOwogCiAJaWYgKGF0b21pY19p
bmNfbm90X3plcm8oJm9iai0+bW0ucGFnZXNfcGluX2NvdW50KSkKIAkJcmV0dXJuIDA7CkBAIC00
MDMsNiArMzg2LDcgQEAgaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopCiB9CiAKIGludCBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CitpbnQgX19pOTE1X2dlbV9vYmplY3Rf
cHV0X3BhZ2VzX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIHZvaWQg
aTkxNV9nZW1fb2JqZWN0X3RydW5jYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmop
Owogdm9pZCBpOTE1X2dlbV9vYmplY3Rfd3JpdGViYWNrKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCmlu
ZGV4IDYwMTQ5Y2FkNjA4MC4uNWJjZDIxYThmYzRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcGFnZXMuYwpAQCAtMTExLDcgKzExMSw3IEBAIGludCBfX2k5MTVfZ2VtX29i
amVjdF9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlpbnQg
ZXJyOwogCi0JZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlX25lc3RlZCgmb2JqLT5tbS5s
b2NrLCBJOTE1X01NX0dFVF9QQUdFUyk7CisJZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxl
KCZvYmotPm1tLmxvY2spOwogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKQEAgLTE5MywyMSAr
MTkzLDEzIEBAIF9faTkxNV9nZW1fb2JqZWN0X3Vuc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIHBhZ2VzOwogfQogCi1pbnQgX19pOTE1X2dlbV9vYmpl
Y3RfcHV0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCitpbnQgX19pOTE1
X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQogewogCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7Ci0JaW50IGVycjsKIAogCWlmIChpOTE1
X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKQogCQlyZXR1cm4gLUVCVVNZOwogCi0J
LyogTWF5IGJlIGNhbGxlZCBieSBzaHJpbmtlciBmcm9tIHdpdGhpbiBnZXRfcGFnZXMoKSAob24g
YW5vdGhlciBibykgKi8KLQltdXRleF9sb2NrKCZvYmotPm1tLmxvY2spOwotCWlmICh1bmxpa2Vs
eShhdG9taWNfcmVhZCgmb2JqLT5tbS5wYWdlc19waW5fY291bnQpKSkgewotCQllcnIgPSAtRUJV
U1k7Ci0JCWdvdG8gdW5sb2NrOwotCX0KLQogCWk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXBf
b2Zmc2V0KG9iaik7CiAKIAkvKgpAQCAtMjIzLDE0ICsyMTUsMjIgQEAgaW50IF9faTkxNV9nZW1f
b2JqZWN0X3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCSAqIGdl
dF9wYWdlcyBiYWNrZW5kcyB3ZSBzaG91bGQgYmUgYmV0dGVyIGFibGUgdG8gaGFuZGxlIHRoZQog
CSAqIGNhbmNlbGxhdGlvbiBvZiB0aGUgYXN5bmMgdGFzayBpbiBhIG1vcmUgdW5pZm9ybSBtYW5u
ZXIuCiAJICovCi0JaWYgKCFwYWdlcykKLQkJcGFnZXMgPSBFUlJfUFRSKC1FSU5WQUwpOwotCi0J
aWYgKCFJU19FUlIocGFnZXMpKQorCWlmICghSVNfRVJSX09SX05VTEwocGFnZXMpKQogCQlvYmot
Pm9wcy0+cHV0X3BhZ2VzKG9iaiwgcGFnZXMpOwogCi0JZXJyID0gMDsKLXVubG9jazoKKwlyZXR1
cm4gMDsKK30KKworaW50IF9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQoreworCWludCBlcnI7CisKKwlpZiAoaTkxNV9nZW1fb2JqZWN0
X2hhc19waW5uZWRfcGFnZXMob2JqKSkKKwkJcmV0dXJuIC1FQlVTWTsKKworCS8qIE1heSBiZSBj
YWxsZWQgYnkgc2hyaW5rZXIgZnJvbSB3aXRoaW4gZ2V0X3BhZ2VzKCkgKG9uIGFub3RoZXIgYm8p
ICovCisJbXV0ZXhfbG9jaygmb2JqLT5tbS5sb2NrKTsKKwllcnIgPSBfX2k5MTVfZ2VtX29iamVj
dF9wdXRfcGFnZXNfbG9ja2VkKG9iaik7CiAJbXV0ZXhfdW5sb2NrKCZvYmotPm1tLmxvY2spOwog
CiAJcmV0dXJuIGVycjsKQEAgLTMzNiw3ICszMzYsNyBAQCB2b2lkICppOTE1X2dlbV9vYmplY3Rf
cGluX21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCSAgICAhaTkxNV9nZW1f
b2JqZWN0X3R5cGVfaGFzKG9iaiwgSTkxNV9HRU1fT0JKRUNUX0hBU19JT01FTSkpCiAJCXJldHVy
biBFUlJfUFRSKC1FTlhJTyk7CiAKLQllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGVfbmVz
dGVkKCZvYmotPm1tLmxvY2ssIEk5MTVfTU1fR0VUX1BBR0VTKTsKKwllcnIgPSBtdXRleF9sb2Nr
X2ludGVycnVwdGlibGUoJm9iai0+bW0ubG9jayk7CiAJaWYgKGVycikKIAkJcmV0dXJuIEVSUl9Q
VFIoZXJyKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BoeXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKaW5kZXgg
MTQ0ZTQ5NDBlZWRlLi4wZDE3NmJmMDY0MDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BoeXMuYwpAQCAtMjM2LDcgKzIzNiw3IEBAIGludCBpOTE1X2dlbV9vYmplY3RfYXR0
YWNoX3BoeXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgaW50IGFsaWduKQogCWlm
IChlcnIpCiAJCXJldHVybiBlcnI7CiAKLQllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGVf
bmVzdGVkKCZvYmotPm1tLmxvY2ssIEk5MTVfTU1fR0VUX1BBR0VTKTsKKwllcnIgPSBtdXRleF9s
b2NrX2ludGVycnVwdGlibGUoJm9iai0+bW0ubG9jayk7CiAJaWYgKGVycikKIAkJZ290byBlcnJf
dW5sb2NrOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c2hyaW5rZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5j
CmluZGV4IGRjOGYwNTJhMGZmZS4uYWZjNmU1YjRkY2YxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwpAQCAtNDgsOSArNDgsOSBAQCBzdGF0aWMgYm9v
bCB1bnNhZmVfZHJvcF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlm
bGFncyA9IEk5MTVfR0VNX09CSkVDVF9VTkJJTkRfVEVTVDsKIAogCWlmIChpOTE1X2dlbV9vYmpl
Y3RfdW5iaW5kKG9iaiwgZmxhZ3MpID09IDApCi0JCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdl
cyhvYmopOworCQlyZXR1cm4gdHJ1ZTsKIAotCXJldHVybiAhaTkxNV9nZW1fb2JqZWN0X2hhc19w
YWdlcyhvYmopOworCXJldHVybiBmYWxzZTsKIH0KIAogc3RhdGljIHZvaWQgdHJ5X3RvX3dyaXRl
YmFjayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLApAQCAtMTk5LDEwICsxOTksMTAg
QEAgaTkxNV9nZW1fc2hyaW5rKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAJCQlz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCi0JCQlp
ZiAodW5zYWZlX2Ryb3BfcGFnZXMob2JqLCBzaHJpbmspKSB7CisJCQlpZiAodW5zYWZlX2Ryb3Bf
cGFnZXMob2JqLCBzaHJpbmspICYmCisJCQkgICAgbXV0ZXhfdHJ5bG9jaygmb2JqLT5tbS5sb2Nr
KSkgewogCQkJCS8qIE1heSBhcnJpdmUgZnJvbSBnZXRfcGFnZXMgb24gYW5vdGhlciBibyAqLwot
CQkJCW11dGV4X2xvY2soJm9iai0+bW0ubG9jayk7Ci0JCQkJaWYgKCFpOTE1X2dlbV9vYmplY3Rf
aGFzX3BhZ2VzKG9iaikpIHsKKwkJCQlpZiAoIV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlc19s
b2NrZWQob2JqKSkgewogCQkJCQl0cnlfdG9fd3JpdGViYWNrKG9iaiwgc2hyaW5rKTsKIAkJCQkJ
Y291bnQgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKIAkJCQl9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwppbmRleCA5ZWE5YWE2NWFkZTEuLjBj
YWI5ZGE2NjY5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0
ci5jCkBAIC0yNDcsNyArMjQ3LDcgQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfdXNlcnB0
cl91bmJpbmQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgYm9vbAogCWlmIChHRU1f
V0FSTl9PTihpOTE1X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKSkKIAkJcmV0dXJu
IC1FQlVTWTsKIAotCW11dGV4X2xvY2tfbmVzdGVkKCZvYmotPm1tLmxvY2ssIEk5MTVfTU1fR0VU
X1BBR0VTKTsKKwltdXRleF9sb2NrKCZvYmotPm1tLmxvY2spOwogCiAJcGFnZXMgPSBfX2k5MTVf
Z2VtX29iamVjdF91bnNldF9wYWdlcyhvYmopOwogCWlmICghSVNfRVJSX09SX05VTEwocGFnZXMp
KQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
