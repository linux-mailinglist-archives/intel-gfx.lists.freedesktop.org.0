Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCBE10313
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 01:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C0C89249;
	Tue, 30 Apr 2019 23:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C256890A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 23:06:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="320394796"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2019 16:06:07 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 16:06:05 -0700
Message-Id: <20190430230606.8421-6-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190430230606.8421-1-stuart.summers@intel.com>
References: <20190430230606.8421-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Remove inline from sseu helper
 functions
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

QWRkaXRpb25hbGx5LCBlbnN1cmUgdGhlc2UgYXJlIGFsbCBwcmVmaXhlZCB3aXRoIGludGVsX3Nz
ZXVfKgp0byBtYXRjaCB0aGUgY29udmVudGlvbiBvZiBvdGhlciBmdW5jdGlvbnMgaW4gaTkxNS4K
ClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICB8IDU0ICsrKysr
KysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCAgICAg
fCA1NyArKystLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgICAgICB8ICA2ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwg
NjkgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiA1IGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRp
b25zKCspLCA4NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMK
aW5kZXggN2Y0NDhmM2JlYTBiLi40YTBiODJmYzEwOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9zc2V1LmMKQEAgLTgsNiArOCw2MCBAQAogI2luY2x1ZGUgImludGVsX2xyY19yZWcuaCIK
ICNpbmNsdWRlICJpbnRlbF9zc2V1LmgiCiAKK3Vuc2lnbmVkIGludAoraW50ZWxfc3NldV9zdWJz
bGljZV90b3RhbChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSkKK3sKKwl1bnNpZ25l
ZCBpbnQgaSwgdG90YWwgPSAwOworCisJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoc3NldS0+
c3Vic2xpY2VfbWFzayk7IGkrKykKKwkJdG90YWwgKz0gaHdlaWdodDgoc3NldS0+c3Vic2xpY2Vf
bWFza1tpXSk7CisKKwlyZXR1cm4gdG90YWw7Cit9CisKK3Vuc2lnbmVkIGludAoraW50ZWxfc3Nl
dV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1LCB1
OCBzbGljZSkKK3sKKwlyZXR1cm4gaHdlaWdodDgoc3NldS0+c3Vic2xpY2VfbWFza1tzbGljZV0p
OworfQorCitzdGF0aWMgaW50IGludGVsX3NzZXVfZXVfaWR4KGNvbnN0IHN0cnVjdCBzc2V1X2Rl
dl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCisJCQkgICAgIGludCBzdWJzbGljZSkKK3sKKwlpbnQg
c3Vic2xpY2Vfc3RyaWRlID0gRElWX1JPVU5EX1VQKHNzZXUtPm1heF9ldXNfcGVyX3N1YnNsaWNl
LAorCQkJCQkgICBCSVRTX1BFUl9CWVRFKTsKKwlpbnQgc2xpY2Vfc3RyaWRlID0gc3NldS0+bWF4
X3N1YnNsaWNlcyAqIHN1YnNsaWNlX3N0cmlkZTsKKworCXJldHVybiBzbGljZSAqIHNsaWNlX3N0
cmlkZSArIHN1YnNsaWNlICogc3Vic2xpY2Vfc3RyaWRlOworfQorCit1MTYgaW50ZWxfc3NldV9n
ZXRfZXVzKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCisJCSAg
ICAgICBpbnQgc3Vic2xpY2UpCit7CisJaW50IGksIG9mZnNldCA9IGludGVsX3NzZXVfZXVfaWR4
KHNzZXUsIHNsaWNlLCBzdWJzbGljZSk7CisJdTE2IGV1X21hc2sgPSAwOworCisJZm9yIChpID0g
MDsKKwkgICAgIGkgPCBESVZfUk9VTkRfVVAoc3NldS0+bWF4X2V1c19wZXJfc3Vic2xpY2UsIEJJ
VFNfUEVSX0JZVEUpOyBpKyspIHsKKwkJZXVfbWFzayB8PSAoKHUxNilzc2V1LT5ldV9tYXNrW29m
ZnNldCArIGldKSA8PAorCQkJKGkgKiBCSVRTX1BFUl9CWVRFKTsKKwl9CisKKwlyZXR1cm4gZXVf
bWFzazsKK30KKwordm9pZCBpbnRlbF9zc2V1X3NldF9ldXMoc3RydWN0IHNzZXVfZGV2X2luZm8g
KnNzZXUsIGludCBzbGljZSwgaW50IHN1YnNsaWNlLAorCQkJdTE2IGV1X21hc2spCit7CisJaW50
IGksIG9mZnNldCA9IGludGVsX3NzZXVfZXVfaWR4KHNzZXUsIHNsaWNlLCBzdWJzbGljZSk7CisK
Kwlmb3IgKGkgPSAwOworCSAgICAgaSA8IERJVl9ST1VORF9VUChzc2V1LT5tYXhfZXVzX3Blcl9z
dWJzbGljZSwgQklUU19QRVJfQllURSk7IGkrKykgeworCQlzc2V1LT5ldV9tYXNrW29mZnNldCAr
IGldID0KKwkJCShldV9tYXNrID4+IChCSVRTX1BFUl9CWVRFICogaSkpICYgMHhmZjsKKwl9Cit9
CisKIHUzMiBpbnRlbF9zc2V1X21ha2VfcnBjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKIAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfc3NldSAqcmVxX3NzZXUpCiB7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9zc2V1LmgKaW5kZXggMDI5ZTcxZDhmMTQwLi41NmUzNzIxYWU4M2YgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKQEAgLTYzLDU4ICs2MywxNyBAQCBpbnRl
bF9zc2V1X2Zyb21fZGV2aWNlX2luZm8oY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUp
CiAJcmV0dXJuIHZhbHVlOwogfQogCi1zdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBzc2V1X3N1
YnNsaWNlX3RvdGFsKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KQotewotCXVuc2ln
bmVkIGludCBpLCB0b3RhbCA9IDA7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShzc2V1
LT5zdWJzbGljZV9tYXNrKTsgaSsrKQotCQl0b3RhbCArPSBod2VpZ2h0OChzc2V1LT5zdWJzbGlj
ZV9tYXNrW2ldKTsKK3Vuc2lnbmVkIGludAoraW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChjb25z
dCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSk7CiAKLQlyZXR1cm4gdG90YWw7Ci19Cit1bnNp
Z25lZCBpbnQKK2ludGVsX3NzZXVfc3Vic2xpY2VzX3Blcl9zbGljZShjb25zdCBzdHJ1Y3Qgc3Nl
dV9kZXZfaW5mbyAqc3NldSwgdTggc2xpY2UpOwogCi1zdGF0aWMgaW5saW5lIHVuc2lnbmVkIGlu
dAotc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpz
c2V1LCB1OCBzbGljZSkKLXsKLQlyZXR1cm4gaHdlaWdodDgoc3NldS0+c3Vic2xpY2VfbWFza1tz
bGljZV0pOwotfQotCi1zdGF0aWMgaW5saW5lIGludCBzc2V1X2V1X2lkeChjb25zdCBzdHJ1Y3Qg
c3NldV9kZXZfaW5mbyAqc3NldSwKLQkJCSAgICAgIGludCBzbGljZSwgaW50IHN1YnNsaWNlKQot
ewotCWludCBzdWJzbGljZV9zdHJpZGUgPSBESVZfUk9VTkRfVVAoc3NldS0+bWF4X2V1c19wZXJf
c3Vic2xpY2UsCi0JCQkJCSAgIEJJVFNfUEVSX0JZVEUpOwotCWludCBzbGljZV9zdHJpZGUgPSBz
c2V1LT5tYXhfc3Vic2xpY2VzICogc3Vic2xpY2Vfc3RyaWRlOwotCi0JcmV0dXJuIHNsaWNlICog
c2xpY2Vfc3RyaWRlICsgc3Vic2xpY2UgKiBzdWJzbGljZV9zdHJpZGU7Ci19Cit1MTYgaW50ZWxf
c3NldV9nZXRfZXVzKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1LCBpbnQgc2xpY2Us
CisJCSAgICAgICBpbnQgc3Vic2xpY2UpOwogCi1zdGF0aWMgaW5saW5lIHUxNiBzc2V1X2dldF9l
dXMoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsCi0JCQkgICAgICAgaW50IHNsaWNl
LCBpbnQgc3Vic2xpY2UpCi17Ci0JaW50IGksIG9mZnNldCA9IHNzZXVfZXVfaWR4KHNzZXUsIHNs
aWNlLCBzdWJzbGljZSk7Ci0JdTE2IGV1X21hc2sgPSAwOwotCi0JZm9yIChpID0gMDsKLQkgICAg
IGkgPCBESVZfUk9VTkRfVVAoc3NldS0+bWF4X2V1c19wZXJfc3Vic2xpY2UsIEJJVFNfUEVSX0JZ
VEUpOyBpKyspIHsKLQkJZXVfbWFzayB8PSAoKHUxNilzc2V1LT5ldV9tYXNrW29mZnNldCArIGld
KSA8PAotCQkJKGkgKiBCSVRTX1BFUl9CWVRFKTsKLQl9Ci0KLQlyZXR1cm4gZXVfbWFzazsKLX0K
LQotc3RhdGljIGlubGluZSB2b2lkIHNzZXVfc2V0X2V1cyhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSwKLQkJCQlpbnQgc2xpY2UsIGludCBzdWJzbGljZSwgdTE2IGV1X21hc2spCi17Ci0JaW50
IGksIG9mZnNldCA9IHNzZXVfZXVfaWR4KHNzZXUsIHNsaWNlLCBzdWJzbGljZSk7Ci0KLQlmb3Ig
KGkgPSAwOwotCSAgICAgaSA8IERJVl9ST1VORF9VUChzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGlj
ZSwgQklUU19QRVJfQllURSk7IGkrKykgewotCQlzc2V1LT5ldV9tYXNrW29mZnNldCArIGldID0K
LQkJCShldV9tYXNrID4+IChCSVRTX1BFUl9CWVRFICogaSkpICYgMHhmZjsKLQl9Ci19Cit2b2lk
IGludGVsX3NzZXVfc2V0X2V1cyhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50IHNsaWNl
LCBpbnQgc3Vic2xpY2UsCisJCQl1MTYgZXVfbWFzayk7CiAKIHUzMiBpbnRlbF9zc2V1X21ha2Vf
cnBjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCSBjb25zdCBzdHJ1Y3QgaW50
ZWxfc3NldSAqcmVxX3NzZXUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCAw
ZWNmMDA2ZDI2YjMuLjIwYWM3ODJjNTBjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMKQEAgLTQxNTcsNyArNDE1Nyw3IEBAIHN0YXRpYyB2b2lkIGJyb2Fkd2VsbF9zc2V1X2Rldmlj
ZV9zdGF0dXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCVJVTlRJTUVf
SU5GTyhkZXZfcHJpdiktPnNzZXUuc3Vic2xpY2VfbWFza1tzXTsKIAkJfQogCQlzc2V1LT5ldV90
b3RhbCA9IHNzZXUtPmV1X3Blcl9zdWJzbGljZSAqCi0JCQkJIHNzZXVfc3Vic2xpY2VfdG90YWwo
c3NldSk7CisJCQkJIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwoc3NldSk7CiAKIAkJLyogc3Vi
dHJhY3QgZnVzZWQgb2ZmIEVVKHMpIGZyb20gZW5hYmxlZCBzbGljZShzKSAqLwogCQlmb3IgKHMg
PSAwOyBzIDwgZmxzKHNzZXUtPnNsaWNlX21hc2spOyBzKyspIHsKQEAgLTQxODEsMTAgKzQxODEs
MTAgQEAgc3RhdGljIHZvaWQgaTkxNV9wcmludF9zc2V1X2luZm8oc3RydWN0IHNlcV9maWxlICpt
LCBib29sIGlzX2F2YWlsYWJsZV9pbmZvLAogCXNlcV9wcmludGYobSwgIiAgJXMgU2xpY2UgVG90
YWw6ICV1XG4iLCB0eXBlLAogCQkgICBod2VpZ2h0OChzc2V1LT5zbGljZV9tYXNrKSk7CiAJc2Vx
X3ByaW50ZihtLCAiICAlcyBTdWJzbGljZSBUb3RhbDogJXVcbiIsIHR5cGUsCi0JCSAgIHNzZXVf
c3Vic2xpY2VfdG90YWwoc3NldSkpOworCQkgICBpbnRlbF9zc2V1X3N1YnNsaWNlX3RvdGFsKHNz
ZXUpKTsKIAlmb3IgKHMgPSAwOyBzIDwgZmxzKHNzZXUtPnNsaWNlX21hc2spOyBzKyspIHsKIAkJ
c2VxX3ByaW50ZihtLCAiICAlcyBTbGljZSVpIHN1YnNsaWNlczogJXVcbiIsIHR5cGUsCi0JCQkg
ICBzLCBzc2V1X3N1YnNsaWNlc19wZXJfc2xpY2Uoc3NldSwgcykpOworCQkJICAgcywgaW50ZWxf
c3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKHNzZXUsIHMpKTsKIAl9CiAJc2VxX3ByaW50ZihtLCAi
ICAlcyBFVSBUb3RhbDogJXVcbiIsIHR5cGUsCiAJCSAgIHNzZXUtPmV1X3RvdGFsKTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCmluZGV4IGI2Y2U3NTgwZDQxNC4uYzdhYjBmNzI0MDIxIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTM3NSw3ICszNzUsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0
cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJdmFsdWUg
PSBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAljYXNl
IEk5MTVfUEFSQU1fU1VCU0xJQ0VfVE9UQUw6Ci0JCXZhbHVlID0gc3NldV9zdWJzbGljZV90b3Rh
bChzc2V1KTsKKwkJdmFsdWUgPSBpbnRlbF9zc2V1X3N1YnNsaWNlX3RvdGFsKHNzZXUpOwogCQlp
ZiAoIXZhbHVlKQogCQkJcmV0dXJuIC1FTk9ERVY7CiAJCWJyZWFrOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggNTU5Y2YwZDA2MjhlLi5lMWRiY2NmMDRjZDkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTAsMTAgKzkw
LDEwIEBAIHN0YXRpYyB2b2lkIHNzZXVfZHVtcChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSwgc3RydWN0IGRybV9wcmludGVyICpwKQogCiAJZHJtX3ByaW50ZihwLCAic2xpY2UgdG90
YWw6ICV1LCBtYXNrPSUwNHhcbiIsCiAJCSAgIGh3ZWlnaHQ4KHNzZXUtPnNsaWNlX21hc2spLCBz
c2V1LT5zbGljZV9tYXNrKTsKLQlkcm1fcHJpbnRmKHAsICJzdWJzbGljZSB0b3RhbDogJXVcbiIs
IHNzZXVfc3Vic2xpY2VfdG90YWwoc3NldSkpOworCWRybV9wcmludGYocCwgInN1YnNsaWNlIHRv
dGFsOiAldVxuIiwgaW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChzc2V1KSk7CiAJZm9yIChzID0g
MDsgcyA8IHNzZXUtPm1heF9zbGljZXM7IHMrKykgewogCQlkcm1fcHJpbnRmKHAsICJzbGljZSVk
OiAldSBzdWJzbGljZXMsIG1hc2s9JTA0eFxuIiwKLQkJCSAgIHMsIHNzZXVfc3Vic2xpY2VzX3Bl
cl9zbGljZShzc2V1LCBzKSwKKwkJCSAgIHMsIGludGVsX3NzZXVfc3Vic2xpY2VzX3Blcl9zbGlj
ZShzc2V1LCBzKSwKIAkJCSAgIHNzZXUtPnN1YnNsaWNlX21hc2tbc10pOwogCX0KIAlkcm1fcHJp
bnRmKHAsICJFVSB0b3RhbDogJXVcbiIsIHNzZXUtPmV1X3RvdGFsKTsKQEAgLTEyNiwxMSArMTI2
LDExIEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fZHVtcF90b3BvbG9neShjb25zdCBzdHJ1Y3Qg
c3NldV9kZXZfaW5mbyAqc3NldSwKIAogCWZvciAocyA9IDA7IHMgPCBzc2V1LT5tYXhfc2xpY2Vz
OyBzKyspIHsKIAkJZHJtX3ByaW50ZihwLCAic2xpY2UlZDogJXUgc3Vic2xpY2UocykgKDB4JWho
eCk6XG4iLAotCQkJICAgcywgc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKHNzZXUsIHMpLAorCQkJ
ICAgcywgaW50ZWxfc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKHNzZXUsIHMpLAogCQkJICAgc3Nl
dS0+c3Vic2xpY2VfbWFza1tzXSk7CiAKIAkJZm9yIChzcyA9IDA7IHNzIDwgc3NldS0+bWF4X3N1
YnNsaWNlczsgc3MrKykgewotCQkJdTE2IGVuYWJsZWRfZXVzID0gc3NldV9nZXRfZXVzKHNzZXUs
IHMsIHNzKTsKKwkJCXUxNiBlbmFibGVkX2V1cyA9IGludGVsX3NzZXVfZ2V0X2V1cyhzc2V1LCBz
LCBzcyk7CiAKIAkJCWRybV9wcmludGYocCwgIlx0c3Vic2xpY2UlZDogJXUgRVVzICgweCVoeClc
biIsCiAJCQkJICAgc3MsIGh3ZWlnaHQxNihlbmFibGVkX2V1cyksIGVuYWJsZWRfZXVzKTsKQEAg
LTE4MCw3ICsxODAsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9zc2V1X2luZm9faW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0g
KHNzX2VuID4+IHNzX2lkeCkgJiBzc19lbl9tYXNrOwogCQkJZm9yIChzcyA9IDA7IHNzIDwgc3Nl
dS0+bWF4X3N1YnNsaWNlczsgc3MrKykgewogCQkJCWlmIChzc2V1LT5zdWJzbGljZV9tYXNrW3Nd
ICYgQklUKHNzKSkKLQkJCQkJc3NldV9zZXRfZXVzKHNzZXUsIHMsIHNzLCBldV9lbik7CisJCQkJ
CWludGVsX3NzZXVfc2V0X2V1cyhzc2V1LCBzLCBzcywgZXVfZW4pOwogCQkJfQogCQl9CiAJfQpA
QCAtMjIyLDMyICsyMjIsMzIgQEAgc3RhdGljIHZvaWQgZ2VuMTBfc3NldV9pbmZvX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCS8qIFNsaWNlMCAqLwogCWV1X2VuID0g
fkk5MTVfUkVBRChHRU44X0VVX0RJU0FCTEUwKTsKIAlmb3IgKHNzID0gMDsgc3MgPCBzc2V1LT5t
YXhfc3Vic2xpY2VzOyBzcysrKQotCQlzc2V1X3NldF9ldXMoc3NldSwgMCwgc3MsIChldV9lbiA+
PiAoOCAqIHNzKSkgJiBldV9tYXNrKTsKKwkJaW50ZWxfc3NldV9zZXRfZXVzKHNzZXUsIDAsIHNz
LCAoZXVfZW4gPj4gKDggKiBzcykpICYgZXVfbWFzayk7CiAJLyogU2xpY2UxICovCi0Jc3NldV9z
ZXRfZXVzKHNzZXUsIDEsIDAsIChldV9lbiA+PiAyNCkgJiBldV9tYXNrKTsKKwlpbnRlbF9zc2V1
X3NldF9ldXMoc3NldSwgMSwgMCwgKGV1X2VuID4+IDI0KSAmIGV1X21hc2spOwogCWV1X2VuID0g
fkk5MTVfUkVBRChHRU44X0VVX0RJU0FCTEUxKTsKLQlzc2V1X3NldF9ldXMoc3NldSwgMSwgMSwg
ZXVfZW4gJiBldV9tYXNrKTsKKwlpbnRlbF9zc2V1X3NldF9ldXMoc3NldSwgMSwgMSwgZXVfZW4g
JiBldV9tYXNrKTsKIAkvKiBTbGljZTIgKi8KLQlzc2V1X3NldF9ldXMoc3NldSwgMiwgMCwgKGV1
X2VuID4+IDgpICYgZXVfbWFzayk7Ci0Jc3NldV9zZXRfZXVzKHNzZXUsIDIsIDEsIChldV9lbiA+
PiAxNikgJiBldV9tYXNrKTsKKwlpbnRlbF9zc2V1X3NldF9ldXMoc3NldSwgMiwgMCwgKGV1X2Vu
ID4+IDgpICYgZXVfbWFzayk7CisJaW50ZWxfc3NldV9zZXRfZXVzKHNzZXUsIDIsIDEsIChldV9l
biA+PiAxNikgJiBldV9tYXNrKTsKIAkvKiBTbGljZTMgKi8KLQlzc2V1X3NldF9ldXMoc3NldSwg
MywgMCwgKGV1X2VuID4+IDI0KSAmIGV1X21hc2spOworCWludGVsX3NzZXVfc2V0X2V1cyhzc2V1
LCAzLCAwLCAoZXVfZW4gPj4gMjQpICYgZXVfbWFzayk7CiAJZXVfZW4gPSB+STkxNV9SRUFEKEdF
TjhfRVVfRElTQUJMRTIpOwotCXNzZXVfc2V0X2V1cyhzc2V1LCAzLCAxLCBldV9lbiAmIGV1X21h
c2spOworCWludGVsX3NzZXVfc2V0X2V1cyhzc2V1LCAzLCAxLCBldV9lbiAmIGV1X21hc2spOwog
CS8qIFNsaWNlNCAqLwotCXNzZXVfc2V0X2V1cyhzc2V1LCA0LCAwLCAoZXVfZW4gPj4gOCkgJiBl
dV9tYXNrKTsKLQlzc2V1X3NldF9ldXMoc3NldSwgNCwgMSwgKGV1X2VuID4+IDE2KSAmIGV1X21h
c2spOworCWludGVsX3NzZXVfc2V0X2V1cyhzc2V1LCA0LCAwLCAoZXVfZW4gPj4gOCkgJiBldV9t
YXNrKTsKKwlpbnRlbF9zc2V1X3NldF9ldXMoc3NldSwgNCwgMSwgKGV1X2VuID4+IDE2KSAmIGV1
X21hc2spOwogCS8qIFNsaWNlNSAqLwotCXNzZXVfc2V0X2V1cyhzc2V1LCA1LCAwLCAoZXVfZW4g
Pj4gMjQpICYgZXVfbWFzayk7CisJaW50ZWxfc3NldV9zZXRfZXVzKHNzZXUsIDUsIDAsIChldV9l
biA+PiAyNCkgJiBldV9tYXNrKTsKIAlldV9lbiA9IH5JOTE1X1JFQUQoR0VOMTBfRVVfRElTQUJM
RTMpOwotCXNzZXVfc2V0X2V1cyhzc2V1LCA1LCAxLCBldV9lbiAmIGV1X21hc2spOworCWludGVs
X3NzZXVfc2V0X2V1cyhzc2V1LCA1LCAxLCBldV9lbiAmIGV1X21hc2spOwogCiAJLyogRG8gYSBz
ZWNvbmQgcGFzcyB3aGVyZSB3ZSBtYXJrIHRoZSBzdWJzbGljZXMgZGlzYWJsZWQgaWYgYWxsIHRo
ZWlyCiAJICogZXVzIGFyZSBvZmYuCiAJICovCiAJZm9yIChzID0gMDsgcyA8IHNzZXUtPm1heF9z
bGljZXM7IHMrKykgewogCQlmb3IgKHNzID0gMDsgc3MgPCBzc2V1LT5tYXhfc3Vic2xpY2VzOyBz
cysrKSB7Ci0JCQlpZiAoc3NldV9nZXRfZXVzKHNzZXUsIHMsIHNzKSA9PSAwKQorCQkJaWYgKGlu
dGVsX3NzZXVfZ2V0X2V1cyhzc2V1LCBzLCBzcykgPT0gMCkKIAkJCQlzc2V1LT5zdWJzbGljZV9t
YXNrW3NdICY9IH5CSVQoc3MpOwogCQl9CiAJfQpAQCAtMjYwLDkgKzI2MCwxMCBAQCBzdGF0aWMg
dm9pZCBnZW4xMF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJICogRVUgaW4gYW55IG9uZSBzdWJzbGljZSBtYXkgYmUgZnVzZWQgb2ZmIGZvciBkaWUK
IAkgKiByZWNvdmVyeS4KIAkgKi8KLQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBzc2V1X3N1YnNs
aWNlX3RvdGFsKHNzZXUpID8KKwlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBpbnRlbF9zc2V1X3N1
YnNsaWNlX3RvdGFsKHNzZXUpID8KIAkJCQlESVZfUk9VTkRfVVAoc3NldS0+ZXVfdG90YWwsCi0J
CQkJCSAgICAgc3NldV9zdWJzbGljZV90b3RhbChzc2V1KSkgOiAwOworCQkJCQkgICAgIGludGVs
X3NzZXVfc3Vic2xpY2VfdG90YWwoc3NldSkpIDoKKwkJCQkwOwogCiAJLyogTm8gcmVzdHJpY3Rp
b25zIG9uIFBvd2VyIEdhdGluZyAqLwogCXNzZXUtPmhhc19zbGljZV9wZyA9IDE7CkBAIC0yOTAs
NyArMjkxLDcgQEAgc3RhdGljIHZvaWQgY2hlcnJ5dmlld19zc2V1X2luZm9faW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQkgIENIVl9GR1RfRVVfRElTX1NTMF9SMV9T
SElGVCkgPDwgNCk7CiAKIAkJc3NldS0+c3Vic2xpY2VfbWFza1swXSB8PSBCSVQoMCk7Ci0JCXNz
ZXVfc2V0X2V1cyhzc2V1LCAwLCAwLCB+ZGlzYWJsZWRfbWFzayk7CisJCWludGVsX3NzZXVfc2V0
X2V1cyhzc2V1LCAwLCAwLCB+ZGlzYWJsZWRfbWFzayk7CiAJfQogCiAJaWYgKCEoZnVzZSAmIENI
Vl9GR1RfRElTQUJMRV9TUzEpKSB7CkBAIC0zMDEsNyArMzAyLDcgQEAgc3RhdGljIHZvaWQgY2hl
cnJ5dmlld19zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJCQkgIENIVl9GR1RfRVVfRElTX1NTMV9SMV9TSElGVCkgPDwgNCk7CiAKIAkJc3NldS0+c3Vi
c2xpY2VfbWFza1swXSB8PSBCSVQoMSk7Ci0JCXNzZXVfc2V0X2V1cyhzc2V1LCAwLCAxLCB+ZGlz
YWJsZWRfbWFzayk7CisJCWludGVsX3NzZXVfc2V0X2V1cyhzc2V1LCAwLCAxLCB+ZGlzYWJsZWRf
bWFzayk7CiAJfQogCiAJc3NldS0+ZXVfdG90YWwgPSBjb21wdXRlX2V1X3RvdGFsKHNzZXUpOwpA
QCAtMzEwLDggKzMxMSw4IEBAIHN0YXRpYyB2b2lkIGNoZXJyeXZpZXdfc3NldV9pbmZvX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIENIViBleHBlY3RlZCB0byBh
bHdheXMgaGF2ZSBhIHVuaWZvcm0gZGlzdHJpYnV0aW9uIG9mIEVVCiAJICogYWNyb3NzIHN1YnNs
aWNlcy4KIAkqLwotCXNzZXUtPmV1X3Blcl9zdWJzbGljZSA9IHNzZXVfc3Vic2xpY2VfdG90YWwo
c3NldSkgPwotCQkJCXNzZXUtPmV1X3RvdGFsIC8gc3NldV9zdWJzbGljZV90b3RhbChzc2V1KSA6
CisJc3NldS0+ZXVfcGVyX3N1YnNsaWNlID0gaW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChzc2V1
KSA/CisJCQkJc3NldS0+ZXVfdG90YWwgLyBpbnRlbF9zc2V1X3N1YnNsaWNlX3RvdGFsKHNzZXUp
IDoKIAkJCQkwOwogCS8qCiAJICogQ0hWIHN1cHBvcnRzIHN1YnNsaWNlIHBvd2VyIGdhdGluZyBv
biBkZXZpY2VzIHdpdGggbW9yZSB0aGFuCkBAIC0zMTksNyArMzIwLDcgQEAgc3RhdGljIHZvaWQg
Y2hlcnJ5dmlld19zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJICogbW9yZSB0aGFuIG9uZSBFVSBwYWlyIHBlciBzdWJzbGljZS4KIAkqLwogCXNzZXUt
Pmhhc19zbGljZV9wZyA9IDA7Ci0Jc3NldS0+aGFzX3N1YnNsaWNlX3BnID0gc3NldV9zdWJzbGlj
ZV90b3RhbChzc2V1KSA+IDE7CisJc3NldS0+aGFzX3N1YnNsaWNlX3BnID0gaW50ZWxfc3NldV9z
dWJzbGljZV90b3RhbChzc2V1KSA+IDE7CiAJc3NldS0+aGFzX2V1X3BnID0gKHNzZXUtPmV1X3Bl
cl9zdWJzbGljZSA+IDIpOwogfQogCkBAIC0zNjksNyArMzcwLDcgQEAgc3RhdGljIHZvaWQgZ2Vu
OV9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkJ
CWV1X2Rpc2FibGVkX21hc2sgPSAoZXVfZGlzYWJsZSA+PiAoc3MgKiA4KSkgJiBldV9tYXNrOwog
Ci0JCQlzc2V1X3NldF9ldXMoc3NldSwgcywgc3MsIH5ldV9kaXNhYmxlZF9tYXNrKTsKKwkJCWlu
dGVsX3NzZXVfc2V0X2V1cyhzc2V1LCBzLCBzcywgfmV1X2Rpc2FibGVkX21hc2spOwogCiAJCQll
dV9wZXJfc3MgPSBzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGljZSAtCiAJCQkJaHdlaWdodDgoZXVf
ZGlzYWJsZWRfbWFzayk7CkBAIC0zOTMsOSArMzk0LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlfc3Nl
dV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIHJlY292
ZXJ5LiBCWFQgaXMgZXhwZWN0ZWQgdG8gYmUgcGVyZmVjdGx5IHVuaWZvcm0gaW4gRVUKIAkgKiBk
aXN0cmlidXRpb24uCiAJKi8KLQlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBzc2V1X3N1YnNsaWNl
X3RvdGFsKHNzZXUpID8KKwlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBpbnRlbF9zc2V1X3N1YnNs
aWNlX3RvdGFsKHNzZXUpID8KIAkJCQlESVZfUk9VTkRfVVAoc3NldS0+ZXVfdG90YWwsCi0JCQkJ
CSAgICAgc3NldV9zdWJzbGljZV90b3RhbChzc2V1KSkgOiAwOworCQkJCQkgICAgIGludGVsX3Nz
ZXVfc3Vic2xpY2VfdG90YWwoc3NldSkpIDoKKwkJCQkwOwogCS8qCiAJICogU0tMKyBzdXBwb3J0
cyBzbGljZSBwb3dlciBnYXRpbmcgb24gZGV2aWNlcyB3aXRoIG1vcmUgdGhhbgogCSAqIG9uZSBz
bGljZSwgYW5kIHN1cHBvcnRzIEVVIHBvd2VyIGdhdGluZyBvbiBkZXZpY2VzIHdpdGgKQEAgLTQw
Nyw3ICs0MDksNyBAQCBzdGF0aWMgdm9pZCBnZW45X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzc2V1LT5oYXNfc2xpY2VfcGcgPQogCQkhSVNfR0VO
OV9MUChkZXZfcHJpdikgJiYgaHdlaWdodDgoc3NldS0+c2xpY2VfbWFzaykgPiAxOwogCXNzZXUt
Pmhhc19zdWJzbGljZV9wZyA9Ci0JCUlTX0dFTjlfTFAoZGV2X3ByaXYpICYmIHNzZXVfc3Vic2xp
Y2VfdG90YWwoc3NldSkgPiAxOworCQlJU19HRU45X0xQKGRldl9wcml2KSAmJiBpbnRlbF9zc2V1
X3N1YnNsaWNlX3RvdGFsKHNzZXUpID4gMTsKIAlzc2V1LT5oYXNfZXVfcGcgPSBzc2V1LT5ldV9w
ZXJfc3Vic2xpY2UgPiAyOwogCiAJaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CkBAIC00Nzcs
NyArNDc5LDcgQEAgc3RhdGljIHZvaWQgYnJvYWR3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWV1X2Rpc2FibGVkX21hc2sgPQogCQkJCWV1
X2Rpc2FibGVbc10gPj4gKHNzICogc3NldS0+bWF4X2V1c19wZXJfc3Vic2xpY2UpOwogCi0JCQlz
c2V1X3NldF9ldXMoc3NldSwgcywgc3MsIH5ldV9kaXNhYmxlZF9tYXNrKTsKKwkJCWludGVsX3Nz
ZXVfc2V0X2V1cyhzc2V1LCBzLCBzcywgfmV1X2Rpc2FibGVkX21hc2spOwogCiAJCQluX2Rpc2Fi
bGVkID0gaHdlaWdodDgoZXVfZGlzYWJsZWRfbWFzayk7CiAKQEAgLTQ5Niw5ICs0OTgsMTAgQEAg
c3RhdGljIHZvaWQgYnJvYWR3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkgKiBzdWJzbGljZXMgd2l0aCB0aGUgZXhjZXB0aW9uIHRoYXQgYW55
IG9uZSBFVSBpbiBhbnkgb25lIHN1YnNsaWNlIG1heQogCSAqIGJlIGZ1c2VkIG9mZiBmb3IgZGll
IHJlY292ZXJ5LgogCSAqLwotCXNzZXUtPmV1X3Blcl9zdWJzbGljZSA9IHNzZXVfc3Vic2xpY2Vf
dG90YWwoc3NldSkgPworCXNzZXUtPmV1X3Blcl9zdWJzbGljZSA9IGludGVsX3NzZXVfc3Vic2xp
Y2VfdG90YWwoc3NldSkgPwogCQkJCURJVl9ST1VORF9VUChzc2V1LT5ldV90b3RhbCwKLQkJCQkJ
ICAgICBzc2V1X3N1YnNsaWNlX3RvdGFsKHNzZXUpKSA6IDA7CisJCQkJCSAgICAgaW50ZWxfc3Nl
dV9zdWJzbGljZV90b3RhbChzc2V1KSkgOgorCQkJCTA7CiAKIAkvKgogCSAqIEJEVyBzdXBwb3J0
cyBzbGljZSBwb3dlciBnYXRpbmcgb24gZGV2aWNlcyB3aXRoIG1vcmUgdGhhbgpAQCAtNTYxLDgg
KzU2NCw4IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJZm9yIChzID0gMDsgcyA8IHNzZXUtPm1heF9zbGlj
ZXM7IHMrKykgewogCQlmb3IgKHNzID0gMDsgc3MgPCBzc2V1LT5tYXhfc3Vic2xpY2VzOyBzcysr
KSB7Ci0JCQlzc2V1X3NldF9ldXMoc3NldSwgcywgc3MsCi0JCQkJICAgICAoMVVMIDw8IHNzZXUt
PmV1X3Blcl9zdWJzbGljZSkgLSAxKTsKKwkJCWludGVsX3NzZXVfc2V0X2V1cyhzc2V1LCBzLCBz
cywKKwkJCQkJICAgKDFVTCA8PCBzc2V1LT5ldV9wZXJfc3Vic2xpY2UpIC0gMSk7CiAJCX0KIAl9
CiAKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
