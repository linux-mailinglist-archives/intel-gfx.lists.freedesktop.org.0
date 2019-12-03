Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657BE10F4FA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 03:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CED906E375;
	Tue,  3 Dec 2019 02:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F37476E36F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 02:31:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 18:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,271,1571727600"; d="scan'208";a="213263407"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.52])
 by orsmga003.jf.intel.com with ESMTP; 02 Dec 2019 18:31:13 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:31:09 -0800
Message-Id: <20191203023110.488972-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Define each HBR link rate
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

VGhpcyBpcyBiZXR0ZXIgdGhhbiBrZWVwIHRob3NlIHZhbHVlcyBpbiB0aGUgY29kZSB0aGF0IHlv
dSBhbHdheXMKbmVlZCB0byBjaGVjayB0aGUgRFAgc3BlYyB0byBrbm93IHdoYXQgbGV2ZWwgb2Yg
SEJSIGl0IGlzLgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYTk3
NjYwNmQyMWM3Li45MTRmMGNjNGQyMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwpAQCAtNDksNiArNDksMTAgQEAKICNpbmNsdWRlICJpbnRlbF90Yy5oIgogI2lu
Y2x1ZGUgImludGVsX3Zkc2MuaCIKIAorI2RlZmluZSBIQlJfUkFURSAyNzAwMDAKKyNkZWZpbmUg
SEJSMl9SQVRFIDU0MDAwMAorI2RlZmluZSBIQlIzX1JBVEUgODEwMDAwCisKIHN0cnVjdCBkZGlf
YnVmX3RyYW5zIHsKIAl1MzIgdHJhbnMxOwkvKiBiYWxhbmNlIGxlZyBlbmFibGUsIGRlLWVtcGgg
bGV2ZWwgKi8KIAl1MzIgdHJhbnMyOwkvKiB2cmVmIHNlbCwgdnN3aW5nICovCkBAIC04ODgsNyAr
ODkyLDcgQEAgaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCiAJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVU
X0hETUkpIHsKIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2hkbWkpOwogCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25z
X2hkbWk7Ci0JfSBlbHNlIGlmIChyYXRlID4gNTQwMDAwICYmIHR5cGUgPT0gSU5URUxfT1VUUFVU
X0VEUCkgeworCX0gZWxzZSBpZiAocmF0ZSA+IEhCUjJfUkFURSAmJiB0eXBlID09IElOVEVMX09V
VFBVVF9FRFApIHsKIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2VkcF9oYnIzKTsKIAkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19lZHBfaGJyMzsKIAl9IGVsc2UgaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAm
JiBkZXZfcHJpdi0+dmJ0LmVkcC5sb3dfdnN3aW5nKSB7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
