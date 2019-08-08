Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713D0867EA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76976E8A3;
	Thu,  8 Aug 2019 17:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599366E8A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:25:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 10:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="258778234"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2019 10:25:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 22:51:53 +0530
Message-Id: <20190808172158.30578-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808172158.30578-1-anshuman.gupta@intel.com>
References: <20190808172158.30578-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/9] drm/i915/tgl: mutual exclusive handling
 for DC3CO and DC5/6
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

QXMgcGVyIEIuU3BlY3MgREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiBEQzNDTyBpcyBlbmFi
bGVkCmFuZCBEQzNDTyBzaG91bGQgYmUgZW5hYmxlZCBvbmx5IGR1cmluZyBWSURFTyBwbGF5YmFj
ay4KV2hpY2ggZXNzZW50aWFsbHkgbWVhbnMgYm90aCBjYW4gREM1IGFuZCBEQzNDTyBjYW4gbm90
IGJlCmVuYWJsZWQgYXQgc2FtZSB0aW1lLCBpdCBtYWtlcyBEQzNDTyBhbmQgREM1IG11dHVhbCBl
eGNsdXNpdmUuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
IHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXgg
YzU3MGZkYTI5MGM0Li5jZDUwMGZiZGQ4ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC05OTYsNiArOTk2LDEwIEBAIHN0
YXRpYyB2b2lkIGdlbjlfZGNfb2ZmX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAogCWdlbjlfc2V0X2RjX3N0YXRlKGRldl9wcml2LCBEQ19TVEFU
RV9ESVNBQkxFKTsKIAorCS8qIERDM0NPIGFuZCBEQzUvNiBhcmUgbXV0dWFsbHkgZXhjbHVzaXZl
ICovCisJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVfRU5fREMz
Q08pCisJCXRnbF9hbGxvd19kYzNjbyhkZXZfcHJpdik7CisKIAlkZXZfcHJpdi0+ZGlzcGxheS5n
ZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSk7CiAJLyogQ2FuJ3QgcmVhZCBvdXQgdm9s
dGFnZV9sZXZlbCBzbyBjYW4ndCB1c2UgaW50ZWxfY2RjbGtfY2hhbmdlZCgpICovCiAJV0FSTl9P
TihpbnRlbF9jZGNsa19uZWVkc19tb2Rlc2V0KCZkZXZfcHJpdi0+Y2RjbGsuaHcsICZjZGNsa19z
dGF0ZSkpOwpAQCAtMTAyMCw2ICsxMDI0LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNfb2ZmX3Bv
d2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaWYg
KCFkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2FkKQogCQlyZXR1cm47CiAKKwkvKiBEQzNDTyBhbmQg
REM1LzYgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSAqLworCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93
ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKQorCQl0Z2xfZGlzYWxsb3dfZGMzY28oZGV2
X3ByaXYpOworCiAJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVf
RU5fVVBUT19EQzYpCiAJCXNrbF9lbmFibGVfZGM2KGRldl9wcml2KTsKIAllbHNlIGlmIChkZXZf
cHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9fREM1KQotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
