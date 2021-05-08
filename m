Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4436A376EA5
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDAD6EEBB;
	Sat,  8 May 2021 02:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6A56E834
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: fVLtrioZs3gmHIgzY4LVepW11Qu6EdtJUP/ahBz4Z0RBzvOfYQASZqkyhbBkmjyQVpgZFVXf4o
 PE50zoBNBDkA==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317032"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317032"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: Cqnhmeq8DGyjD841IHZX6xjCiYtWHeDcVyAeKDYpgR3mYuVcjP6HO8NgFzKHo7fjFdu67V+z7u
 GXPQz8bF9xNw==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910167"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:28:14 -0700
Message-Id: <20210508022820.780227-43-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 42/48] drm/i915/adlp: Add PIPE_MISC2
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
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA0
NGFhYmIzZWMyYjIuLjUwNWQwZGNiMTM3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
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
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAwMDUwNWIwMTEzMzkuLjRjMzU2ZmE5MDU1
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC02MTYwLDYgKzYxNjAsMTMgQEAgZW51bSB7
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
