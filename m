Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A69F349BD9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B7736EE54;
	Thu, 25 Mar 2021 21:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D583E6EE53
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:19 +0000 (UTC)
IronPort-SDR: Kqp7GvaS/9sChbv2/NH7Me6DWI+Zbn79My2nRjx2wwiUz5gGVNU8ht3BLPLz1noa1lUPfanRBV
 IKE97GVMrfvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005011"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005011"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:19 -0700
IronPort-SDR: hED93JAJ6g5YMbCdPoiVUsZt8aOU2jkZOu0YJSKoXcDXOPojff7YujrCPuIR1aG/P+q3Mrv9EA
 QORGrPBNJT7g==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235643"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:49 +0200
Message-Id: <20210325214808.2071517-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/25] drm/i915/intel_fb: Pull FB plane
 functions from intel_display_types.h
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnQgY29sbGVjdGluZyBhbGwgdGhlIEZCIHBsYW5lIHJlbGF0ZWQgZnVuY3Rpb25zIGludG8g
YSBuZXcgaW50ZWxfZmIuYwpmaWxlLgoKdjI6IERyb3AgZGlzcGxheS8gcGFydCBvZiBoZWFkZXIg
aW5jbHVkZXMuIChWaWxsZSkKClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgIDEgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAg
IHwgMTkgLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
Yi5jICAgICAgIHwgMjggKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYi5oICAgICAgIHwgMTcgKysrKysrKysrKysKIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyAgICB8ICAxICsKIDYgZmlsZXMgY2hhbmdlZCwg
NDggaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5oCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZQppbmRleCAxNGYxYWIzOTlhZDA4Li5mY2FhZGQ1MjgxM2UzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZQpAQCAtMjA4LDYgKzIwOCw3IEBAIGk5MTUteSArPSBcCiAJZGlzcGxheS9pbnRlbF9kcGxsLm8g
XAogCWRpc3BsYXkvaW50ZWxfZHBsbF9tZ3IubyBcCiAJZGlzcGxheS9pbnRlbF9kc2IubyBcCisJ
ZGlzcGxheS9pbnRlbF9mYi5vIFwKIAlkaXNwbGF5L2ludGVsX2ZiYy5vIFwKIAlkaXNwbGF5L2lu
dGVsX2ZkaS5vIFwKIAlkaXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4ubyBcCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGMwNmY1MWNmM2QwMmQu
LmQ4NzcwZTQ3MWRjYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCkBAIC01NCw2ICs1NCw3IEBACiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcGxs
X21nci5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHNpLmgiCiAjaW5jbHVkZSAiZGlzcGxh
eS9pbnRlbF9kdm8uaCIKKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2ZiLmgiCiAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9nbWJ1cy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfaGRtaS5oIgog
I2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfbHZkcy5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA5NDZlMDMwMzEzYTg2Li44
MDk4M2NmZTlkM2IwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTk5NSwxNCArMTk5NSw2IEBAIHN0YXRpYyBpbmxpbmUg
Ym9vbCBpc19jY3NfbW9kaWZpZXIodTY0IG1vZGlmaWVyKQogCSAgICAgICBtb2RpZmllciA9PSBJ
OTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOwogfQogCi1zdGF0aWMgaW5saW5lIGJvb2wgaXNf
Y2NzX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgcGxhbmUpCi17
Ci0JaWYgKCFpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSkKLQkJcmV0dXJuIGZhbHNlOwot
Ci0JcmV0dXJuIHBsYW5lID49IGZiLT5mb3JtYXQtPm51bV9wbGFuZXMgLyAyOwotfQotCiBzdGF0
aWMgaW5saW5lIGJvb2wgaXNfZ2VuMTJfY2NzX21vZGlmaWVyKHU2NCBtb2RpZmllcikKIHsKIAly
ZXR1cm4gbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTIHx8
CkBAIC0yMDEwLDE1ICsyMDAyLDQgQEAgc3RhdGljIGlubGluZSBib29sIGlzX2dlbjEyX2Njc19t
b2RpZmllcih1NjQgbW9kaWZpZXIpCiAJICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01P
RF9ZX1RJTEVEX0dFTjEyX01DX0NDUzsKIH0KIAotc3RhdGljIGlubGluZSBib29sIGlzX2dlbjEy
X2Njc19wbGFuZShjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHBsYW5lKQot
ewotCXJldHVybiBpc19nZW4xMl9jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSAmJiBpc19jY3Nf
cGxhbmUoZmIsIHBsYW5lKTsKLX0KLQotc3RhdGljIGlubGluZSBib29sIGlzX2dlbjEyX2Njc19j
Y19wbGFuZShjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHBsYW5lKQotewot
CXJldHVybiBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNf
Q0NTX0NDICYmCi0JICAgICAgIHBsYW5lID09IDI7Ci19Ci0KICNlbmRpZiAvKiAgX19JTlRFTF9E
SVNQTEFZX1RZUEVTX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5j
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAuLmZmOTA5NDc5M2VlOGUK
LS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
LmMKQEAgLTAsMCArMSwyOCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoK
KyAqIENvcHlyaWdodCDCqSAyMDIxIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUg
PGRybS9kcm1fZnJhbWVidWZmZXIuaD4KKworI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMu
aCIKKyNpbmNsdWRlICJpbnRlbF9mYi5oIgorCitib29sIGlzX2Njc19wbGFuZShjb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHBsYW5lKQoreworCWlmICghaXNfY2NzX21vZGlm
aWVyKGZiLT5tb2RpZmllcikpCisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiBwbGFuZSA+PSBm
Yi0+Zm9ybWF0LT5udW1fcGxhbmVzIC8gMjsKK30KKworYm9vbCBpc19nZW4xMl9jY3NfcGxhbmUo
Y29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBwbGFuZSkKK3sKKwlyZXR1cm4g
aXNfZ2VuMTJfY2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikgJiYgaXNfY2NzX3BsYW5lKGZiLCBw
bGFuZSk7Cit9CisKK2Jvb2wgaXNfZ2VuMTJfY2NzX2NjX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLCBpbnQgcGxhbmUpCit7CisJcmV0dXJuIGZiLT5tb2RpZmllciA9PSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgJiYKKwkgICAgICAgcGxhbmUg
PT0gMjsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuaApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAwLi42NGU2YTI1MjEzMjAzCi0tLSAvZGV2L251
bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5oCkBAIC0wLDAg
KzEsMTcgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5
cmlnaHQgwqkgMjAyMC0yMDIxIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lO
VEVMX0ZCX0hfXworI2RlZmluZSBfX0lOVEVMX0ZCX0hfXworCisjaW5jbHVkZSA8bGludXgvdHlw
ZXMuaD4KKworc3RydWN0IGRybV9mcmFtZWJ1ZmZlcjsKKworYm9vbCBpc19jY3NfcGxhbmUoY29u
c3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBwbGFuZSk7Citib29sIGlzX2dlbjEy
X2Njc19wbGFuZShjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHBsYW5lKTsK
K2Jvb2wgaXNfZ2VuMTJfY2NzX2NjX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
KmZiLCBpbnQgcGxhbmUpOworCisjZW5kaWYgLyogX19JTlRFTF9GQl9IX18gKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKaW5kZXgg
YzZkN2I2YzA1NGI1Ni4uOTRlOTViZjE0ZTg4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKQEAgLTExLDYgKzExLDcgQEAKICNp
bmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2F0b21pY19wbGFuZS5oIgogI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKKyNpbmNsdWRlICJpbnRlbF9mYi5oIgogI2lu
Y2x1ZGUgImludGVsX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiCiAjaW5jbHVkZSAiaW50
ZWxfc3ByaXRlLmgiCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
