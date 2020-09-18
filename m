Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26626EA35
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 03:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9156E42C;
	Fri, 18 Sep 2020 00:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210EC6E0C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 00:59:53 +0000 (UTC)
IronPort-SDR: N5zM88QmVLLFo6i1Bu+BjpFC5cp7sDgN7kBhZCikd/jIlkZzRAXPHO34mr8C8DfeRstONVa3hp
 tn2U7N59HWag==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160753683"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="160753683"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 17:59:48 -0700
IronPort-SDR: Jfhrreh5Rh4B6Wk0DG26qsY0ePB2URrI6Fst4e4n9ZtSVrUqIq4oOGme/ZgSzEH3Rwqru4/Nja
 zJqtWYGgSa2Q==
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="320429380"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 17:59:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Sep 2020 18:02:43 -0700
Message-Id: <20200918010245.772724-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Ignore
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
YUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA4YTlkMGJk
ZGUxYmYuLjRlMDlhZTYxZDRhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCkBAIC05NDIsNyArOTQyLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIEVYSVRMSU5FKGNwdV90cmFuc2NvZGVyKSwgdmFsKTsKIAl9CiAKLQlpZiAoSEFTX1BTUl9I
V19UUkFDS0lORyhkZXZfcHJpdikpCisJaWYgKEhBU19QU1JfSFdfVFJBQ0tJTkcoZGV2X3ByaXYp
ICYmIEhBU19QU1IyX1NFTF9GRVRDSChkZXZfcHJpdikpCiAJCWludGVsX2RlX3JtdyhkZXZfcHJp
diwgQ0hJQ0tFTl9QQVIxXzEsIElHTk9SRV9QU1IyX0hXX1RSQUNLSU5HLAogCQkJICAgICBkZXZf
cHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPwogCQkJICAgICBJR05PUkVfUFNSMl9I
V19UUkFDS0lORyA6IDApOwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
