Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFD738157B
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6836D6F4E7;
	Sat, 15 May 2021 03:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3666F4D0
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:44 +0000 (UTC)
IronPort-SDR: +cdELyX+z//jfHa23J1eqiELClEPEwQhyyJ9AL/GJSQK0KggohfR0vkl/Ubd7mWz/qXW+q9yS6
 C+fagoD1NK9w==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383717"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383717"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:44 -0700
IronPort-SDR: 9k7DRbdMOSNkoiYIgRGVUiTvWRhWJTISUX1lWmCABsi8h3SXWwJ9EAdPiJd2QHbugbHkBAiEwL
 W9m2j/LQ+xkw==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901227"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:34 -0700
Message-Id: <20210515031035.2561658-23-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 22/23] drm/i915/adlp: Add PIPE_MISC2
 programming
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKV2hlbiBz
Y2FsZXJzIGFyZSBlbmFibGVkLCB3ZSBuZWVkIHRvIHByb2dyYW0gdW5kZXJydW4KYnViYmxlIGNv
dW50ZXIgdG8gMHg1MCB0byBhdm9pZCBTb2Z0IFBpcGUgQSB1bmRlcnJ1bnMuCk1ha2Ugc3VyZSBv
dGhlciBiaXRzIGRvbnQgZ2V0IG92ZXJ3cml0dGVuLgoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+CkNjOiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50
ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjEg
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgICAgIHwgIDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBk
ZDI0ODk5NWM1M2QuLjg1MDc3Y2FhMzc0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTU3MTYsOCArNTcxNiwxMiBAQCBzdGF0aWMgdm9pZCBo
c3dfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQogc3RhdGljIHZvaWQgYmR3X3NldF9waXBlbWlzYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVs
X2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
Y2FsZXJfc3RhdGUgKnNjYWxlcl9zdGF0ZSA9CisJCSZjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGU7
CisKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJh
c2UuZGV2KTsKIAl1MzIgdmFsID0gMDsKKwlpbnQgaTsKIAogCXN3aXRjaCAoY3J0Y19zdGF0ZS0+
cGlwZV9icHApIHsKIAljYXNlIDE4OgpAQCAtNTc1Niw2ICs1NzYwLDIzIEBAIHN0YXRpYyB2b2lk
IGJkd19zZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikKIAkJdmFsIHw9IFBJUEVNSVND
X1BJWEVMX1JPVU5ESU5HX1RSVU5DOwogCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkg
eworCQlib29sIHNjYWxlcl9pbl91c2UgPSBmYWxzZTsKKworCQlmb3IgKGkgPSAwOyBpIDwgY3J0
Yy0+bnVtX3NjYWxlcnM7IGkrKykgeworCQkJaWYgKCFzY2FsZXJfc3RhdGUtPnNjYWxlcnNbaV0u
aW5fdXNlKQorCQkJCWNvbnRpbnVlOworCisJCQlzY2FsZXJfaW5fdXNlID0gdHJ1ZTsKKwkJCWJy
ZWFrOworCQl9CisKKwkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBQSVBFX01JU0MyKGNydGMtPnBp
cGUpLAorCQkJICAgICBQSVBFX01JU0MyX1VOREVSUlVOX0JVQkJMRV9DT1VOVEVSX01BU0ssCisJ
CQkgICAgIHNjYWxlcl9pbl91c2UgPyBQSVBFX01JU0MyX0JVQkJMRV9DT1VOVEVSX1NDQUxFUl9F
TiA6CisJCQkgICAgIFBJUEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfU0NBTEVSX0RJUyk7CisJfQor
CiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVNSVNDKGNydGMtPnBpcGUpLCB2YWwpOwog
fQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA5YjhkYTRhNmEwYWUuLjZmZDEyNmI2NDcy
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC02MTYzLDYgKzYxNjMsMTMgQEAgZW51bSB7
CiAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSX1RZUEVfU1AJKDAgPDwgMikKICNkZWZpbmUgUElQ
RU1JU0MocGlwZSkJCQlfTU1JT19QSVBFMihwaXBlLCBfUElQRV9NSVNDX0EpCiAKKyNkZWZpbmUg
X1BJUEVfTUlTQzJfQQkJCQkJMHg3MDAyQworI2RlZmluZSBfUElQRV9NSVNDMl9CCQkJCQkweDcx
MDJDCisjZGVmaW5lICAgUElQRV9NSVNDMl9CVUJCTEVfQ09VTlRFUl9TQ0FMRVJfRU4JCSgweDUw
IDw8IDI0KQorI2RlZmluZSAgIFBJUEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfU0NBTEVSX0RJUwkJ
KDB4MTQgPDwgMjQpCisjZGVmaW5lICAgUElQRV9NSVNDMl9VTkRFUlJVTl9CVUJCTEVfQ09VTlRF
Ul9NQVNLCSgweGZmIDw8IDI0KQorI2RlZmluZSBQSVBFX01JU0MyKHBpcGUpCQkJCQlfTU1JT19Q
SVBFMihwaXBlLCBfUElQRV9NSVNDMl9BKQorCiAvKiBTa3lsYWtlKyBwaXBlIGJvdHRvbSAoYmFj
a2dyb3VuZCkgY29sb3IgKi8KICNkZWZpbmUgX1NLTF9CT1RUT01fQ09MT1JfQQkJMHg3MDAzNAog
I2RlZmluZSAgIFNLTF9CT1RUT01fQ09MT1JfR0FNTUFfRU5BQkxFCSgxIDw8IDMxKQotLSAKMi4y
NS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
