Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F88296CA2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 01:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9346E8A0;
	Tue, 20 Aug 2019 23:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEBD6E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:04:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 16:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="377944600"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga005.fm.intel.com with ESMTP; 20 Aug 2019 16:04:52 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:35 -0700
Message-Id: <20190820230544.170010-3-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820230544.170010-1-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Add function to set SSEU info
 per platform
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGFsbG93IGVhY2ggcGxhdGZvcm0gdG8gc2V0IG1heGltdW0K
c2xpY2UsIHN1YnNsaWNlLCBhbmQgRVUgaW5mb3JtYXRpb24gdG8gcmVkdWNlIGNvZGUgZHVwbGlj
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICB8
ICA4ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgIHwgIDMg
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgfCAgNiArKy0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMzkgKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDI4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwppbmRleCA2YmYyZDg3ZGEx
MDkuLjY3MjcwNzllYjliNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwpAQCAt
OCw2ICs4LDE0IEBACiAjaW5jbHVkZSAiaW50ZWxfbHJjX3JlZy5oIgogI2luY2x1ZGUgImludGVs
X3NzZXUuaCIKIAordm9pZCBpbnRlbF9zc2V1X3NldF9pbmZvKHN0cnVjdCBzc2V1X2Rldl9pbmZv
ICpzc2V1LCB1OCBtYXhfc2xpY2VzLAorCQkJIHU4IG1heF9zdWJzbGljZXMsIHU4IG1heF9ldXNf
cGVyX3N1YnNsaWNlKQoreworCXNzZXUtPm1heF9zbGljZXMgPSBtYXhfc2xpY2VzOworCXNzZXUt
Pm1heF9zdWJzbGljZXMgPSBtYXhfc3Vic2xpY2VzOworCXNzZXUtPm1heF9ldXNfcGVyX3N1YnNs
aWNlID0gbWF4X2V1c19wZXJfc3Vic2xpY2U7Cit9CisKIHVuc2lnbmVkIGludAogaW50ZWxfc3Nl
dV9zdWJzbGljZV90b3RhbChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSkKIHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAppbmRleCBiNTBkMDQwMWE0ZTIuLjY0ZTQ3ZGFk
MDdiZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaApAQCAtNjMsNiArNjMsOSBA
QCBpbnRlbF9zc2V1X2Zyb21fZGV2aWNlX2luZm8oY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8g
KnNzZXUpCiAJcmV0dXJuIHZhbHVlOwogfQogCit2b2lkIGludGVsX3NzZXVfc2V0X2luZm8oc3Ry
dWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIHU4IG1heF9zbGljZXMsCisJCQkgdTggbWF4X3N1YnNs
aWNlcywgdTggbWF4X2V1c19wZXJfc3Vic2xpY2UpOworCiB1bnNpZ25lZCBpbnQKIGludGVsX3Nz
ZXVfc3Vic2xpY2VfdG90YWwoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUpOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IGI1MmMwNGY0NGYzMi4uYWJmMGY2YmEy
MTNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMzk0NSw5ICszOTQ1LDkg
QEAgc3RhdGljIGludCBpOTE1X3NzZXVfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAq
dW51c2VkKQogCiAJc2VxX3B1dHMobSwgIlNTRVUgRGV2aWNlIFN0YXR1c1xuIik7CiAJbWVtc2V0
KCZzc2V1LCAwLCBzaXplb2Yoc3NldSkpOwotCXNzZXUubWF4X3NsaWNlcyA9IGluZm8tPnNzZXUu
bWF4X3NsaWNlczsKLQlzc2V1Lm1heF9zdWJzbGljZXMgPSBpbmZvLT5zc2V1Lm1heF9zdWJzbGlj
ZXM7Ci0Jc3NldS5tYXhfZXVzX3Blcl9zdWJzbGljZSA9IGluZm8tPnNzZXUubWF4X2V1c19wZXJf
c3Vic2xpY2U7CisJaW50ZWxfc3NldV9zZXRfaW5mbygmc3NldSwgaW5mby0+c3NldS5tYXhfc2xp
Y2VzLAorCQkJICAgIGluZm8tPnNzZXUubWF4X3N1YnNsaWNlcywKKwkJCSAgICBpbmZvLT5zc2V1
Lm1heF9ldXNfcGVyX3N1YnNsaWNlKTsKIAogCXdpdGhfaW50ZWxfcnVudGltZV9wbSgmZGV2X3By
aXYtPnJ1bnRpbWVfcG0sIHdha2VyZWYpIHsKIAkJaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYp
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZDBlZDQ0ZDMz
NDg0Li43N2Q3YmJhYTQ5ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYwpAQCAtMTkxLDE1ICsxOTEsMTAgQEAgc3RhdGljIHZvaWQgZ2VuMTFfc3NldV9pbmZvX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXU4IGV1X2VuOwogCWludCBz
OwogCi0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewotCQlzc2V1LT5tYXhfc2xpY2Vz
ID0gMTsKLQkJc3NldS0+bWF4X3N1YnNsaWNlcyA9IDQ7Ci0JCXNzZXUtPm1heF9ldXNfcGVyX3N1
YnNsaWNlID0gODsKLQl9IGVsc2UgewotCQlzc2V1LT5tYXhfc2xpY2VzID0gMTsKLQkJc3NldS0+
bWF4X3N1YnNsaWNlcyA9IDg7Ci0JCXNzZXUtPm1heF9ldXNfcGVyX3N1YnNsaWNlID0gODsKLQl9
CisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKKwkJaW50ZWxfc3NldV9zZXRfaW5mbyhz
c2V1LCAxLCA0LCA4KTsKKwllbHNlCisJCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgMSwgOCwg
OCk7CiAKIAlzX2VuID0gSTkxNV9SRUFEKEdFTjExX0dUX1NMSUNFX0VOQUJMRSkgJiBHRU4xMV9H
VF9TX0VOQV9NQVNLOwogCXNzX2VuID0gfkk5MTVfUkVBRChHRU4xMV9HVF9TVUJTTElDRV9ESVNB
QkxFKTsKQEAgLTIzNiwxMSArMjMxLDEwIEBAIHN0YXRpYyB2b2lkIGdlbjEwX3NzZXVfaW5mb19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAljb25zdCBpbnQgZXVfbWFz
ayA9IDB4ZmY7CiAJdTMyIHN1YnNsaWNlX21hc2ssIGV1X2VuOwogCisJaW50ZWxfc3NldV9zZXRf
aW5mbyhzc2V1LCA2LCA0LCA4KTsKKwogCXNzZXUtPnNsaWNlX21hc2sgPSAoZnVzZTIgJiBHRU4x
MF9GMl9TX0VOQV9NQVNLKSA+PgogCQkJICAgIEdFTjEwX0YyX1NfRU5BX1NISUZUOwotCXNzZXUt
Pm1heF9zbGljZXMgPSA2OwotCXNzZXUtPm1heF9zdWJzbGljZXMgPSA0OwotCXNzZXUtPm1heF9l
dXNfcGVyX3N1YnNsaWNlID0gODsKIAogCXN1YnNsaWNlX21hc2sgPSAoMSA8PCA0KSAtIDE7CiAJ
c3Vic2xpY2VfbWFzayAmPSB+KChmdXNlMiAmIEdFTjEwX0YyX1NTX0RJU19NQVNLKSA+PgpAQCAt
MzE0LDkgKzMwOCw3IEBAIHN0YXRpYyB2b2lkIGNoZXJyeXZpZXdfc3NldV9pbmZvX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWZ1c2UgPSBJOTE1X1JFQUQoQ0hWX0ZV
U0VfR1QpOwogCiAJc3NldS0+c2xpY2VfbWFzayA9IEJJVCgwKTsKLQlzc2V1LT5tYXhfc2xpY2Vz
ID0gMTsKLQlzc2V1LT5tYXhfc3Vic2xpY2VzID0gMjsKLQlzc2V1LT5tYXhfZXVzX3Blcl9zdWJz
bGljZSA9IDg7CisJaW50ZWxfc3NldV9zZXRfaW5mbyhzc2V1LCAxLCAyLCA4KTsKIAogCWlmICgh
KGZ1c2UgJiBDSFZfRkdUX0RJU0FCTEVfU1MwKSkgewogCQl1OCBkaXNhYmxlZF9tYXNrID0KQEAg
LTM3Miw5ICszNjQsOCBAQCBzdGF0aWMgdm9pZCBnZW45X3NzZXVfaW5mb19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzc2V1LT5zbGljZV9tYXNrID0gKGZ1c2UyICYg
R0VOOF9GMl9TX0VOQV9NQVNLKSA+PiBHRU44X0YyX1NfRU5BX1NISUZUOwogCiAJLyogQlhUIGhh
cyBhIHNpbmdsZSBzbGljZSBhbmQgYXQgbW9zdCAzIHN1YnNsaWNlcy4gKi8KLQlzc2V1LT5tYXhf
c2xpY2VzID0gSVNfR0VOOV9MUChkZXZfcHJpdikgPyAxIDogMzsKLQlzc2V1LT5tYXhfc3Vic2xp
Y2VzID0gSVNfR0VOOV9MUChkZXZfcHJpdikgPyAzIDogNDsKLQlzc2V1LT5tYXhfZXVzX3Blcl9z
dWJzbGljZSA9IDg7CisJaW50ZWxfc3NldV9zZXRfaW5mbyhzc2V1LCBJU19HRU45X0xQKGRldl9w
cml2KSA/IDEgOiAzLAorCQkJICAgIElTX0dFTjlfTFAoZGV2X3ByaXYpID8gMyA6IDQsIDgpOwog
CiAJLyoKIAkgKiBUaGUgc3Vic2xpY2UgZGlzYWJsZSBmaWVsZCBpcyBnbG9iYWwsIGkuZS4gaXQg
YXBwbGllcwpAQCAtNDczLDkgKzQ2NCw3IEBAIHN0YXRpYyB2b2lkIGJyb2Fkd2VsbF9zc2V1X2lu
Zm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlmdXNlMiA9IEk5
MTVfUkVBRChHRU44X0ZVU0UyKTsKIAlzc2V1LT5zbGljZV9tYXNrID0gKGZ1c2UyICYgR0VOOF9G
Ml9TX0VOQV9NQVNLKSA+PiBHRU44X0YyX1NfRU5BX1NISUZUOwotCXNzZXUtPm1heF9zbGljZXMg
PSAzOwotCXNzZXUtPm1heF9zdWJzbGljZXMgPSAzOwotCXNzZXUtPm1heF9ldXNfcGVyX3N1YnNs
aWNlID0gODsKKwlpbnRlbF9zc2V1X3NldF9pbmZvKHNzZXUsIDMsIDMsIDgpOwogCiAJLyoKIAkg
KiBUaGUgc3Vic2xpY2UgZGlzYWJsZSBmaWVsZCBpcyBnbG9iYWwsIGkuZS4gaXQgYXBwbGllcwpA
QCAtNTc3LDkgKzU2Niw2IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlicmVhazsKIAl9CiAKLQlzc2V1LT5t
YXhfc2xpY2VzID0gaHdlaWdodDgoc3NldS0+c2xpY2VfbWFzayk7Ci0Jc3NldS0+bWF4X3N1YnNs
aWNlcyA9IGh3ZWlnaHQ4KHNzZXUtPnN1YnNsaWNlX21hc2tbMF0pOwotCiAJZnVzZTEgPSBJOTE1
X1JFQUQoSFNXX1BBVlBfRlVTRTEpOwogCXN3aXRjaCAoKGZ1c2UxICYgSFNXX0YxX0VVX0RJU19N
QVNLKSA+PiBIU1dfRjFfRVVfRElTX1NISUZUKSB7CiAJZGVmYXVsdDoKQEAgLTU5Niw3ICs1ODIs
MTAgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXNzZXUtPmV1X3Blcl9zdWJzbGljZSA9IDY7CiAJCWJyZWFr
OwogCX0KLQlzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGljZSA9IHNzZXUtPmV1X3Blcl9zdWJzbGlj
ZTsKKworCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgaHdlaWdodDgoc3NldS0+c2xpY2VfbWFz
ayksCisJCQkgICAgaHdlaWdodDgoc3NldS0+c3Vic2xpY2VfbWFza1swXSksCisJCQkgICAgc3Nl
dS0+ZXVfcGVyX3N1YnNsaWNlKTsKIAogCWZvciAocyA9IDA7IHMgPCBzc2V1LT5tYXhfc2xpY2Vz
OyBzKyspIHsKIAkJZm9yIChzcyA9IDA7IHNzIDwgc3NldS0+bWF4X3N1YnNsaWNlczsgc3MrKykg
ewotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
