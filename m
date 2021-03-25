Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C582349923
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121446EE32;
	Thu, 25 Mar 2021 18:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D910A6EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:37 +0000 (UTC)
IronPort-SDR: +5BUsntutjKd1KjlxZp2SBJsuDqmeqN4Z9q+/sJ1Albm20qYywvuHec6EfPORokiCD4zVh+SdU
 eyPtoMOoIgzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112586"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112586"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:37 -0700
IronPort-SDR: 1groQt+xM4Ue9AbfG2KG2bxDaV8F4wWDsyxEeO7iH9w6Fjb4MR/F6q0Ro24hURDv/MbmiTRs4z
 jxWlouHyMFog==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176764"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:16 -0700
Message-Id: <20210325180720.401410-47-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 46/50] drm/i915/adl_p: Implement
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
Cc: me@freedesktop.org
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
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNjI0
MjUzMTE4ZWZiLi42NGJiYjhjZjRiOGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDE3
OSw2ICs0MTc5LDkgQEAgZW51bSB7CiAjZGVmaW5lIEdFTjlfQ0xLR0FURV9ESVNfNAkJX01NSU8o
MHg0NjUzQykKICNkZWZpbmUgICBCWFRfR01CVVNfR0FUSU5HX0RJUwkJKDEgPDwgMTQpCiAKKyNk
ZWZpbmUgR0VOOV9DTEtHQVRFX0RJU181CQlfTU1JTygweDQ2NTQwKQorI2RlZmluZSAgIERQQ0Vf
R0FUSU5HX0RJUwkJUkVHX0JJVCgxNykKKwogI2RlZmluZSBfQ0xLR0FURV9ESVNfUFNMX0EJCTB4
NDY1MjAKICNkZWZpbmUgX0NMS0dBVEVfRElTX1BTTF9CCQkweDQ2NTI0CiAjZGVmaW5lIF9DTEtH
QVRFX0RJU19QU0xfQwkJMHg0NjUyOApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggYjIyYWY0
Nzc0ZWYwLi5jNmI5OTA0ZWY3YzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNzM4Myw2
ICs3MzgzLDE0IEBAIHN0YXRpYyB2b2lkIGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJIDAsIERGUl9ESVNBQkxFKTsKIH0KIAor
c3RhdGljIHZvaWQgYWRscF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCit7CisJZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7CisK
KwkvKiBXYV8yMjAxMTA5MTY5NDphZGxwICovCisJaW50ZWxfZGVfcm13KGRldl9wcml2LCBHRU45
X0NMS0dBVEVfRElTXzUsIDAsIERQQ0VfR0FUSU5HX0RJUyk7Cit9CisKIHN0YXRpYyB2b2lkIGRn
MV9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
CiAJZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7CkBAIC03ODYwLDcgKzc4Njgs
OSBAQCBzdGF0aWMgdm9pZCBub3BfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogICovCiB2b2lkIGludGVsX2luaXRfY2xvY2tfZ2F0aW5nX2hvb2tz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlpZiAoSVNfREcxKGRldl9w
cml2KSkKKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQorCQlkZXZfcHJpdi0+ZGlzcGxh
eS5pbml0X2Nsb2NrX2dhdGluZyA9IGFkbHBfaW5pdF9jbG9ja19nYXRpbmc7CisJZWxzZSBpZiAo
SVNfREcxKGRldl9wcml2KSkKIAkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcg
PSBkZzFfaW5pdF9jbG9ja19nYXRpbmc7CiAJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMikp
CiAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tfZ2F0aW5nID0gZ2VuMTJscF9pbml0X2Ns
b2NrX2dhdGluZzsKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
