Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99681349925
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A15F6EE38;
	Thu, 25 Mar 2021 18:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734046EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:37 +0000 (UTC)
IronPort-SDR: WvwSdcN2WZBu91nvjghxWu+h6vDLHKcgBhRgo2zmj+s7jAx9bldWZq118BS7spOKhZuQGBf17R
 yTCvPL4NmIIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112581"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112581"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:37 -0700
IronPort-SDR: h409Vqw8hwcTq/mqzhn+2ahmmQ4DwT0UlUrugKmiSq0JNaHn6qXSgtxTknTy6D/xpIjrTQsPV9
 Sf0fzZut88/Q==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176752"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:14 -0700
Message-Id: <20210325180720.401410-45-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 44/50] drm/i915/adlp: Add PIPE_MISC2
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
Cc: me@freedesktop.org
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
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2
NTQzZGI1ZTFjNmMuLjdjOTI3MTU4NWZjYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTYyNDksOCArNjI0OSwxMiBAQCBzdGF0aWMgdm9pZCBo
c3dfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQogc3RhdGljIHZvaWQgYmR3X3NldF9waXBlbWlzYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVs
X2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKyAgICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUgPQorICAgICAgICAgICAgICAgICZjcnRj
X3N0YXRlLT5zY2FsZXJfc3RhdGU7CisKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAl1MzIgdmFsID0gMDsKKwlpbnQgaTsKIAog
CXN3aXRjaCAoY3J0Y19zdGF0ZS0+cGlwZV9icHApIHsKIAljYXNlIDE4OgpAQCAtNjI4OSw2ICs2
MjkzLDIzIEBAIHN0YXRpYyB2b2lkIGJkd19zZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAx
MikKIAkJdmFsIHw9IFBJUEVNSVNDX1BJWEVMX1JPVU5ESU5HX1RSVU5DOwogCisJaWYgKElTX0FM
REVSTEFLRV9QKGRldl9wcml2KSkgeworCQlib29sIHNjYWxlcl9pbl91c2UgPSBmYWxzZTsKKwor
CQlmb3IgKGkgPSAwOyBpIDwgY3J0Yy0+bnVtX3NjYWxlcnM7IGkrKykgeworCQkJaWYgKCFzY2Fs
ZXJfc3RhdGUtPnNjYWxlcnNbaV0uaW5fdXNlKQorCQkJCWNvbnRpbnVlOworCisJCQlzY2FsZXJf
aW5fdXNlID0gdHJ1ZTsKKwkJCWJyZWFrOworCQl9CisKKwkJaW50ZWxfZGVfcm13KGRldl9wcml2
LCBQSVBFX01JU0MyKGNydGMtPnBpcGUpLAorCQkJICAgICBQSVBFX01JU0MyX1VOREVSUlVOX0JV
QkJMRV9DT1VOVEVSX01BU0ssCisJCQkgICAgIHNjYWxlcl9pbl91c2UgPyBQSVBFX01JU0MyX0JV
QkJMRV9DT1VOVEVSX1NDQUxFUl9FTiA6CisJCQkJCSAgICAgUElQRV9NSVNDMl9CVUJCTEVfQ09V
TlRFUl9TQ0FMRVJfRElTKTsKKwl9CisKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUElQRU1J
U0MoY3J0Yy0+cGlwZSksIHZhbCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDU1
MmExYTE0NmQ4ZC4uNjI0MjUzMTE4ZWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTYx
NTUsNiArNjE1NSwxMyBAQCBlbnVtIHsKICNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfVFlQRV9T
UAkoMCA8PCAyKQogI2RlZmluZSBQSVBFTUlTQyhwaXBlKQkJCV9NTUlPX1BJUEUyKHBpcGUsIF9Q
SVBFX01JU0NfQSkKIAorI2RlZmluZSBfUElQRV9NSVNDMl9BCQkJCQkweDcwMDJDCisjZGVmaW5l
IF9QSVBFX01JU0MyX0IJCQkJCTB4NzEwMkMKKyNkZWZpbmUgICBQSVBFX01JU0MyX0JVQkJMRV9D
T1VOVEVSX1NDQUxFUl9FTgkJKDB4NTAgPDwgMjQpCisjZGVmaW5lICAgUElQRV9NSVNDMl9CVUJC
TEVfQ09VTlRFUl9TQ0FMRVJfRElTCQkoMHgxNCA8PCAyNCkKKyNkZWZpbmUgICBQSVBFX01JU0My
X1VOREVSUlVOX0JVQkJMRV9DT1VOVEVSX01BU0sJKDB4ZmYgPDwgMjQpCisjZGVmaW5lIFBJUEVf
TUlTQzIocGlwZSkJCQkJCV9NTUlPX1BJUEUyKHBpcGUsIF9QSVBFX01JU0MyX0EpCisKIC8qIFNr
eWxha2UrIHBpcGUgYm90dG9tIChiYWNrZ3JvdW5kKSBjb2xvciAqLwogI2RlZmluZSBfU0tMX0JP
VFRPTV9DT0xPUl9BCQkweDcwMDM0CiAjZGVmaW5lICAgU0tMX0JPVFRPTV9DT0xPUl9HQU1NQV9F
TkFCTEUJKDEgPDwgMzEpCi0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
