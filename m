Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC995AC63C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A0589DE3;
	Sat,  7 Sep 2019 11:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1D389DE3
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 11:15:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 04:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; d="scan'208";a="177883130"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 04:15:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 16:37:26 +0530
Message-Id: <20190907110735.10302-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190907110735.10302-1-animesh.manna@intel.com>
References: <20190907110735.10302-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 02/11] drm/i915/dsb: DSB context creation.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGEgZnVuY3Rpb24sIHdoaWNoIHdpbGwgaW50ZXJuYWxseSBnZXQgdGhl
IGdlbSBidWZmZXIKZm9yIERTQiBlbmdpbmUuIFRoZSBHRU0gYnVmZmVyIGlzIGZyb20gZ2xvYmFs
IEdUVCwgYW5kIGlzIG1hcHBlZCBpbnRvCkNQVSBkb21haW4sIGNvbnRhaW5zIHRoZSBkYXRhICsg
b3Bjb2RlIHRvIGJlIGZlZWQgdG8gRFNCIGVuZ2luZS4KCnYxOiBJbml0aWFsIHZlcnNpb24uCgp2
MjoKLSByZW1vdmVkIHNvbWUgdW53YW50ZWQgY29kZS4gKENocmlzKQotIFVzZWQgaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9pbnRlcm5hbCBpbnN0ZWFkIG9mIF9zaG1lbS4gKENocmlzKQotIGNtZF9i
dWZfdGFpbCByZW1vdmVkIGFuZCBjYW4gYmUgZGVyaXZlZCB0aHJvdWdoIHZtYSBvYmplY3QuIChD
aHJpcykKCnYzOiB2bWEgcmVhbGVhc2VkIGlmIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKCkgZmFp
bGVkLiAoU2hhc2hhbmspCgp2NDogZm9yIHNpbXBsaWZpY2F0aW9uIGFuZCBiYXNlZCBvbiBjdXJy
ZW50IHVzYWdlIGFkZGVkIHNpbmdsZSBkc2IKb2JqZWN0IGluIGludGVsX2NydGMuIChTaGFzaGFu
aykKCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBNaWNoZWwgVGhpZXJy
eSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6
IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDEgKwogLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDMgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyAgICAgIHwgNzAgKysrKysrKysrKysrKysrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCAgICAgIHwgMzAgKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxICsK
IDUgZmlsZXMgY2hhbmdlZCwgMTA1IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUKaW5kZXggNjU4YjkzMGQzNGE4Li42MzEzZTdiNGJkNzggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCkBAIC0xNzIsNiArMTcyLDcgQEAgaTkxNS15ICs9IFwKIAlkaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIubyBcCiAJZGlzcGxheS9pbnRlbF9kcGlvX3BoeS5vIFwKIAlkaXNwbGF5L2ludGVs
X2RwbGxfbWdyLm8gXAorCWRpc3BsYXkvaW50ZWxfZHNiLm8gXAogCWRpc3BsYXkvaW50ZWxfZmJj
Lm8gXAogCWRpc3BsYXkvaW50ZWxfZmlmb191bmRlcnJ1bi5vIFwKIAlkaXNwbGF5L2ludGVsX2Zy
b250YnVmZmVyLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAppbmRleCBkNWNjNGI4MTBkOWUuLjQ5YzkwMmIwMDQ4NCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
QEAgLTEwMzMsNiArMTAzMyw5IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsKIAogCS8qIHNjYWxlcnMg
YXZhaWxhYmxlIG9uIHRoaXMgY3J0YyAqLwogCWludCBudW1fc2NhbGVyczsKKworCS8qIHBlciBw
aXBlIERTQiByZWxhdGVkIGluZm8gKi8KKwlzdHJ1Y3QgaW50ZWxfZHNiIGRzYjsKIH07CiAKIHN0
cnVjdCBpbnRlbF9wbGFuZSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmNiYTVjOGQzNzY1OQot
LS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKQEAgLTAsMCArMSw3MCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoK
KyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKgorICovCisKKyNpbmNs
dWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKKworI2Rl
ZmluZSBEU0JfQlVGX1NJWkUgICAgKDIgKiBQQUdFX1NJWkUpCisKK3N0cnVjdCBpbnRlbF9kc2Ig
KgoraW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KGRldik7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsK
KwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAmY3J0Yy0+
ZHNiOworCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOworCisJaWYgKCghSEFTX0RTQihpOTE1KSkg
fHwgZHNiLT5jbWRfYnVmKQorCQlyZXR1cm4gZHNiOworCisJZHNiLT5pZCA9IERTQjE7CisJd2Fr
ZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKKworCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsKKwlp
ZiAoSVNfRVJSKG9iaikpCisJCWdvdG8gZXJyOworCisJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CisJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwg
MCwgMCwgUElOX01BUFBBQkxFKTsKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOworCWlmIChJU19FUlIodm1hKSkgeworCQlEUk1fRVJST1IoIlZtYSBjcmVhdGlvbiBmYWls
ZWQuXG4iKTsKKwkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCQlnb3RvIGVycjsKKwl9CisK
Kwlkc2ItPmNtZF9idWYgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9N
QVBfV0MpOworCWlmIChJU19FUlIoZHNiLT5jbWRfYnVmKSkgeworCQlEUk1fRVJST1IoIkNvbW1h
bmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZC5cbiIpOworCQlpOTE1X3ZtYV91bnBpbl9hbmRfcmVs
ZWFzZSgmdm1hLCAwKTsKKwkJZHNiLT5jbWRfYnVmID0gTlVMTDsKKwkJZ290byBlcnI7CisJfQor
CWRzYi0+dm1hID0gdm1hOworCitlcnI6CisJaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1
bnRpbWVfcG0sIHdha2VyZWYpOworCXJldHVybiBkc2I7Cit9CisKK3ZvaWQgaW50ZWxfZHNiX3B1
dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBj
b250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisKKwlpZiAoIWRzYikKKwkJ
cmV0dXJuOworCisJaWYgKGRzYi0+Y21kX2J1ZikgeworCQltdXRleF9sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKKwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChkc2ItPnZtYS0+b2Jq
KTsKKwkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCAwKTsKKwkJZHNiLT5j
bWRfYnVmID0gTlVMTDsKKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
Kwl9Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjI3ZWI2OGViNTM5MgotLS0gL2Rldi9udWxs
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKQEAgLTAsMCAr
MSwzMCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdo
dCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfSU5URUxfRFNCX0gK
KyNkZWZpbmUgX0lOVEVMX0RTQl9ICisKK3N0cnVjdCBpbnRlbF9jcnRjOworc3RydWN0IGk5MTVf
dm1hOworCitlbnVtIGRzYl9pZCB7CisJSU5WQUxJRF9EU0IgPSAtMSwKKwlEU0IxLAorCURTQjIs
CisJRFNCMywKKwlNQVhfRFNCX1BFUl9QSVBFCit9OworCitzdHJ1Y3QgaW50ZWxfZHNiIHsKKwll
bnVtIGRzYl9pZCBpZDsKKwl1MzIgKmNtZF9idWY7CisJc3RydWN0IGk5MTVfdm1hICp2bWE7Cit9
OworCitzdHJ1Y3QgaW50ZWxfZHNiICoKK2ludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMg
KmNydGMpOwordm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7CisKKyNl
bmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggODA0YmZlN2FlYzJiLi43YWExMWUzZGQ0
MTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNjcsNiArNjcsNyBAQAogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZGlzcGxheS5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCIKKyNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2RzYi5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRidWZm
ZXIuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2dtYnVzLmgiCiAjaW5jbHVkZSAiZGlzcGxh
eS9pbnRlbF9vcHJlZ2lvbi5oIgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
