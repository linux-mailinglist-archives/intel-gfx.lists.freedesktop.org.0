Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC90226CD2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 19:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0863789CCB;
	Mon, 20 Jul 2020 17:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B702289CCB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 17:07:51 +0000 (UTC)
IronPort-SDR: YGWRRRsSi9VvfUeXNyVOx/J9NwntaW8EYl1Z+/XTwOW0ho71WbGSAPI041WZ8PbYnAAdRCJ8Nc
 XcbtvTuYxGwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="147916176"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="147916176"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 10:07:51 -0700
IronPort-SDR: cvgxwkmyJo60YSMVO7+sM7Flbrx+xuz22L6EADT0QBhW7E6TDdJ1BVHN4qt7Mjy5GOi9K0waI7
 uRQ9SuOQ5rOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="431682317"
Received: from unknown (HELO josouza-MOBL2.amr.corp.intel.com)
 ([10.251.134.24])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2020 10:07:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:09:47 -0700
Message-Id: <20200720170948.28446-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
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

VGhlcmUgaXMgbm8gd2F5IHRvIGRpZmZlcmVudGlhdGUgVEdMLVUgZnJvbSBUR0wtWSBieSB0aGUg
UENJIGlkcyBhcwpzb21lIGlkcyBhcmUgYXZhaWxhYmxlIGluIGJvdGggU0tVcy4KU28gaGVyZSB1
c2luZyB0aGUgcm9vdCBkZXZpY2UgaWQgaW4gdGhlIFBDSSBidXMgdGhhdCBpR1BVIGlzIGluCnRv
IGRpZmZlcmVudGlhdGUgYmV0d2VlbiBVIGFuZCBZLgoKQlNwZWM6IDQ0NDU1ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgNiArKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgNiArKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAxOSArKysrKysrKysrKysrKysrKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAppbmRleCA1NmRmYzZkOThjYWEuLmE1OWY2NDgyMTkyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCkBAIC0xNDk3LDYgKzE0OTcsMTIgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIElTX0lDTF9XSVRIX1BPUlRfRihkZXZfcHJp
dikgXAogCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9JQ0VMQUtFLCBJTlRFTF9TVUJQ
TEFURk9STV9QT1JURikKIAorI2RlZmluZSBJU19UR0xfVShkZXZfcHJpdikgXAorCUlTX1NVQlBM
QVRGT1JNKGRldl9wcml2LCBJTlRFTF9USUdFUkxBS0UsIElOVEVMX1NVQlBMQVRGT1JNX1VMVCkK
KworI2RlZmluZSBJU19UR0xfWShkZXZfcHJpdikgXAorCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2
LCBJTlRFTF9USUdFUkxBS0UsIElOVEVMX1NVQlBMQVRGT1JNX1VMWCkKKwogI2RlZmluZSBTS0xf
UkVWSURfQTAJCTB4MAogI2RlZmluZSBTS0xfUkVWSURfQjAJCTB4MQogI2RlZmluZSBTS0xfUkVW
SURfQzAJCTB4MgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYTBkMzFmM2JmNjM0Li42YTA3
NjhjYjAxZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTIzNjMsNCArMTIzNjMsMTAg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgxIDw8IDMx
KQogI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQogCisjZGVmaW5lIFRHTF9ST09UX0RF
VklDRV9JRAkJMHg5QTAwCisjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9NQVNLCQkweEZGMDAKKyNk
ZWZpbmUgVEdMX1JPT1RfREVWSUNFX1NLVV9NQVNLCTB4RgorI2RlZmluZSBUR0xfUk9PVF9ERVZJ
Q0VfU0tVX1VMWAkJMHgyCisjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxUCQkweDQKKwog
I2VuZGlmIC8qIF9JOTE1X1JFR19IXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmMKaW5kZXggNDBjNTkwZGIzYzc2Li5lMmFhNWJjM2E2ZTAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtMzQ2LDYgKzM0NiwyNSBAQCB2b2lkIGlu
dGVsX2RldmljZV9pbmZvX3N1YnBsYXRmb3JtX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fUE9SVEYpOwogCX0KIAorCWlm
IChJU19USUdFUkxBS0UoaTkxNSkpIHsKKwkJc3RydWN0IHBjaV9kZXYgKnJvb3QsICpwZGV2ID0g
aTkxNS0+ZHJtLnBkZXY7CisKKwkJcm9vdCA9IGxpc3RfZmlyc3RfZW50cnkoJnBkZXYtPmJ1cy0+
ZGV2aWNlcywgdHlwZW9mKCpyb290KSwgYnVzX2xpc3QpOworCisJCWRybV9XQVJOX09OKCZpOTE1
LT5kcm0sIG1hc2spOworCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAocm9vdC0+ZGV2aWNlICYg
VEdMX1JPT1RfREVWSUNFX01BU0spICE9CisJCQkgICAgVEdMX1JPT1RfREVWSUNFX0lEKTsKKwor
CQlzd2l0Y2ggKHJvb3QtPmRldmljZSAmIFRHTF9ST09UX0RFVklDRV9TS1VfTUFTSykgeworCQlj
YXNlIFRHTF9ST09UX0RFVklDRV9TS1VfVUxYOgorCQkJbWFzayA9IEJJVChJTlRFTF9TVUJQTEFU
Rk9STV9VTFgpOworCQkJYnJlYWs7CisJCWNhc2UgVEdMX1JPT1RfREVWSUNFX1NLVV9VTFQ6CisJ
CQltYXNrID0gQklUKElOVEVMX1NVQlBMQVRGT1JNX1VMVCk7CisJCQlicmVhazsKKwkJfQorCX0K
KwogCUdFTV9CVUdfT04obWFzayAmIH5JTlRFTF9TVUJQTEFURk9STV9CSVRTKTsKIAogCVJVTlRJ
TUVfSU5GTyhpOTE1KS0+cGxhdGZvcm1fbWFza1twaV0gfD0gbWFzazsKLS0gCjIuMjcuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
