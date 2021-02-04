Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9665C30FDA7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AF16EE64;
	Thu,  4 Feb 2021 20:05:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38916EE64
 for <Intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:05:08 +0000 (UTC)
IronPort-SDR: KhwlaCtNoIzZfpRA9D8qs78mc670VrVJrp2tpCSyvUVKcVlC4YtPbnkeYfPKrQbIsus0GKz5oQ
 z6/BAv/hhseQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181387642"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="181387642"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:05:07 -0800
IronPort-SDR: 0ELuXBnoKozkBNphQMIvD2Frm1xVfmcSqjY0nkP0lGQINBC1UYKVrKICxbyOKh5N3uGFph4NjH
 BkzElqzy0r4Q==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="415301797"
Received: from lndersh-mobl2.amr.corp.intel.com (HELO cataylo2-MOBL1.lan)
 ([10.212.10.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:05:06 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 12:04:58 -0800
Message-Id: <20210204200458.21875-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: support ddr5 mem types
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

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkFkZCBERFI1
IGFuZCBMUEREUjUgcmV0dXJuIHZhbHVlcyBmcm9tIHB1bml0IGZ3LgoKQlNQRUM6IDU0MDIzCkNj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50IFRh
eWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMTIgKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgfCAgNCArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kcmFtLmMgICAgICAgfCAgNiArKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMKaW5kZXggYmE5ZTcxMzU4NWU3Li5kMTIyYjk5NjU1MzIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKQEAgLTc4LDcgKzc4LDE3IEBAIHN0YXRpYyBpbnQgaWNs
X2dldF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlxaS0+
bnVtX3BvaW50cyA9IGRyYW1faW5mby0+bnVtX3Fndl9wb2ludHM7CiAKIAlpZiAoSVNfR0VOKGRl
dl9wcml2LCAxMikpCi0JCXFpLT50X2JsID0gZGV2X3ByaXYtPmRyYW1faW5mby50eXBlID09IElO
VEVMX0RSQU1fRERSNCA/IDQgOiAxNjsKKwkJc3dpdGNoIChkcmFtX2luZm8tPnR5cGUpIHsKKwkJ
Y2FzZSBJTlRFTF9EUkFNX0REUjQ6CisJCQlxaS0+dF9ibCA9IDQ7CisJCQlicmVhazsKKwkJY2Fz
ZSBJTlRFTF9EUkFNX0REUjU6CisJCQlxaS0+dF9ibCA9IDg7CisJCQlicmVhazsKKwkJZGVmYXVs
dDoKKwkJCXFpLT50X2JsID0gMTY7CisJCQlicmVhazsKKwkJfQogCWVsc2UgaWYgKElTX0dFTihk
ZXZfcHJpdiwgMTEpKQogCQlxaS0+dF9ibCA9IGRldl9wcml2LT5kcmFtX2luZm8udHlwZSA9PSBJ
TlRFTF9EUkFNX0REUjQgPyA0IDogODsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggYTJm
ZDdlNTAzOWIzLi44MDgzYTUwOTA4YmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTEz
Niw3ICsxMTM2LDkgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCQkJSU5URUxfRFJBTV9E
RFIzLAogCQkJSU5URUxfRFJBTV9ERFI0LAogCQkJSU5URUxfRFJBTV9MUEREUjMsCi0JCQlJTlRF
TF9EUkFNX0xQRERSNAorCQkJSU5URUxfRFJBTV9MUEREUjQsCisJCQlJTlRFTF9EUkFNX0REUjUs
CisJCQlJTlRFTF9EUkFNX0xQRERSNSwKIAkJfSB0eXBlOwogCQl1OCBudW1fcWd2X3BvaW50czsK
IAl9IGRyYW1faW5mbzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Ry
YW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYwppbmRleCA3M2QyNTZmYzY4
MzAuLjFlNTNjMDE3YzMwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJhbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYwpAQCAtNDI3LDYg
KzQyNywxMiBAQCBzdGF0aWMgaW50IGljbF9wY29kZV9yZWFkX21lbV9nbG9iYWxfaW5mbyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWNhc2UgMDoKIAkJCWRyYW1faW5mby0+
dHlwZSA9IElOVEVMX0RSQU1fRERSNDsKIAkJCWJyZWFrOworCQljYXNlIDE6CisJCQlkcmFtX2lu
Zm8tPnR5cGUgPSBJTlRFTF9EUkFNX0REUjU7CisJCQlicmVhazsKKwkJY2FzZSAyOgorCQkJZHJh
bV9pbmZvLT50eXBlID0gSU5URUxfRFJBTV9MUEREUjU7CisJCQlicmVhazsKIAkJY2FzZSAzOgog
CQkJZHJhbV9pbmZvLT50eXBlID0gSU5URUxfRFJBTV9MUEREUjQ7CiAJCQlicmVhazsKLS0gCjIu
MjkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
