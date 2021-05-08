Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAA8376EBD
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412E96E82B;
	Sat,  8 May 2021 02:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD42B6E83A
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: Lf76n1vBF2ur5Vw0QAgGciX8003KNV6FxUWGWXncTmPPtIRteR2ma2CweGt33w3uVyl2QCr8/n
 0tBk9j0aux7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317035"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317035"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: 23KrE6gWNsXEJhHo6ilOJ7t5ZWIHoleZmAc2cJaj5vnMBHYJUF7VBk3kE+4IIc7hvR/cT0s5Vh
 FR9JyveIqbCQ==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910173"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:28:17 -0700
Message-Id: <20210508022820.780227-46-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 45/48] drm/i915/adl_p: Implement
 Wa_22011091694
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBZGRp
bmcgYSBuZXcgaG9vayB0byBBREwtUCBqdXN0IHRvIGF2b2lkIGFub3RoZXIgcGxhdGZvcm0gY2hl
Y2sgaW4KZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZygpIGJ1dCBhbHNvIG9wZW4gdG8gaXQuCgpC
U3BlYzogNTQzNjkKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNj
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyB8IDEyICsrKysrKysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNGMz
NTZmYTkwNTVmLi42ZmQxMjZiNjQ3MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDE4
NSw2ICs0MTg1LDkgQEAgZW51bSB7CiAjZGVmaW5lIEdFTjlfQ0xLR0FURV9ESVNfNAkJX01NSU8o
MHg0NjUzQykKICNkZWZpbmUgICBCWFRfR01CVVNfR0FUSU5HX0RJUwkJKDEgPDwgMTQpCiAKKyNk
ZWZpbmUgR0VOOV9DTEtHQVRFX0RJU181CQlfTU1JTygweDQ2NTQwKQorI2RlZmluZSAgIERQQ0Vf
R0FUSU5HX0RJUwkJUkVHX0JJVCgxNykKKwogI2RlZmluZSBfQ0xLR0FURV9ESVNfUFNMX0EJCTB4
NDY1MjAKICNkZWZpbmUgX0NMS0dBVEVfRElTX1BTTF9CCQkweDQ2NTI0CiAjZGVmaW5lIF9DTEtH
QVRFX0RJU19QU0xfQwkJMHg0NjUyOApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMzZkYTE3
ZTFhYTNjLi4wMTNhNWFlZjRjMjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNzM3MCw2
ICs3MzcwLDE0IEBAIHN0YXRpYyB2b2lkIGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJCSBDTEtSRVFfUE9MSUNZX01FTV9VUF9P
VlJELCAwKTsKIH0KIAorc3RhdGljIHZvaWQgYWRscF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGlu
ZyhkZXZfcHJpdik7CisKKwkvKiBXYV8yMjAxMTA5MTY5NDphZGxwICovCisJaW50ZWxfZGVfcm13
KGRldl9wcml2LCBHRU45X0NMS0dBVEVfRElTXzUsIDAsIERQQ0VfR0FUSU5HX0RJUyk7Cit9CisK
IHN0YXRpYyB2b2lkIGRnMV9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiB7CiAJZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7CkBA
IC03ODQ3LDcgKzc4NTUsOSBAQCBzdGF0aWMgdm9pZCBub3BfaW5pdF9jbG9ja19nYXRpbmcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogICovCiB2b2lkIGludGVsX2luaXRfY2xv
Y2tfZ2F0aW5nX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlp
ZiAoSVNfREcxKGRldl9wcml2KSkKKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQorCQlk
ZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGluZyA9IGFkbHBfaW5pdF9jbG9ja19nYXRp
bmc7CisJZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkKIAkJZGV2X3ByaXYtPmRpc3BsYXkuaW5p
dF9jbG9ja19nYXRpbmcgPSBkZzFfaW5pdF9jbG9ja19nYXRpbmc7CiAJZWxzZSBpZiAoSVNfR0VO
KGRldl9wcml2LCAxMikpCiAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tfZ2F0aW5nID0g
Z2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZzsKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
