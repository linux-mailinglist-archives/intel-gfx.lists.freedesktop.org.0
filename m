Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F24D7136
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 10:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980806E784;
	Tue, 15 Oct 2019 08:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B086E781
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 08:37:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 01:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="395460398"
Received: from yanghuib-mobl.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.242])
 by fmsmga005.fm.intel.com with ESMTP; 15 Oct 2019 01:37:40 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 11:37:21 +0300
Message-Id: <20191015083724.24390-2-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
References: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915: define HAS_MAPPABLE_APERTURE
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzIHdpbGwgdXNlIGl0IHRv
IGF2b2lkIGNlcnRhaW4Kb3BlcmF0aW9ucyB3aGVuIGFwZXJ0dXJlIGlzIG5vdCBhdmFpbGFibGUg
aW4gSFcuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXgg
MmIwNmM5NTdlNjI3Li5iOGU0OTVhNzNkMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAt
MTczNSw2ICsxNzM1LDggQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCiAjZGVmaW5lIE9WRVJMQVlfTkVFRFNfUEhZU0lDQUwoZGV2X3ByaXYpIFwK
IAkJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5Lm92ZXJsYXlfbmVlZHNfcGh5c2ljYWwp
CiAKKyNkZWZpbmUgSEFTX01BUFBBQkxFX0FQRVJUVVJFKGRldl9wcml2KSAoZGV2X3ByaXYtPmdn
dHQubWFwcGFibGVfZW5kID4gMCkKKwogLyogRWFybHkgZ2VuMiBoYXZlIGEgdG90YWxseSBidXN0
ZWQgQ1MgdGxiIGFuZCByZXF1aXJlIHBpbm5lZCBiYXRjaGVzLiAqLwogI2RlZmluZSBIQVNfQlJP
S0VOX0NTX1RMQihkZXZfcHJpdikJKElTX0k4MzAoZGV2X3ByaXYpIHx8IElTX0k4NDVHKGRldl9w
cml2KSkKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
