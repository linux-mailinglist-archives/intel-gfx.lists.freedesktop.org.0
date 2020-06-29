Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF60320DD18
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 23:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1551689F9F;
	Mon, 29 Jun 2020 21:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F0489F9F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 21:19:32 +0000 (UTC)
IronPort-SDR: mMM8+2bLrlMSmGZqX9gLt7l0yzuS/NbtJo8a/XqGcxOZT3RzccUUNIYM/+q7XvSAympGunC/w4
 aSfnG++FVW9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126210805"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="126210805"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 14:19:31 -0700
IronPort-SDR: Ao03Id8918I4mR2OKjGxggBp5wGzWBYlnb9N9faGK+y2v5APU8Q+BoYkUOJ5/OzO/zZSUnjY/a
 JC2KpEQzQtrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="312172494"
Received: from anuragpi-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.46.142])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2020 14:19:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 14:20:58 -0700
Message-Id: <20200629212059.108460-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement WA 18011464164
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

VGhpcyBmaXggc29tZSBwb3NzaWJsZSBjb3JydXB0aW9ucy4KCkJTcGVjOiA1Mjc1NQpCU3BlYzog
NTI4OTAKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDMgKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOCArKysrKysrLQogMiBmaWxlcyBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggMjg0YWYwYzY0MzljLi43OTdlMDM2ZmE2OTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtNDE3MCw2ICs0MTcwLDkgQEAgZW51bSB7CiAjZGVmaW5lIElORl9VTklUX0xFVkVM
X0NMS0dBVEUJCV9NTUlPKDB4OTU2MCkKICNkZWZpbmUgICBDR1BTRl9DTEtHQVRFX0RJUwkJKDEg
PDwgMykKIAorI2RlZmluZSBTTElDRV9VTklUX0xFVkVMX0NMT0NLX0dBVElOR19DVEwJX01NSU8o
MHg5NEQ4KQorI2RlZmluZSAgIEdTX1VOSVRfQ0xPQ0tfR0FUSU5HX0RJUwkJUkVHX0JJVCgyNCkK
KwogLyoKICAqIERpc3BsYXkgZW5naW5lIHJlZ3MKICAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMK
aW5kZXggMmEzMmQ2MjMwNzk1Li44NjQwODE3M2M0MzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YwpAQCAtNzExMyw3ICs3MTEzLDcgQEAgc3RhdGljIHZvaWQgdGdsX2luaXRfY2xvY2tfZ2F0aW5n
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlJOTE1X1dSSVRFKFBPV0VSR0FU
RV9FTkFCTEUsCiAJCSAgIEk5MTVfUkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZkX3BnX2VuYWJs
ZSk7CiAKLQkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8KKwkvKiBXYV8xNDA5ODI1
Mzc2OnRnbCAocHJlLXByb2QpICovCiAJaWYgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JF
VklEX0EwLCBUR0xfUkVWSURfQTApKQogCQlJOTE1X1dSSVRFKEdFTjlfQ0xLR0FURV9ESVNfMywg
STkxNV9SRUFEKEdFTjlfQ0xLR0FURV9ESVNfMykgfAogCQkJICAgVEdMX1ZSSF9HQVRJTkdfRElT
KTsKQEAgLTcxMjEsNiArNzEyMSwxMiBAQCBzdGF0aWMgdm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRp
bmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCS8qIFdhXzE0MDExMDU5Nzg4
OnRnbCAqLwogCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjEwX0RGUl9S
QVRJT19FTl9BTkRfQ0hJQ0tFTiwKIAkJCSAwLCBERlJfRElTQUJMRSk7CisKKwkvKiBXYV8xODAx
MTQ2NDE2NDp0Z2wgKi8KKwlpZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQjAs
IFRHTF9SRVZJRF9CMCkpCisJCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsCisJ
CQkJIFNMSUNFX1VOSVRfTEVWRUxfQ0xPQ0tfR0FUSU5HX0NUTCwgMCwKKwkJCQkgR1NfVU5JVF9D
TE9DS19HQVRJTkdfRElTKTsKIH0KIAogc3RhdGljIHZvaWQgY25wX2luaXRfY2xvY2tfZ2F0aW5n
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLS0gCjIuMjcuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
