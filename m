Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD86E27DCBF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6166E484;
	Tue, 29 Sep 2020 23:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114486E480
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:35:18 +0000 (UTC)
IronPort-SDR: OCP/egtOEGb8O3pwfzks4tDZ/cNKVKQulf4rK6ZJ0t/qfhUqXRK1Tg3TZcOsAH0/s0N7N8qd10
 kQfpAWFRBNJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="162374521"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="162374521"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:35:17 -0700
IronPort-SDR: xIgXPGjfDh3RSgp6jC82OLzJ/DOBSc7m0ZqO7IZX8bxK+46jbhu0y0A3gGV1QrUGt5+4H/qvX0
 UQDn42AC15Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="294433657"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 Sep 2020 16:35:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:35:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:47 +0300
Message-Id: <20200929233449.32323-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: Split TGL DKL PHY buf trans
 per output type
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
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzMSArKysrKysr
KysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IGZlYTA2YzFiMDlkOS4uNzAzMmMzNjcwNzVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTEyMTgsMTkgKzEyMTgsMzQgQEAgdGdsX2dldF9jb21ib19idWZf
dHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwK
IH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zICoKLXRn
bF9nZXRfZGtsX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50IHR5
cGUsIGludCByYXRlLAotCQkgICAgICBpbnQgKm5fZW50cmllcykKK3RnbF9nZXRfZGtsX2J1Zl90
cmFuc19oZG1pKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJh
dGUsCisJCQkgICBpbnQgKm5fZW50cmllcykKIHsKLQlpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRf
SERNSSkgewotCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9oZG1pX2RkaV90
cmFucyk7Ci0JCXJldHVybiB0Z2xfZGtsX3BoeV9oZG1pX2RkaV90cmFuczsKLQl9IGVsc2UgaWYg
KHJhdGUgPiAyNzAwMDApIHsKKwkqbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9o
ZG1pX2RkaV90cmFucyk7CisJcmV0dXJuIHRnbF9ka2xfcGh5X2hkbWlfZGRpX3RyYW5zOworfQor
CitzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJhbnMgKgordGdsX2dl
dF9ka2xfYnVmX3RyYW5zX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlw
ZSwgaW50IHJhdGUsCisJCQkgaW50ICpuX2VudHJpZXMpCit7CisJaWYgKHJhdGUgPiAyNzAwMDAp
IHsKIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zX2hi
cjIpOwogCQlyZXR1cm4gdGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zX2hicjI7CisJfSBlbHNlIHsK
KwkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zKTsKKwkJ
cmV0dXJuIHRnbF9ka2xfcGh5X2RwX2RkaV90cmFuczsKIAl9Cit9CiAKLQkqbl9lbnRyaWVzID0g
QVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9kcF9kZGlfdHJhbnMpOwotCXJldHVybiB0Z2xfZGtsX3Bo
eV9kcF9kZGlfdHJhbnM7CitzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZf
dHJhbnMgKgordGdsX2dldF9ka2xfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsCisJCSAgICAgIGludCAqbl9lbnRyaWVzKQoreworCWlm
ICh0eXBlID09IElOVEVMX09VVFBVVF9IRE1JKQorCQlyZXR1cm4gdGdsX2dldF9ka2xfYnVmX3Ry
YW5zX2hkbWkoZW5jb2RlciwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsKKwllbHNlCisJCXJldHVy
biB0Z2xfZ2V0X2RrbF9idWZfdHJhbnNfZHAoZW5jb2RlciwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVz
KTsKIH0KIAogc3RhdGljIGludCBpbnRlbF9kZGlfaGRtaV9sZXZlbChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
