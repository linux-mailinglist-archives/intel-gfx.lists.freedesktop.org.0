Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A1321A2DF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA986E0C1;
	Thu,  9 Jul 2020 14:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8AC6EA9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:58:48 +0000 (UTC)
IronPort-SDR: sfqW4kfo3piUU8cBZfByHPCXsVLEecoImbwrAlZEcG9ADceYN9B6wVzKNnAtSmLkdh/kfvPIQ/
 3s33qTYp0o0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136232815"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136232815"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:58:48 -0700
IronPort-SDR: M8TSKv+OdRjWd0fucZWynyRDPR0riitz42uky72Y2Y/tQT3JO+yjTSts2FpU2vT+8VCM+Of6wJ
 8othYIaLn7/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="314993910"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 09 Jul 2020 07:58:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 17:58:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 17:58:45 +0300
Message-Id: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFj
Y29yZGluZyB0byB0aGUgRFAgc3BlYyBhIERQVFggbXVzdCBzdXBwb3J0IHZzd2luZy9wcmUtZW1w
aGFzaXMKdXAgdG8gYW5kIGluY2x1ZGluZyBsZXZlbCAyLiBMZXZlbCAzIGlzIG9wdGlvbmFsIChh
Y3R1YWxseSBEUCAxLjRhCnNlZW1zIHRvIG1ha2UgZXZlbiBsZXZlbCAzIG1hbmRhdG9yeSBmb3Ig
SEJSMi8zLCB3aGlsZSBsZWF2aW5nIGl0Cm9wdGlvbmFsIGZvciBSQlIvSEJSMSkuCgpXQVJOIGlm
IG91dCBlbmNvZGVycycgLnZvbHRhZ2VfbWF4KCkvLnByZWVtcGhfbWF4KCkgcmV0dXJuCmFuIGls
bGVnYWwgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jCmluZGV4IDI0OTMxNDJhNzBlOS4uYTIzZWQ3MjkwODQzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJh
aW5pbmcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYwpAQCAtNTIsNiArNTIsNyBAQCBzdGF0aWMgdTggZHBfdm9sdGFnZV9tYXgodTgg
cHJlZW1waCkKIHZvaWQgaW50ZWxfZHBfZ2V0X2FkanVzdF90cmFpbihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAogCQkJICAgICAgIGNvbnN0IHU4IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RBVFVT
X1NJWkVdKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShp
bnRlbF9kcCk7CiAJdTggdiA9IDA7CiAJdTggcCA9IDA7CiAJaW50IGxhbmU7CkBAIC02NCwxMiAr
NjUsMjAgQEAgdm9pZCBpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCiAJfQogCiAJcHJlZW1waF9tYXggPSBpbnRlbF9kcC0+cHJlZW1waF9tYXgoaW50
ZWxfZHApOworCWRybV9XQVJOX09OX09OQ0UoJmk5MTUtPmRybSwKKwkJCSBwcmVlbXBoX21heCAh
PSBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8yICYmCisJCQkgcHJlZW1waF9tYXggIT0gRFBfVFJB
SU5fUFJFX0VNUEhfTEVWRUxfMyk7CisKIAlpZiAocCA+PSBwcmVlbXBoX21heCkKIAkJcCA9IHBy
ZWVtcGhfbWF4IHwgRFBfVFJBSU5fTUFYX1BSRV9FTVBIQVNJU19SRUFDSEVEOwogCiAJdiA9IG1p
bih2LCBkcF92b2x0YWdlX21heChwKSk7CiAKIAl2b2x0YWdlX21heCA9IGludGVsX2RwLT52b2x0
YWdlX21heChpbnRlbF9kcCk7CisJZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+ZHJtLAorCQkJIHZv
bHRhZ2VfbWF4ICE9IERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMiAmJgorCQkJIHZvbHRh
Z2VfbWF4ICE9IERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMyk7CisKIAlpZiAodiA+PSB2
b2x0YWdlX21heCkKIAkJdiA9IHZvbHRhZ2VfbWF4IHwgRFBfVFJBSU5fTUFYX1NXSU5HX1JFQUNI
RUQ7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
