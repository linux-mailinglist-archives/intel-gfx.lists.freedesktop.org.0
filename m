Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E49221539C9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483646F94E;
	Wed,  5 Feb 2020 20:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F2A6F95C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 20:56:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 12:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="431994276"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.242])
 by fmsmga006.fm.intel.com with ESMTP; 05 Feb 2020 12:56:52 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 12:56:47 -0800
Message-Id: <20200205205647.64902-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/ehl: Add HBR2 and HBR3 voltage
 swing table
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

RUhMIG9ubHkgZGlmZmVycyBmcm9tIElDTCBvbiB0aGUgdm9sdGFnZSBzd2luZyB0YWJsZSBmb3Ig
SEJSMiBhbmQKSEJSMy4KCkJTcGVjOiAyMTI1NwpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDMz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwppbmRleCAxYWI2MzhlMTcwNDYuLjMwNjBjYzM3ZTFkMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01NjgsNiArNTY4LDIwIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgaWNsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2hkbWlbXSA9IHsKIAl7IDB4NiwgMHg3RiwgMHgzNSwgMHgwMCwgMHgwQSB9LAkv
KiA2MDAgICA4NTAgICAgICAzLjAgICAqLwogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxf
ZGRpX2J1Zl90cmFucyBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzW10g
PSB7CisJCQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLworCXsgMHhBLCAweDMzLCAweDNG
LCAweDAwLCAweDAwIH0sCS8qIDM1MCAgIDM1MCAgICAgIDAuMCAgICovCisJeyAweEEsIDB4NDcs
IDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogMzUwICAgNTAwICAgICAgMy4xICAgKi8KKwl7IDB4Qywg
MHg2NCwgMHgzMCwgMHgwMCwgMHgwRiB9LAkvKiAzNTAgICA3MDAgICAgICA2LjAgICAqLworCXsg
MHg2LCAweDdGLCAweDJDLCAweDAwLCAweDEzIH0sCS8qIDM1MCAgIDkwMCAgICAgIDguMiAgICov
CisJeyAweEEsIDB4NDYsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNTAwICAgNTAwICAgICAgMC4w
ICAgKi8KKwl7IDB4QywgMHg2NCwgMHgzNiwgMHgwMCwgMHgwOSB9LAkvKiA1MDAgICA3MDAgICAg
ICAyLjkgICAqLworCXsgMHg2LCAweDdGLCAweDMwLCAweDAwLCAweDBGIH0sCS8qIDUwMCAgIDkw
MCAgICAgIDUuMSAgICovCisJeyAweEMsIDB4NjEsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNjUw
ICAgNzAwICAgICAgMC42ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzNywgMHgwMCwgMHgwOCB9LAkv
KiA2MDAgICA5MDAgICAgICAzLjUgICAqLworCXsgMHg2LCAweDdGLCAweDNGLCAweDAwLCAweDAw
IH0sCS8qIDkwMCAgIDkwMCAgICAgIDAuMCAgICovCit9OworCiBzdHJ1Y3QgaWNsX21nX3BoeV9k
ZGlfYnVmX3RyYW5zIHsKIAl1MzIgY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzVfMDsKIAl1MzIgY3Jp
X3R4ZGVlbXBoX292ZXJyaWRlXzExXzY7CkBAIC05MjksNiArOTQzLDE4IEBAIGljbF9nZXRfY29t
Ym9fYnVmX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IHR5cGUs
IGludCByYXRlLAogCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJy
MjsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCitlaGxfZ2V0
X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0
eXBlLCBpbnQgcmF0ZSwKKwkJCWludCAqbl9lbnRyaWVzKQoreworCWlmICh0eXBlID09IElOVEVM
X09VVFBVVF9EUCAmJiByYXRlID4gMjcwMDAwKSB7CisJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpF
KGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oYnIyX2hicjMpOworCQlyZXR1cm4gZWhs
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hicjJfaGJyMzsKKwl9CisKKwlyZXR1cm4gaWNs
X2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUsIHJhdGUsIG5fZW50cmllcyk7Cit9
CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgKgogdGdsX2dldF9jb21i
b19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwg
aW50IHJhdGUsCiAJCQlpbnQgKm5fZW50cmllcykKQEAgLTI0MTUsNyArMjQ0MSwxMCBAQCB1OCBp
bnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJ
CWVsc2UKIAkJCW5fZW50cmllcyA9IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5z
KTsKIAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEpIHsKLQkJaWYgKGludGVs
X3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKKwkJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9w
cml2KSkKKwkJCWVobF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCBlbmNvZGVyLT50eXBl
LAorCQkJCQkJaW50ZWxfZHAtPmxpbmtfcmF0ZSwgJm5fZW50cmllcyk7CisJCWVsc2UgaWYgKGlu
dGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKIAkJCWljbF9nZXRfY29tYm9fYnVmX3Ry
YW5zKGRldl9wcml2LCBlbmNvZGVyLT50eXBlLAogCQkJCQkJaW50ZWxfZHAtPmxpbmtfcmF0ZSwg
Jm5fZW50cmllcyk7CiAJCWVsc2UKQEAgLTI2MDgsNiArMjYzNyw5IEBAIHN0YXRpYyB2b2lkIGlj
bF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQogCQlkZGlfdHJhbnNsYXRpb25z
ID0gdGdsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUsIHJhdGUsCiAJCQkJCQkJ
ICAgJm5fZW50cmllcyk7CisJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQorCQlk
ZGlfdHJhbnNsYXRpb25zID0gZWhsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUs
IHJhdGUsCisJCQkJCQkJICAgJm5fZW50cmllcyk7CiAJZWxzZQogCQlkZGlfdHJhbnNsYXRpb25z
ID0gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUsIHJhdGUsCiAJCQkJCQkJ
ICAgJm5fZW50cmllcyk7Ci0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
