Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81463B9753
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A561B6EBAC;
	Thu,  1 Jul 2021 20:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B50F6EBD0;
 Thu,  1 Jul 2021 20:25:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188998663"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="188998663"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644564500"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:24:07 -0700
Message-Id: <20210701202427.1547543-34-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/53] drm/i915/dg2: Add fake PCH
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
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
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyB8
IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8IDIgKysKIDMgZmlsZXMg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKaW5kZXggOWQ0N2ZmYTM5MDkzLi4zNGEwZDQ5ZTc2MGUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwpAQCAtMjA4LDcgKzIwOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2hwZF9pbml0X3Bp
bnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAgICAoIUhBU19QQ0hfU1BM
SVQoZGV2X3ByaXYpIHx8IEhBU19QQ0hfTk9QKGRldl9wcml2KSkpCiAJCXJldHVybjsKIAotCWlm
IChIQVNfUENIX0RHMShkZXZfcHJpdikpCisJaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+
PSBQQ0hfREcxKQogCQlocGQtPnBjaF9ocGQgPSBocGRfc2RlX2RnMTsKIAllbHNlIGlmIChJTlRF
TF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0lDUCkKIAkJaHBkLT5wY2hfaHBkID0gaHBkX2lj
cDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKaW5kZXggNGU5MmFlMTkxODllLi5jYzQ0MTY0ZTI0
MmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCkBAIC0yMTEsNiArMjExLDkgQEAgdm9pZCBp
bnRlbF9kZXRlY3RfcGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAo
SVNfREcxKGRldl9wcml2KSkgewogCQlkZXZfcHJpdi0+cGNoX3R5cGUgPSBQQ0hfREcxOwogCQly
ZXR1cm47CisJfSBlbHNlIGlmIChJU19ERzIoZGV2X3ByaXYpKSB7CisJCWRldl9wcml2LT5wY2hf
dHlwZSA9IFBDSF9ERzI7CisJCXJldHVybjsKIAl9CiAKIAkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
Y2guaAppbmRleCBlMmYzZjMwYzY0NDUuLjdjMGQ4M2QyOTJkYyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcGNoLmgKQEAgLTMwLDYgKzMwLDcgQEAgZW51bSBpbnRlbF9wY2ggewogCiAJLyogRmFrZSBQ
Q0hzLCBmdW5jdGlvbmFsaXR5IGhhbmRsZWQgb24gdGhlIHNhbWUgUENJIGRldiAqLwogCVBDSF9E
RzEgPSAxMDI0LAorCVBDSF9ERzIsCiB9OwogCiAjZGVmaW5lIElOVEVMX1BDSF9ERVZJQ0VfSURf
TUFTSwkJMHhmZjgwCkBAIC02Miw2ICs2Myw3IEBAIGVudW0gaW50ZWxfcGNoIHsKIAogI2RlZmlu
ZSBJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikJCSgoZGV2X3ByaXYpLT5wY2hfdHlwZSkKICNkZWZp
bmUgSU5URUxfUENIX0lEKGRldl9wcml2KQkJCSgoZGV2X3ByaXYpLT5wY2hfaWQpCisjZGVmaW5l
IEhBU19QQ0hfREcyKGRldl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENI
X0RHMikKICNkZWZpbmUgSEFTX1BDSF9BRFAoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRl
dl9wcml2KSA9PSBQQ0hfQURQKQogI2RlZmluZSBIQVNfUENIX0RHMShkZXZfcHJpdikJCQkoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9ERzEpCiAjZGVmaW5lIEhBU19QQ0hfSlNQKGRl
dl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0pTUCkKLS0gCjIuMjUu
NAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
