Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240B251F2A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 20:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5776E96B;
	Tue, 25 Aug 2020 18:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A4C6E963
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 18:41:21 +0000 (UTC)
IronPort-SDR: QL8yI3qudL8QLiPT1YiU/zVB5P1tuLt1VYKP4wrmAlGLjaCEfoqG7zyDsy+T39p0oKstjSSa8h
 Gkx78wN7/65A==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="156169380"
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="156169380"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 11:41:08 -0700
IronPort-SDR: YqLDdr75ROeo33BtEqC6HoxqHC2HCZVALVnZhKyy7k6mUvkcfWvcFCpFfpeW7LlpqievYoucYw
 G+YjGGP3MoFw==
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="443729887"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 11:41:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Aug 2020 11:43:42 -0700
Message-Id: <20200825184343.63253-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825184343.63253-1-jose.souza@intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/display/ehl: Use EHL DP tables
 for eDP ports without low power support
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

UmV1c2luZyBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucygpIGZvciBlRFAgd2FzIGNhdXNpbmcgdGhl
IHdyb25nIHRhYmxlCmJlaW5nIHVzZWQgd2hlbiB0aGUgZURQIHBvcnQgZG9uJ3Qgc3VwcG9ydCBs
b3cgcG93ZXIgdm9sdGFnZSBzd2luZyB0YWJsZS4KCnYyOiBPbmx5IHVzZSBpY2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjMgaWYgbG93X3Zzd2luZyBpcwpzZXQgYXMgRUhMIGNv
bWJvIHBoeSBzdXBwb3J0cyBIQlIzIChNYXR0IFIpCgpDYzogTGVlIFNoYXduIEMgPHNoYXduLmMu
bGVlQGludGVsLmNvbT4KQ2M6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5
QGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAyMiArKysr
KysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRl
eCA5YTAzNWJiN2JkMDYuLjY5OTUxMTg3MjI5MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCkBAIC0xMDc0LDEyICsxMDc0LDI4IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgY25sX2RkaV9idWZfdHJhbnMgKgogZWhsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJCWludCAqbl9lbnRy
aWVzKQogewotCWlmICh0eXBlICE9IElOVEVMX09VVFBVVF9IRE1JICYmIHR5cGUgIT0gSU5URUxf
T1VUUFVUX0VEUCkgeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCisJc3dpdGNoICh0eXBlKSB7CisJY2FzZSBJTlRFTF9P
VVRQVVRfSERNSToKKwkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2hkbWkpOworCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2hkbWk7CisJY2FzZSBJTlRFTF9PVVRQVVRfRURQOgorCQlpZiAoZGV2X3ByaXYtPnZidC5l
ZHAubG93X3Zzd2luZykgeworCQkJaWYgKHJhdGUgPiA1NDAwMDApIHsKKwkJCQkqbl9lbnRyaWVz
ID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjMpOwor
CQkJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjM7CisJCQl9
IGVsc2UgeworCQkJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19lZHBfaGJyMik7CisJCQkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19lZHBfaGJyMjsKKwkJCX0KKwkJfQorCQkvKiBmYWxsIHRocm91Z2ggKi8KKwlkZWZh
dWx0OgorCQkvKiBBbGwgY29tYm8gRFAgYW5kIGVEUCBwb3J0cyB0aGF0IGRvIG5vdCBzdXBwb3J0
IGxvd192c3dpbmcgKi8KIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoZWhsX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2RwKTsKIAkJcmV0dXJuIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0
aW9uc19kcDsKIAl9Ci0KLQlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2Rlciwg
dHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRp
X2J1Zl90cmFucyAqCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
