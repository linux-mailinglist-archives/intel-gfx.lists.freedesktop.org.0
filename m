Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF482097A1
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9116E8E9;
	Thu, 25 Jun 2020 00:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E7B6E8E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:27:41 +0000 (UTC)
IronPort-SDR: N/BVGNEqdTKwzZNhvt4wBfJoGE7PRhCoKeTW74d50t042uYe4iaA5wXGQK9wggeTdbj21dV+SM
 Tf26HFE/hspw==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="209819698"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="209819698"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:27:40 -0700
IronPort-SDR: lk5/wWZ6kbLRdnP4HBslw3kQ4cTR1zFbXwxxgl1FWw1DFgJl8P20tCGVcZyf47ZksR/cRxgyeZ
 7F2q7CsredcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="294241715"
Received: from thivyajx-mobl.gar.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.155.111])
 by orsmga007.jf.intel.com with ESMTP; 24 Jun 2020 17:27:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:29:05 -0700
Message-Id: <20200625002906.116594-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200625002906.116594-1-jose.souza@intel.com>
References: <20200625002906.116594-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: Implement HOBL
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

SG91cnMgT2YgQmF0dGVyeSBMaWZlIGlzIGEgbmV3IEdFTjEyKyBwb3dlci1zYXZpbmcgZmVhdHVy
ZSB0aGF0IGFsbG93cwpzdXBwb3J0ZWQgbW90aGVyYm9hcmRzIHRvIHVzZSBhIHNwZWNpYWwgdm9s
dGFnZSBzd2luZyB0YWJsZSBmb3IgZURQCnBhbmVscyB0aGF0IHVzZXMgbGVzcyBwb3dlci4KClNv
IGhlcmUgaWYgc3VwcG9ydGVkIGJ5IEhXLCBPRU0gd2lsbCBzZXQgaXQgaW4gVkJUIGFuZCBpOTE1
IHdpbGwgdHJ5CnRvIHRyYWluIGxpbmsgd2l0aCBIT0JMIHZzd2luZyB0YWJsZSBpZiBsaW5rIHRy
YWluaW5nIGZhaWxzIGl0IGZhbGwKYmFjayB0byB0aGUgb3JpZ2luYWwgdGFibGUuCgpKdXN0IG5v
dCBzdXJlIGlmIERQIGNvbXBsaWFuY2Ugc2hvdWxkIGFsc28gdXNlIHRoaXMgbmV3IHZvbHRhZ2Ug
c3dpbmcKdGFibGUgdG9vLCBjY2VkIHNvbWUgZm9sa3MgdGhhdCB3b3JrZWQgaW4gRFAgY29tcGxp
YW5jZS4KCnYzOgotIHJlbW92ZWQgYSBmZXcgcGFyYW1ldGVycyBvZiBpY2xfZGRpX2NvbWJvX3Zz
d2luZ19wcm9ncmFtKCkgdGhhdApjYW4gYmUgdGFrZW4gZnJvbSBlbmNvZGVyCgpCU3BlYzogNDky
OTEKQlNwZWM6IDQ5Mzk5CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+CkNj
OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCA1MSArKysrKysrKysr
KysrKysrKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAg
fCAgMiArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAy
MCArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAg
IHwgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwg
IDIgKwogNSBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDg4NGI1MDdjNWY1
NS4uNTYyMTZhYTBkNzRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKQEAgLTcwNiw2ICs3MDYsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90
cmFucyB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMltdID0KIAl7IDB4Niwg
MHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLwogfTsK
IAorc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyB0Z2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZWRwX2hicjJfaG9ibFtdID0geworCXsgMHg2LCAweDdGLCAweDNGLCAw
eDAwLCAweDAwIH0KK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqCiBi
ZHdfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBp
bnQgKm5fZW50cmllcykKIHsKQEAgLTIzMzEsMTQgKzIzMzUsNTIgQEAgc3RhdGljIHZvaWQgY25s
X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIENOTF9QT1JUX1RYX0RXNV9HUlAocG9ydCksIHZhbCk7CiB9
CiAKLXN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCQl1MzIgbGV2ZWwsIGVudW0gcGh5IHBoeSwgaW50
IHR5cGUsCi0JCQkJCWludCByYXRlKQorLyoKKyAqIElmIHN1cHBvcnRlZCByZXR1cm4gSE9CTCB2
c3dpbmcgdGFibGUgYW5kIHNldCByZWdpc3RlcnMgdG8gZW5hYmxlIEhPQkwKKyAqIG90aGVyd2lz
ZSByZXR1cm5zIE5VTEwgYW5kIHVuc2V0IHJlZ2lzdGVycyB0byBlbmFibGUgSE9CTC4KKyAqLwor
c3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCitob2JsX2dldF9jb21ib19i
dWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJIHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsCisJCQkgdTMyIGxldmVs
LCBpbnQgKm5fZW50cmllcykKIHsKKwljb25zdCB1MzIgaG9ibF9lbiA9IEVEUDRLMktfTU9ERV9P
VlJEX0VOIHwgRURQNEsyS19NT0RFX09WUkRfT1BUSU1JWkVEOworCWVudW0gcGh5IHBoeSA9IGlu
dGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKKwlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwOworCisJaWYgKCFIQVNfSE9CTChkZXZfcHJpdikgfHwgdHlwZSAhPSBJTlRF
TF9PVVRQVVRfRURQKQorCQlyZXR1cm4gTlVMTDsKKworCWludGVsX2RwID0gZW5jX3RvX2ludGVs
X2RwKGVuY29kZXIpOworCWlmICghaW50ZWxfZHAtPnRyeV9ob2JsIHx8IHJhdGUgPiA1NDAwMDAp
IHsKKwkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBJQ0xfUE9SVF9DTF9EVzEwKHBoeSksIGhvYmxf
ZW4sIDApOworCQlyZXR1cm4gTlVMTDsKKwl9CisKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwgIkVuYWJsaW5nIEhPQkwgaW4gUEhZICVjXG4iLCBwaHlfbmFtZShwaHkpKTsKKwlkcm1fV0FS
Tl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+IDApOworCisJaW50ZWxfZGVfcm13KGRl
dl9wcml2LCBJQ0xfUE9SVF9DTF9EVzEwKHBoeSksIGhvYmxfZW4sIGhvYmxfZW4pOworCS8qIFNh
bWUgdGFibGUgYXBwbGllcyB0byBUR0wsIFJLTCBhbmQgREcxICovCisJKm5fZW50cmllcyA9IEFS
UkFZX1NJWkUodGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyX2hvYmwpOwor
CXJldHVybiB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjJfaG9ibDsKK30K
Kworc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKKwkJCQkJIHUzMiBsZXZlbCwgZW51bSBpbnRlbF9vdXRwdXRfdHlw
ZSB0eXBlLAorCQkJCQkgaW50IHJhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOwogCWNvbnN0IHN0cnVjdCBj
bmxfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9IE5VTEw7CiAJdTMyIG5fZW50cmll
cywgdmFsOwogCWludCBsbjsKIAorCWRkaV90cmFuc2xhdGlvbnMgPSBob2JsX2dldF9jb21ib19i
dWZfdHJhbnMoZGV2X3ByaXYsIGVuY29kZXIsIHR5cGUsCisJCQkJCQkgICAgcmF0ZSwgbGV2ZWws
ICZuX2VudHJpZXMpOworCWlmIChkZGlfdHJhbnNsYXRpb25zKQorCQlnb3RvIHRhYmxlX2ZvdW5k
OworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCiAJCWRkaV90cmFuc2xhdGlvbnMg
PSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgdHlwZSwgcmF0ZSwKIAkJCQkJCQkg
ICAmbl9lbnRyaWVzKTsKQEAgLTIzNTEsNiArMjM5Myw3IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlf
Y29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CWlmICghZGRpX3RyYW5zbGF0aW9ucykKIAkJcmV0dXJuOwogCit0YWJsZV9mb3VuZDoKIAlpZiAo
bGV2ZWwgPj0gbl9lbnRyaWVzKSB7CiAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAogCQkJ
ICAgICJEREkgdHJhbnNsYXRpb24gbm90IGZvdW5kIGZvciBsZXZlbCAlZC4gVXNpbmcgJWQgaW5z
dGVhZC4iLApAQCAtMjQ1OCw3ICsyNTAxLDcgQEAgc3RhdGljIHZvaWQgaWNsX2NvbWJvX3BoeV9k
ZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBJQ0xfUE9SVF9UWF9EVzVfR1JQKHBoeSksIHZhbCk7CiAKIAkv
KiA1LiBQcm9ncmFtIHN3aW5nIGFuZCBkZS1lbXBoYXNpcyAqLwotCWljbF9kZGlfY29tYm9fdnN3
aW5nX3Byb2dyYW0oZGV2X3ByaXYsIGxldmVsLCBwaHksIHR5cGUsIHJhdGUpOworCWljbF9kZGlf
Y29tYm9fdnN3aW5nX3Byb2dyYW0oZW5jb2RlciwgbGV2ZWwsIHR5cGUsIHJhdGUpOwogCiAJLyog
Ni4gU2V0IHRyYWluaW5nIGVuYWJsZSB0byB0cmlnZ2VyIHVwZGF0ZSAqLwogCXZhbCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXNV9MTjAocGh5KSk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDRi
MGFhYTMwODFjOS4uZjg5NDNiNjc4MTlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTM3NSw2ICsxMzc1LDggQEAgc3Ry
dWN0IGludGVsX2RwIHsKIAogCS8qIERpc3BsYXkgc3RyZWFtIGNvbXByZXNzaW9uIHRlc3Rpbmcg
Ki8KIAlib29sIGZvcmNlX2RzY19lbjsKKworCWJvb2wgdHJ5X2hvYmw7CiB9OwogCiBlbnVtIGxz
cGNvbl92ZW5kb3IgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRleCBiOWU0ZWUyZGJkZGMuLjg4ZjM2NmJiMjhkNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X3RyYWluaW5nLmMKQEAgLTUyLDEyICs1MiwyNCBAQCBzdGF0aWMgdTggZHBfdm9sdGFnZV9tYXgo
dTggcHJlZW1waCkKIHZvaWQgaW50ZWxfZHBfZ2V0X2FkanVzdF90cmFpbihzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLAogCQkJICAgICAgIGNvbnN0IHU4IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RB
VFVTX1NJWkVdKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3Rv
X2k5MTUoaW50ZWxfZHApOwogCXU4IHYgPSAwOwogCXU4IHAgPSAwOwogCWludCBsYW5lOwogCXU4
IHZvbHRhZ2VfbWF4OwogCXU4IHByZWVtcGhfbWF4OwogCisJaWYgKGludGVsX2RwLT50cnlfaG9i
bCkgeworCQkvKgorCQkgKiBEbyBub3QgYWRqdXN0LCB0cnkgbm93IHdpdGggdGhlIHJlZ3VsYXIg
dGFibGUgdXNpbmcgVlN3aW5nIDAKKwkJICogYW5kIHByZS1lbXAgMAorCQkgKi8KKwkJaW50ZWxf
ZHAtPnRyeV9ob2JsID0gZmFsc2U7CisJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiSE9C
TCB2c3dpbmcgdGFibGUgZmFpbGVkIGxpbmsgIgorCQkJICAgICJ0cmFpbmluZywgc3dpdGNoaW5n
IGJhY2sgdG8gcmVndWxhciB0YWJsZVxuIik7CisJCXJldHVybjsKKwl9CisKIAlmb3IgKGxhbmUg
PSAwOyBsYW5lIDwgaW50ZWxfZHAtPmxhbmVfY291bnQ7IGxhbmUrKykgewogCQl2ID0gbWF4KHYs
IGRybV9kcF9nZXRfYWRqdXN0X3JlcXVlc3Rfdm9sdGFnZShsaW5rX3N0YXR1cywgbGFuZSkpOwog
CQlwID0gbWF4KHAsIGRybV9kcF9nZXRfYWRqdXN0X3JlcXVlc3RfcHJlX2VtcGhhc2lzKGxpbmtf
c3RhdHVzLCBsYW5lKSk7CkBAIC0xMDMsOSArMTE1LDEzIEBAIGludGVsX2RwX3NldF9saW5rX3Ry
YWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB9CiAKIHN0YXRpYyBib29sCi1pbnRlbF9k
cF9yZXNldF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQl1OCBkcF90
cmFpbl9wYXQpCitpbnRlbF9kcF9yZXNldF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsIHU4IGRwX3RyYWluX3BhdCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKKworCWlmIChpbnRlbF9kcF9pc19lZHAoaW50
ZWxfZHApICYmIGRldl9wcml2LT52YnQuZWRwLmhvYmwpCisJCWludGVsX2RwLT50cnlfaG9ibCA9
IHRydWU7CisKIAltZW1zZXQoaW50ZWxfZHAtPnRyYWluX3NldCwgMCwgc2l6ZW9mKGludGVsX2Rw
LT50cmFpbl9zZXQpKTsKIAlpbnRlbF9kcF9zZXRfc2lnbmFsX2xldmVscyhpbnRlbF9kcCk7CiAJ
cmV0dXJuIGludGVsX2RwX3NldF9saW5rX3RyYWluKGludGVsX2RwLCBkcF90cmFpbl9wYXQpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMTY2OTJjOTQzNTFhLi45ODRkYTAzNDIxYzMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTY5Nyw2ICsxNjk3LDggQEAgSVNfU1VCUExBVEZP
Uk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIElOVEVMX0RJ
U1BMQVlfRU5BQkxFRChkZXZfcHJpdikgXAogCShkcm1fV0FSTl9PTigmKGRldl9wcml2KS0+ZHJt
LCAhSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSwgIShkZXZfcHJpdiktPnBhcmFtcy5kaXNhYmxlX2Rp
c3BsYXkpCiAKKyNkZWZpbmUgSEFTX0hPQkwoZGV2X3ByaXYpIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKQorCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdnRkX2FjdGl2ZSh2b2lkKQogewog
I2lmZGVmIENPTkZJR19JTlRFTF9JT01NVQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZjA5
MTIwY2FjODlhLi42YmU1MDg3YjVkOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTg5
OCw2ICsxODk4LDggQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkx
NV9yZWdfdCByZWcpCiAjZGVmaW5lICBQV1JfRE9XTl9MTl8zXzFfMAkJKDB4YiA8PCA0KQogI2Rl
ZmluZSAgUFdSX0RPV05fTE5fTUFTSwkJKDB4ZiA8PCA0KQogI2RlZmluZSAgUFdSX0RPV05fTE5f
U0hJRlQJCTQKKyNkZWZpbmUgIEVEUDRLMktfTU9ERV9PVlJEX0VOCQkoMSA8PCAzKQorI2RlZmlu
ZSAgRURQNEsyS19NT0RFX09WUkRfT1BUSU1JWkVECSgxIDw8IDIpCiAKICNkZWZpbmUgSUNMX1BP
UlRfQ0xfRFcxMihwaHkpCQlfTU1JTyhfSUNMX1BPUlRfQ0xfRFcoMTIsIHBoeSkpCiAjZGVmaW5l
ICAgSUNMX0xBTkVfRU5BQkxFX0FVWAkJKDEgPDwgMCkKLS0gCjIuMjcuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
