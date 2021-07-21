Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C713B3D19BE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5D96E8FD;
	Wed, 21 Jul 2021 22:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC436EB29
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528004"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528004"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464200"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:37 -0700
Message-Id: <20210721223043.834562-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 12/18] drm/i915/dg2: Skip shared DPLL handling
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

REcyIGhhcyBubyBzaGFyZWQgRFBMTCdzIG9yIERESSBjbG9jayBtdXhpbmcuICBUaGUgUG9ydCBQ
TEwgaXMgZW1iZWRkZWQKd2l0aGluIHRoZSBQSFkuCgpCc3BlYzogNTQwMzIKQnNwZWM6IDU0MDM0
CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDEwICsrKysrKystLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICA1ICsrKyst
CiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBjMjc0YmZi
OGU1NDkuLmExNjViYjhjYTJmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTM0NzQsNyArMzQ3NCw4IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlf
Ymlnam9pbmVyX3ByZV9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJ
CSAqIEVuYWJsZSBzZXF1ZW5jZSBzdGVwcyAxLTcgb24gYmlnam9pbmVyIG1hc3RlcgogCQkgKi8K
IAkJaW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUoc3RhdGUsIG1hc3Rlcik7Ci0JCWludGVs
X2VuYWJsZV9zaGFyZWRfZHBsbChtYXN0ZXJfY3J0Y19zdGF0ZSk7CisJCWlmIChtYXN0ZXJfY3J0
Y19zdGF0ZS0+c2hhcmVkX2RwbGwpCisJCQlpbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwobWFzdGVy
X2NydGNfc3RhdGUpOwogCQlpbnRlbF9lbmNvZGVyc19wcmVfZW5hYmxlKHN0YXRlLCBtYXN0ZXIp
OwogCiAJCS8qIGFuZCBEU0Mgb24gc2xhdmUgKi8KQEAgLTg2MzMsMTAgKzg2MzQsMTEgQEAgaW50
ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3Vy
cmVudF9jb25maWcsCiAKIAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChkb3VibGVfd2lkZSk7CiAKLQlQ
SVBFX0NPTkZfQ0hFQ0tfUChzaGFyZWRfZHBsbCk7CisJaWYgKGRldl9wcml2LT5kcGxsLm1ncikK
KwkJUElQRV9DT05GX0NIRUNLX1Aoc2hhcmVkX2RwbGwpOwogCiAJLyogRklYTUUgZG8gdGhlIHJl
YWRvdXQgcHJvcGVybHkgYW5kIGdldCByaWQgb2YgdGhpcyBxdWlyayAqLwotCWlmICghUElQRV9D
T05GX1FVSVJLKFBJUEVfQ09ORklHX1FVSVJLX0JJR0pPSU5FUl9TTEFWRSkpIHsKKwlpZiAoZGV2
X3ByaXYtPmRwbGwubWdyICYmICFQSVBFX0NPTkZfUVVJUksoUElQRV9DT05GSUdfUVVJUktfQklH
Sk9JTkVSX1NMQVZFKSkgewogCQlQSVBFX0NPTkZfQ0hFQ0tfWChkcGxsX2h3X3N0YXRlLmRwbGwp
OwogCQlQSVBFX0NPTkZfQ0hFQ0tfWChkcGxsX2h3X3N0YXRlLmRwbGxfbWQpOwogCQlQSVBFX0NP
TkZfQ0hFQ0tfWChkcGxsX2h3X3N0YXRlLmZwMCk7CkBAIC04NjY4LDcgKzg2NzAsOSBAQCBpbnRl
bF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJy
ZW50X2NvbmZpZywKIAkJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5tZ19wbGxfc3Nj
KTsKIAkJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5tZ19wbGxfYmlhcyk7CiAJCVBJ
UEVfQ09ORl9DSEVDS19YKGRwbGxfaHdfc3RhdGUubWdfcGxsX3RkY19jb2xkc3RfYmlhcyk7CisJ
fQogCisJaWYgKCFQSVBFX0NPTkZfUVVJUksoUElQRV9DT05GSUdfUVVJUktfQklHSk9JTkVSX1NM
QVZFKSkgewogCQlQSVBFX0NPTkZfQ0hFQ0tfWChkc2lfcGxsLmN0cmwpOwogCQlQSVBFX0NPTkZf
Q0hFQ0tfWChkc2lfcGxsLmRpdik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuYwppbmRleCBkZmMzMWI2ODI4NDguLjhlMmJkOGZhMDkwYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtNDQ2Miw3
ICs0NDYyLDEwIEBAIHZvaWQgaW50ZWxfc2hhcmVkX2RwbGxfaW5pdChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KQogCWNvbnN0IHN0cnVjdCBkcGxsX2luZm8gKmRwbGxfaW5mbzsKIAlpbnQgaTsKIAot
CWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCisJaWYgKElTX0RHMihkZXZfcHJpdikpCisJ
CS8qIE5vIHNoYXJlZCBEUExMcyBvbiBERzI7IHBvcnQgUExMcyBhcmUgcGFydCBvZiB0aGUgUEhZ
ICovCisJCWRwbGxfbWdyID0gTlVMTDsKKwllbHNlIGlmIChJU19BTERFUkxBS0VfUChkZXZfcHJp
dikpCiAJCWRwbGxfbWdyID0gJmFkbHBfcGxsX21ncjsKIAllbHNlIGlmIChJU19BTERFUkxBS0Vf
UyhkZXZfcHJpdikpCiAJCWRwbGxfbWdyID0gJmFkbHNfcGxsX21ncjsKLS0gCjIuMjUuNAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
