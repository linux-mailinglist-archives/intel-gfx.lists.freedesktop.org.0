Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C8527DCBC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C1C6E3FE;
	Tue, 29 Sep 2020 23:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2996B6E3FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:35:07 +0000 (UTC)
IronPort-SDR: bUox1qrSmNGZG1SBictXx33EB0VJOFUGJQ4We13vDI2QlDCvyNjQ57+zz/LWYay/AJ9U7Q+Azq
 mZQqGQwQM5Mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159651545"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="159651545"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:35:06 -0700
IronPort-SDR: x7eO8D3NJPteaOFGjBRooWT+P9AaWvruY3UvvDIe16vL/jMm5iWwvckpXs6VErb0tXDFS03sb7
 uP/c/bLk3/Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="345441382"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 29 Sep 2020 16:35:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:35:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:43 +0300
Message-Id: <20200929233449.32323-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915: Split ICL combo PHY buf
 trans per output type
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIG1lc3MgaW5zaWRlIHRoZSBidWYgdHJhbnMgZnVuY3MgYSBiaXQgbW9yZSBtYW5hZ2Vh
YmxlIGJ5CnNwbGl0dGluZyBhbG9uZyB0aGUgbGluZXMgb2Ygb3V0cHV0IHR5cGUuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA0MiArKysrKysr
KysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IDRkMDYxNzhjZDc2Yy4uNGMzNDE2ZDg5ZjMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTEwMzQsMjQgKzEwMzQsNDggQEAgY25sX2dldF9idWZfdHJhbnNf
ZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgKm5fZW50cmllcykKIH0KIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCi1pY2xfZ2V0X2NvbWJvX2J1
Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRl
LAotCQkJaW50ICpuX2VudHJpZXMpCitpY2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19oZG1pKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsCisJCQkgICAgIGlu
dCAqbl9lbnRyaWVzKQoreworCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19oZG1pKTsKKwlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNs
YXRpb25zX2hkbWk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMg
KgoraWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwKKwkJCSAgIGludCAqbl9lbnRyaWVzKQoreworCSpuX2Vu
dHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIy
KTsKKwlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjI7Cit9CisK
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgKgoraWNsX2dldF9jb21ib19i
dWZfdHJhbnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50
IHJhdGUsCisJCQkgICAgaW50ICpuX2VudHJpZXMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAKLQlpZiAodHlwZSA9
PSBJTlRFTF9PVVRQVVRfSERNSSkgewotCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29t
Ym9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGRtaSk7Ci0JCXJldHVybiBpY2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfaGRtaTsKLQl9IGVsc2UgaWYgKHJhdGUgPiA1NDAwMDAgJiYgdHlwZSA9
PSBJTlRFTF9PVVRQVVRfRURQKSB7CisJaWYgKHJhdGUgPiA1NDAwMDApIHsKIAkJKm5fZW50cmll
cyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzKTsK
IAkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMzsKLQl9IGVs
c2UgaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+dmJ0LmVkcC5sb3df
dnN3aW5nKSB7CisJfSBlbHNlIGlmIChkZXZfcHJpdi0+dmJ0LmVkcC5sb3dfdnN3aW5nKSB7CiAJ
CSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19l
ZHBfaGJyMik7CiAJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjI7CiAJfQogCi0JKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2RwX2hicjIpOwotCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZHBfaGJyMjsKKwlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2Rlciwg
dHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRp
X2J1Zl90cmFucyAqCitpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAorCQkJaW50ICpuX2VudHJpZXMpCit7CisJ
aWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkpCisJCXJldHVybiBpY2xfZ2V0X2NvbWJvX2J1
Zl90cmFuc19oZG1pKGVuY29kZXIsIHR5cGUsIHJhdGUsIG5fZW50cmllcyk7CisJZWxzZSBpZiAo
dHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQKQorCQlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJh
bnNfZWRwKGVuY29kZXIsIHR5cGUsIHJhdGUsIG5fZW50cmllcyk7CisJZWxzZQorCQlyZXR1cm4g
aWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVz
KTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpY2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgKgot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
