Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 827B53C9BFA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007816E7E2;
	Thu, 15 Jul 2021 09:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFBC6E7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:35:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="271626470"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="271626470"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="505662877"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 15 Jul 2021 02:35:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:20 +0300
Message-Id: <20210715093530.31711-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Extract
 ilk_update_pll_dividers()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIFBDSCBkcGxsIGNvZGUgbWF0Y2ggdGhlIGdtY2ggY29kZSBieSBzcGxpdHRpbmcKdGhl
IEZQIHJlZ2lzdGVyIGhhbmRsaW5nIG91dCBmcm9tIGlsa19jb21wdXRlX2RwbGwoKS4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMgfCAyNSArKysr
KysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYwpp
bmRleCA0ZTBhZTEwOTcwZjUuLmI5OGVmODEwNTkxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsLmMKQEAgLTk0NiwxMiArOTQ2LDEyIEBAIHN0YXRpYyBib29sIGls
a19uZWVkc19mYl9jYl90dW5lKHN0cnVjdCBkcGxsICpkcGxsLCBpbnQgZmFjdG9yKQogfQogCiAK
LXN0YXRpYyB2b2lkIGlsa19jb21wdXRlX2RwbGwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCi0J
CQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJICAgICBzdHJ1
Y3QgZHBsbCAqcmVkdWNlZF9jbG9jaykKK3N0YXRpYyB2b2lkIGlsa191cGRhdGVfcGxsX2Rpdmlk
ZXJzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAorCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAgc3RydWN0IGRwbGwgKnJlZHVjZWRfY2xvY2spCiB7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7Ci0JdTMyIGRwbGwsIGZwLCBmcDI7CisJdTMyIGZwLCBmcDIgPSAwOwogCWludCBmYWN0
b3I7CiAKIAkvKiBFbmFibGUgYXV0b3R1bmluZyBvZiB0aGUgUExMIGNsb2NrIChpZiBwZXJtaXNz
aWJsZSkgKi8KQEAgLTk3NiwxMCArOTc2LDIxIEBAIHN0YXRpYyB2b2lkIGlsa19jb21wdXRlX2Rw
bGwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAKIAkJaWYgKHJlZHVjZWRfY2xvY2stPm0gPCBm
YWN0b3IgKiByZWR1Y2VkX2Nsb2NrLT5uKQogCQkJZnAyIHw9IEZQX0NCX1RVTkU7Ci0JfSBlbHNl
IHsKLQkJZnAyID0gZnA7CiAJfQogCisJY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5mcDAgPSBm
cDsKKwljcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmZwMSA9IHJlZHVjZWRfY2xvY2sgPyBmcDIg
OiBmcDsKK30KKworc3RhdGljIHZvaWQgaWxrX2NvbXB1dGVfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKKwkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJ
CQkgICAgIHN0cnVjdCBkcGxsICpyZWR1Y2VkX2Nsb2NrKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCXUzMiBkcGxsOwor
CisJaWxrX3VwZGF0ZV9wbGxfZGl2aWRlcnMoY3J0YywgY3J0Y19zdGF0ZSwgcmVkdWNlZF9jbG9j
ayk7CisKIAlkcGxsID0gMDsKIAogCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUs
IElOVEVMX09VVFBVVF9MVkRTKSkKQEAgLTEwNDQsOCArMTA1NSw2IEBAIHN0YXRpYyB2b2lkIGls
a19jb21wdXRlX2RwbGwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJZHBsbCB8PSBEUExMX1ZD
T19FTkFCTEU7CiAKIAljcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmRwbGwgPSBkcGxsOwotCWNy
dGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuZnAwID0gZnA7Ci0JY3J0Y19zdGF0ZS0+ZHBsbF9od19z
dGF0ZS5mcDEgPSBmcDI7CiB9CiAKIHN0YXRpYyBpbnQgaWxrX2NydGNfY29tcHV0ZV9jbG9jayhz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
