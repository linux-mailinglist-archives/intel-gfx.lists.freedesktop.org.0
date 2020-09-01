Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835B3258502
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 03:06:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE486E550;
	Tue,  1 Sep 2020 01:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62236E550
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 01:06:41 +0000 (UTC)
IronPort-SDR: 7VhwSufI0E6yzqd587LgxlY/HiIe5zdX5zQdhvYhsO+mYbRuUnDU3hQm1aZGiAdNsXdYf4VsBI
 TG5Q/h53NeCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="156343630"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="156343630"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 18:06:40 -0700
IronPort-SDR: /8QYV0zIjsezBuG+OEwaSbVCQB6yrZpWTvX4pb1V4n2WAyrIvzzOuUSM1z3q5dzfpujf/MRx5F
 5xQaugkH7dpA==
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="476977340"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 18:06:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Aug 2020 18:09:21 -0700
Message-Id: <20200901010924.235808-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Ignore
 IGNORE_PSR2_HW_TRACKING for platforms without sel fetch
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

Rm9yIHBsYXRmb3JtcyB3aXRob3V0IHNlbGVjdGl2ZSBmZXRjaCB0aGlzIHJlZ2lzdGVyIGlzIHJl
c2VydmVkIHNvCmRvIG5vdCB3cml0ZSAwIHRvIGl0LgoKQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA4
YTlkMGJkZGUxYmYuLjRlMDlhZTYxZDRhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCkBAIC05NDIsNyArOTQyLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Vu
YWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIEVYSVRMSU5FKGNwdV90cmFuc2NvZGVyKSwgdmFsKTsKIAl9CiAKLQlpZiAoSEFT
X1BTUl9IV19UUkFDS0lORyhkZXZfcHJpdikpCisJaWYgKEhBU19QU1JfSFdfVFJBQ0tJTkcoZGV2
X3ByaXYpICYmIEhBU19QU1IyX1NFTF9GRVRDSChkZXZfcHJpdikpCiAJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsIElHTk9SRV9QU1IyX0hXX1RSQUNLSU5HLAogCQkJICAg
ICBkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPwogCQkJICAgICBJR05PUkVf
UFNSMl9IV19UUkFDS0lORyA6IDApOwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
