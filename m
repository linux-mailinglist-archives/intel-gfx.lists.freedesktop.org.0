Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B90178F18
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 17:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F70F89FDB;
	Mon, 29 Jul 2019 15:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7449E89F43
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 15:23:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 08:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="195429044"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jul 2019 08:23:17 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TFNFE6014113; Mon, 29 Jul 2019 16:23:16 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:22:59 +0000
Message-Id: <20190729152301.22588-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190729152301.22588-1-michal.wajdeczko@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add i915 to
 i915_inject_probe_failure
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

V2l0aCBpOTE1IGFkZGVkIHRvIGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUgd2UgY2FuIHVzZSBk
ZWRpY2F0ZWQKcHJpbnRrIHdoZW4gaW5qZWN0aW5nIGFydGlmaWNpYWwgbG9hZCBmYWlsdXJlLgoK
QWxzbyBtYWtlIHRoaXMgZnVuY3Rpb24gbG9vayBsaWtlIG90aGVyIGk5MTUgZnVuY3Rpb25zIHRo
YXQgcmV0dXJuCmVycm9yIGNvZGUgYW5kIG1ha2UgaXQgbW9yZSBmbGV4aWJsZSB0byByZXR1cm4g
YW55IHByb3ZpZGVkIGVycm9yCmNvZGUgaW5zdGVhZCBvZiBwcmV2aW91c2x5IGFzc3VtZWQgLUVO
T0RFVi4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29A
aW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYyAgICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgMjcgKysr
KysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAg
ICAgICAgIHwgMTIgKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAg
ICAgICAgICAgICAgfCAxMCArKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
ICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Z0LmMg
ICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5j
ICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jICAg
ICAgICAgICAgfCAgMiArLQogOSBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAzMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25u
ZWN0b3IuYwppbmRleCBkMDE2M2Q4NmM0MmEuLmNmODgyM2NlOTYwNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jCkBAIC0xMTgsNyArMTE4LDcg
QEAgaW50IGludGVsX2Nvbm5lY3Rvcl9yZWdpc3RlcihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQogCWlmIChyZXQpCiAJCWdvdG8gZXJyOwogCi0JaWYgKGk5MTVfaW5qZWN0X3Byb2Jl
X2ZhaWx1cmUoKSkgeworCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKHRvX2k5MTUoY29u
bmVjdG9yLT5kZXYpKSkgewogCQlyZXQgPSAtRUZBVUxUOwogCQlnb3RvIGVycl9iYWNrbGlnaHQ7
CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA2NWNi
ZjFkOTExOGQuLjhiZDlhOWFkZjRhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKQEAgLTQyNiw3ICs0MjYsNyBAQCBpbnQgaW50ZWxfZW5naW5lc19pbml0X21t
aW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJV0FSTl9PTihlbmdpbmVfbWFzayAm
CiAJCUdFTk1BU0soQklUU19QRVJfVFlQRShtYXNrKSAtIDEsIEk5MTVfTlVNX0VOR0lORVMpKTsK
IAotCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKCkpCisJaWYgKGk5MTVfaW5qZWN0X3By
b2JlX2ZhaWx1cmUoaTkxNSkpCiAJCXJldHVybiAtRU5PREVWOwogCiAJZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUoaW50ZWxfZW5naW5lcyk7IGkrKykgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
aW5kZXggZjJkM2Q3NTRhZjM3Li41ZTljYjdlOTFhZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YwpAQCAtODMsMTkgKzgzLDIwIEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXI7CiAj
aWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUcpCiBzdGF0aWMgdW5zaWduZWQgaW50
IGk5MTVfcHJvYmVfZmFpbF9jb3VudDsKIAotYm9vbCBfX2k5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1
cmUoY29uc3QgY2hhciAqZnVuYywgaW50IGxpbmUpCitpbnQgX19pOTE1X2luamVjdF9sb2FkX2Vy
cm9yKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgZXJyLAorCQkJICAgICBjb25z
dCBjaGFyICpmdW5jLCBpbnQgbGluZSkKIHsKIAlpZiAoaTkxNV9wcm9iZV9mYWlsX2NvdW50ID49
IGk5MTVfbW9kcGFyYW1zLmluamVjdF9sb2FkX2ZhaWx1cmUpCi0JCXJldHVybiBmYWxzZTsKKwkJ
cmV0dXJuIDA7CiAKLQlpZiAoKytpOTE1X3Byb2JlX2ZhaWxfY291bnQgPT0gaTkxNV9tb2RwYXJh
bXMuaW5qZWN0X2xvYWRfZmFpbHVyZSkgewotCQlEUk1fSU5GTygiSW5qZWN0aW5nIGZhaWx1cmUg
YXQgY2hlY2twb2ludCAldSBbJXM6JWRdXG4iLAotCQkJIGk5MTVfbW9kcGFyYW1zLmluamVjdF9s
b2FkX2ZhaWx1cmUsIGZ1bmMsIGxpbmUpOwotCQlpOTE1X21vZHBhcmFtcy5pbmplY3RfbG9hZF9m
YWlsdXJlID0gMDsKLQkJcmV0dXJuIHRydWU7Ci0JfQorCWlmICgrK2k5MTVfcHJvYmVfZmFpbF9j
b3VudCA8IGk5MTVfbW9kcGFyYW1zLmluamVjdF9sb2FkX2ZhaWx1cmUpCisJCXJldHVybiAwOwog
Ci0JcmV0dXJuIGZhbHNlOworCV9faTkxNV9wcmludGsoaTkxNSwgS0VSTl9JTkZPLAorCQkgICAg
ICAiSW5qZWN0aW5nIGZhaWx1cmUgJWQgYXQgY2hlY2twb2ludCAldSBbJXM6JWRdXG4iLAorCQkg
ICAgICBlcnIsIGk5MTVfbW9kcGFyYW1zLmluamVjdF9sb2FkX2ZhaWx1cmUsIGZ1bmMsIGxpbmUp
OworCWk5MTVfbW9kcGFyYW1zLmluamVjdF9sb2FkX2ZhaWx1cmUgPSAwOworCXJldHVybiBlcnI7
CiB9CiAKIGJvb2wgaTkxNV9lcnJvcl9pbmplY3RlZCh2b2lkKQpAQCAtNjg3LDcgKzY4OCw3IEBA
IHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2KQogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2OwogCWludCBy
ZXQ7CiAKLQlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSgpKQorCWlmIChpOTE1X2luamVj
dF9wcm9iZV9mYWlsdXJlKGRldl9wcml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZiAoSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKSB7CkBAIC04OTQsNyArODk1LDcgQEAgc3RhdGljIGludCBpOTE1
X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
CiAJaW50IHJldCA9IDA7CiAKLQlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSgpKQorCWlm
IChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKGRldl9wcml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7
CiAKIAlpbnRlbF9kZXZpY2VfaW5mb19zdWJwbGF0Zm9ybV9pbml0KGRldl9wcml2KTsKQEAgLTk4
NSw3ICs5ODYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21taW9fcHJvYmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWludCByZXQ7CiAKLQlpZiAoaTkxNV9pbmpl
Y3RfcHJvYmVfZmFpbHVyZSgpKQorCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKGRldl9w
cml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZiAoaTkxNV9nZXRfYnJpZGdlX2RldihkZXZf
cHJpdikpCkBAIC0xNTMwLDcgKzE1MzEsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3By
b2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgcGNpX2RldiAq
cGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKIAlpbnQgcmV0OwogCi0JaWYgKGk5MTVfaW5qZWN0
X3Byb2JlX2ZhaWx1cmUoKSkKKwlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZShkZXZfcHJp
dikpCiAJCXJldHVybiAtRU5PREVWOwogCiAJaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0
KGRldl9wcml2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDU5ZDRhMTE0NjAzOS4uNmIw
NTlkNTFhYWZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEyMiwxOSArMTIyLDIxIEBA
CiAKICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVRykKIAotYm9vbCBfX2k5MTVf
aW5qZWN0X3Byb2JlX2ZhaWx1cmUoY29uc3QgY2hhciAqZnVuYywgaW50IGxpbmUpOwotI2RlZmlu
ZSBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKCkgXAotCV9faTkxNV9pbmplY3RfcHJvYmVfZmFp
bHVyZShfX2Z1bmNfXywgX19MSU5FX18pCi0KK2ludCBfX2k5MTVfaW5qZWN0X2xvYWRfZXJyb3Io
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBlcnIsCisJCQkgICAgIGNvbnN0IGNo
YXIgKmZ1bmMsIGludCBsaW5lKTsKKyNkZWZpbmUgaTkxNV9pbmplY3RfbG9hZF9lcnJvcihfaTkx
NSwgX2VycikgXAorCV9faTkxNV9pbmplY3RfbG9hZF9lcnJvcigoX2k5MTUpLCAoX2VyciksIF9f
ZnVuY19fLCBfX0xJTkVfXykKIGJvb2wgaTkxNV9lcnJvcl9pbmplY3RlZCh2b2lkKTsKIAogI2Vs
c2UKIAotI2RlZmluZSBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKCkgZmFsc2UKKyNkZWZpbmUg
aTkxNV9pbmplY3RfbG9hZF9lcnJvcihfZXJyKSAwCiAjZGVmaW5lIGk5MTVfZXJyb3JfaW5qZWN0
ZWQoKSBmYWxzZQogCiAjZW5kaWYKIAorI2RlZmluZSBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJl
KGk5MTUpIGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoKGk5MTUpLCAtRU5PREVWKQorCiAjZGVmaW5l
IGk5MTVfcHJvYmVfZXJyb3IoaTkxNSwgZm10LCAuLi4pCQkJCSAgIFwKIAlfX2k5MTVfcHJpbnRr
KGk5MTUsIGk5MTVfZXJyb3JfaW5qZWN0ZWQoKSA/IEtFUk5fREVCVUcgOiBLRVJOX0VSUiwgXAog
CQkgICAgICBmbXQsICMjX19WQV9BUkdTX18pCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCAw
MWRkMGQxZDliZjYuLjMyYjRmYTVjNTc5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0x
NTExLDE1ICsxNTExLDEzIEBAIGludCBpOTE1X2dlbV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlpZiAocmV0KQogCQlnb3RvIGVycl9ndDsKIAotCWlmIChpOTE1X2lu
amVjdF9wcm9iZV9mYWlsdXJlKCkpIHsKLQkJcmV0ID0gLUVOT0RFVjsKKwlyZXQgPSBpOTE1X2lu
amVjdF9sb2FkX2Vycm9yKGRldl9wcml2LCAtRU5PREVWKTsKKwlpZiAocmV0KQogCQlnb3RvIGVy
cl9ndDsKLQl9CiAKLQlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSgpKSB7Ci0JCXJldCA9
IC1FSU87CisJcmV0ID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihkZXZfcHJpdiwgLUVJTyk7CisJ
aWYgKHJldCkKIAkJZ290byBlcnJfZ3Q7Ci0JfQogCiAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9w
dXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCW11dGV4X3VubG9jaygmZGV2
X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMzMy
OTQ5YzIwYTI5Li4xY2EwMTBjYjgzNmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtOTU4
LDcgKzk1OCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiAJaWYgKGVycikKIAkJcmV0dXJu
IGk5MTVfZXJyb3JfaW5qZWN0ZWQoKSA/IC1FTk9ERVYgOiBlcnI7CiAKLQlpZiAoaTkxNV9pbmpl
Y3RfcHJvYmVfZmFpbHVyZSgpKSB7CisJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUodG9f
aTkxNShwY2lfZ2V0X2RydmRhdGEocGRldikpKSkgewogCQlpOTE1X3BjaV9yZW1vdmUocGRldik7
CiAJCXJldHVybiAtRU5PREVWOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d2dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Z0LmMKaW5kZXggYzY2
YjJkOGE2MjE5Li4yYjZjMDE2Mzg3YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d2dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d2dC5jCkBAIC05
NSw3ICs5NSw3IEBAIGludCBpbnRlbF9ndnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiB7CiAJaW50IHJldDsKIAotCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJl
KCkpCisJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoZGV2X3ByaXYpKQogCQlyZXR1cm4g
LUVOT0RFVjsKIAogCWlmICghaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d2dCkgewpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF91bmNvcmUuYwppbmRleCA0NzVhYjNkNGQ5MWQuLjg4ZWIzYjVjMjI2ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKQEAgLTEzMzEsNyArMTMzMSw3IEBAIHN0YXRp
YyBpbnQgX19md19kb21haW5faW5pdChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJR0VN
X0JVR19PTihkb21haW5faWQgPj0gRldfRE9NQUlOX0lEX0NPVU5UKTsKIAlHRU1fQlVHX09OKHVu
Y29yZS0+ZndfZG9tYWluW2RvbWFpbl9pZF0pOwogCi0JaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2Zh
aWx1cmUoKSkKKwlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSh1bmNvcmUtPmk5MTUpKQog
CQlyZXR1cm4gLUVOT01FTTsKIAogCWQgPSBremFsbG9jKHNpemVvZigqZCksIEdGUF9LRVJORUwp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKaW5kZXggMGU4NmE5ZTg1YjQ5Li5lMTczYThl
NjFiZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwpAQCAtMTc3LDcgKzE3Nyw3IEBA
IGludCBpbnRlbF93b3BjbV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCiAKIAlHRU1f
QlVHX09OKCF3b3BjbS0+c2l6ZSk7CiAKLQlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSgp
KQorCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKGk5MTUpKQogCQlyZXR1cm4gLUUyQklH
OwogCiAJaWYgKGd1Y19md19zaXplID49IHdvcGNtLT5zaXplKSB7Ci0tIAoyLjE5LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
