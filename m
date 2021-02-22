Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BF73214F8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 12:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501DE6E945;
	Mon, 22 Feb 2021 11:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF3A6E945
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 11:23:06 +0000 (UTC)
IronPort-SDR: kf4kXR8qNVU/kiZcAhbFQ5WzQcS3sGFQow2Xa4/+1fptVuu0aN0Uk2vFL6XZ/7omX73ffhUK17
 40JsifscWyeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245834175"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="245834175"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 03:23:05 -0800
IronPort-SDR: HGPiHq9bRNOkmRVPWaruF4D6YmWPrAMu3GiRmYQ8HZxyTg5j9P2lUq72M6/GF/HgwgWH55r2OR
 2ql6ZS6lJvIw==
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="498530901"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 03:23:03 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Feb 2021 13:24:15 +0200
Message-Id: <20210222112415.1523930-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Do not allow DC3CO if PSR SF
 is enabled
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

RXZlbiB0aG91Z2ggR0VOMTIrIEhXIHN1cHBvcnRzIFBTUiArIERDM0NPLCBETUMncyBIVyBEQzND
TyBleGl0bWFjaGFuaXNtCmhhcyBhbiBpc3N1ZSB3aXRoIHVzaW5nIG9mIFNlbGVjdGl2ZUZlY3Ro
IGFuZCBQU1IyIE1hbnVhbFRyYWNraW5nLgpBbmQgYXMgbmV3IEdFTjEyKyBwbGF0Zm9ybSBsaWtl
IFJLTCwgQURMLVMvUCBkb24ndCBoYXZlIFBTUjIgSFcgdHJhY2tpbmcsClNlbGVjdGl2ZSBGZXRj
aCB3aWlsIGJlIGVuYWJsZWQgYnkgZGVmYXVsdC4KVGhlcmVmb3JlIGlmIHRoZSBzeXN0ZW0gZW5h
YmxlcyBQU1IgU2VsZWN0aXZlRmV0Y2ggLyBQU1IgTWFudWFsVHJhY2tpbmcsCml0IGRvZXMgbm90
IGFsbG93IERDM0NPIGRjIHN0YXRlLCBpbiB0aGF0IGNhc2UuCgpXaGVuIHRoaXMgREMzQ08gZXhp
dCBpc3N1ZSBpcyBhZGRyZXNzZWQgd2hpbGUgUFNSIFNGIGlzIGVuYWJsZWQsCnRoaXMgcmVzdHJp
Y3Rpb24gc2hvdWxkIGJlIHJlbW92ZWQuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
ICAgIHwgMTkgKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCBmMDBjMTc1MGZlYmQuLmIzODViM2YwODJm
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKQEAgLTgwNCwxMCArODA0LDEyIEBAIHN0YXRpYyB1MzIgZ2VuOV9kY19tYXNrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCW1hc2sgPSBEQ19TVEFURV9FTl9V
UFRPX0RDNTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQotCQltYXNrIHw9IERD
X1NUQVRFX0VOX0RDM0NPIHwgRENfU1RBVEVfRU5fVVBUT19EQzYKLQkJCQkJICB8IERDX1NUQVRF
X0VOX0RDOTsKLQllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikgeworCQkvKiBETUMncyBEQzNDTyBleGl0IG1hY2hhbmlzbSBoYXMg
YW4gaXNzdWUgd2l0aCBTZWxlY3RpdmVGZWN0aCAqLworCQlpZiAoIWRldl9wcml2LT5wYXJhbXMu
ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQorCQkJbWFzayB8PSAgRENfU1RBVEVfRU5fREMzQ087CisJ
CW1hc2sgfD0gRENfU1RBVEVfRU5fVVBUT19EQzYgfCBEQ19TVEFURV9FTl9EQzk7CisJfSBlbHNl
IGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKIAkJbWFzayB8PSBEQ19TVEFURV9FTl9VUFRPX0RD
NiB8IERDX1NUQVRFX0VOX0RDOTsKIAllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkKIAkJ
bWFzayB8PSBEQ19TVEFURV9FTl9EQzk7CkBAIC00NTg4LDEwICs0NTkwLDE1IEBAIHN0YXRpYyB1
MzIgZ2V0X2FsbG93ZWRfZGNfbWFzayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAKIAlzd2l0Y2ggKHJlcXVlc3RlZF9kYykgewogCWNhc2UgNDoKLQkJbWFzayB8PSBE
Q19TVEFURV9FTl9EQzNDTyB8IERDX1NUQVRFX0VOX1VQVE9fREM2OworCQkvKiBETUMncyBEQzND
TyBleGl0IG1hY2hhbmlzbSBoYXMgYW4gaXNzdWUgd2l0aCBTZWxlY3RpdmVGZWN0aCAqLworCQlp
ZiAoIWRldl9wcml2LT5wYXJhbXMuZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQorCQkJbWFzayB8PSAg
RENfU1RBVEVfRU5fREMzQ087CisJCW1hc2sgfD0gRENfU1RBVEVfRU5fVVBUT19EQzY7CiAJCWJy
ZWFrOwogCWNhc2UgMzoKLQkJbWFzayB8PSBEQ19TVEFURV9FTl9EQzNDTyB8IERDX1NUQVRFX0VO
X1VQVE9fREM1OworCQlpZiAoIWRldl9wcml2LT5wYXJhbXMuZW5hYmxlX3BzcjJfc2VsX2ZldGNo
KQorCQkJbWFzayB8PSAgRENfU1RBVEVfRU5fREMzQ087CisJCW1hc2sgfD0gRENfU1RBVEVfRU5f
VVBUT19EQzU7CiAJCWJyZWFrOwogCWNhc2UgMjoKIAkJbWFzayB8PSBEQ19TVEFURV9FTl9VUFRP
X0RDNjsKLS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
