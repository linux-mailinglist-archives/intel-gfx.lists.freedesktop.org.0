Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6076BA3B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 12:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A2289F61;
	Wed, 17 Jul 2019 10:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C42089EB7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 10:32:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 03:32:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="342995178"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 03:32:22 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 15:57:59 +0530
Message-Id: <20190717102804.27202-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717102804.27202-1-anshuman.gupta@intel.com>
References: <20190717102804.27202-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/10] drm/i915/tgl:Added mutual exclusive
 handling for DC3CO and DC5/6.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIEIuU3BjZXMgREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiBEQzNDTyBpcyBlbmFi
bGVkLgphbmQgREMzQ08gc2hvdWxkIGJlIGVuYWJsZWQgb25seSBkdXJpbmcgVklERU8gcGxheWJh
Y2suCldoaWNoIGVzc2VudGlhbGx5IG1lYW5zIGJvdGggY2FuIERDNSBhbmQgREMzQ08gY2FuIG5v
dCBiZQplbmFibGVkIGF0IHNhbWUgdGltZS4KVGhpcyBwYXRjaCBtYWtlcyBEQzNDTyBhbmQgREM1
IG11dHVhbCBleGNsdXNpdmUuCgpDYzogamFuaS5uaWt1bGFAaW50ZWwuY29tCkNjOiBpbXJlLmRl
YWtAaW50ZWwuY29tCkNjOiByb2RyaWdvLnZpdmlAaW50ZWwuY29tCkNjOiBhbmltZXNoLm1hbm5h
QGludGVsLmNvbQpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKaW5kZXggM2I3N2RhOWI2NTI3Li4xYmQ1OTU5YzFkYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC05OTgsNiArOTk4
LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNfb2ZmX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWdlbjlfc2V0X2RjX3N0YXRlKGRldl9wcml2
LCBEQ19TVEFURV9ESVNBQkxFKTsKIAorCS8qIERDM0NPIGFuZCBEQzUvNiBhcmUgbXV0dWFsbHkg
ZXhjbHVzaXZlICovCisJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RB
VEVfRU5fREMzQ08pCisJCXRnbF9hbGxvd19kYzNjbyhkZXZfcHJpdik7CisKIAlkZXZfcHJpdi0+
ZGlzcGxheS5nZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSk7CiAJLyogQ2FuJ3QgcmVh
ZCBvdXQgdm9sdGFnZV9sZXZlbCBzbyBjYW4ndCB1c2UgaW50ZWxfY2RjbGtfY2hhbmdlZCgpICov
CiAJV0FSTl9PTihpbnRlbF9jZGNsa19uZWVkc19tb2Rlc2V0KCZkZXZfcHJpdi0+Y2RjbGsuaHcs
ICZjZGNsa19zdGF0ZSkpOwpAQCAtMTAyMiw2ICsxMDI2LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlf
ZGNfb2ZmX3Bvd2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJaWYgKCFkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2FkKQogCQlyZXR1cm47CiAKKwkvKiBE
QzNDTyBhbmQgREM1LzYgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSAqLworCWlmIChkZXZfcHJpdi0+
Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKQorCQl0Z2xfZGlzYWxsb3df
ZGMzY28oZGV2X3ByaXYpOworCiAJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYg
RENfU1RBVEVfRU5fVVBUT19EQzYpCiAJCXNrbF9lbmFibGVfZGM2KGRldl9wcml2KTsKIAllbHNl
IGlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9fREM1
KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
