Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FF23C7CA8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F42F6E195;
	Wed, 14 Jul 2021 03:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A2F6E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085867"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085867"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031556"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:22 -0700
Message-Id: <20210714031540.3539704-33-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 32/50] drm/i915/dg2: Add fake PCH
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2l0aCBERzEsIERHMiBoYXMgYW4gSUNMLXN0eWxlIHNvdXRoIGRpc3BsYXkgaW50ZXJmYWNl
IHByb3ZpZGVkIG9uCnRoZSBzYW1lIFBDSSBkZXZpY2UuICBBZGQgYSBmYWtlIFBDSCB0byBlbnN1
cmUgREcyIHRha2VzIHRoZSBhcHByb3ByaWF0ZQpjb2RlcGF0aHMgZm9yIHNvdXRoIGRpc3BsYXkg
aGFuZGxpbmcuCgpCc3BlYzogNTQ4NzEsIDUwMDYyLCA0OTk2MSwgNTM2NzMKQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dh
cnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIHwg
MyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIHwgMiArKwogMyBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwppbmRleCA2MWRjZWIyYTE3YzEuLmUyMTcxYmQyODIwZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCkBAIC0yMDcsNyArMjA3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfaHBkX2luaXRfcGlu
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICAgICghSEFTX1BDSF9TUExJ
VChkZXZfcHJpdikgfHwgSEFTX1BDSF9OT1AoZGV2X3ByaXYpKSkKIAkJcmV0dXJuOwogCi0JaWYg
KEhBU19QQ0hfREcxKGRldl9wcml2KSkKKwlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49
IFBDSF9ERzEpCiAJCWhwZC0+cGNoX2hwZCA9IGhwZF9zZGVfZGcxOwogCWVsc2UgaWYgKElOVEVM
X1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfSUNQKQogCQlocGQtPnBjaF9ocGQgPSBocGRfaWNw
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwppbmRleCA0ZTkyYWUxOTE4OWUuLmNjNDQxNjRlMjQy
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKQEAgLTIxMSw2ICsyMTEsOSBAQCB2b2lkIGlu
dGVsX2RldGVjdF9wY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChJ
U19ERzEoZGV2X3ByaXYpKSB7CiAJCWRldl9wcml2LT5wY2hfdHlwZSA9IFBDSF9ERzE7CiAJCXJl
dHVybjsKKwl9IGVsc2UgaWYgKElTX0RHMihkZXZfcHJpdikpIHsKKwkJZGV2X3ByaXYtPnBjaF90
eXBlID0gUENIX0RHMjsKKwkJcmV0dXJuOwogCX0KIAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bj
aC5oCmluZGV4IGUyZjNmMzBjNjQ0NS4uN2MwZDgzZDI5MmRjIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY2guaApAQCAtMzAsNiArMzAsNyBAQCBlbnVtIGludGVsX3BjaCB7CiAKIAkvKiBGYWtlIFBD
SHMsIGZ1bmN0aW9uYWxpdHkgaGFuZGxlZCBvbiB0aGUgc2FtZSBQQ0kgZGV2ICovCiAJUENIX0RH
MSA9IDEwMjQsCisJUENIX0RHMiwKIH07CiAKICNkZWZpbmUgSU5URUxfUENIX0RFVklDRV9JRF9N
QVNLCQkweGZmODAKQEAgLTYyLDYgKzYzLDcgQEAgZW51bSBpbnRlbF9wY2ggewogCiAjZGVmaW5l
IElOVEVMX1BDSF9UWVBFKGRldl9wcml2KQkJKChkZXZfcHJpdiktPnBjaF90eXBlKQogI2RlZmlu
ZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpCQkJKChkZXZfcHJpdiktPnBjaF9pZCkKKyNkZWZpbmUg
SEFTX1BDSF9ERzIoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hf
REcyKQogI2RlZmluZSBIQVNfUENIX0FEUChkZXZfcHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2
X3ByaXYpID09IFBDSF9BRFApCiAjZGVmaW5lIEhBU19QQ0hfREcxKGRldl9wcml2KQkJCShJTlRF
TF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0RHMSkKICNkZWZpbmUgSEFTX1BDSF9KU1AoZGV2
X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfSlNQKQotLSAKMi4yNS40
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
