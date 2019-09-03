Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9B7A73C2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABC089826;
	Tue,  3 Sep 2019 19:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B563B89826
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:33:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="176693479"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2019 12:33:26 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 00:52:58 +0530
Message-Id: <1567538578-4489-9-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v10][PATCH 8/8] FOR_TESTING_ONLY: Print rgb values of
 hw and sw blobs
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCmluZGV4IDZkNjQxZTEuLjc4NjA4YTUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE0MzQsNiArMTQzNCw4IEBAIGludCBp
bnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0CiBzdGF0aWMgYm9vbCBlcnJfY2hlY2soc3RydWN0IGRybV9jb2xv
cl9sdXQgKmx1dDEsCiAJCSAgICAgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLCB1MzIgZXJy
KQogeworCURSTV9ERUJVR19LTVMoImh3X2x1dC0+cmVkPTB4JXggc3dfbHV0LT5yZWQ9MHgleCBo
d19sdXQtPmJsdWU9MHgleCBzd19sdXQtPmJsdWU9MHgleCBod19sdXQtPmdyZWVuPTB4JXggc3df
bHV0LT5ncmVlbj0weCV4IiwgbHV0Mi0+cmVkLCBsdXQxLT5yZWQsIGx1dDItPmJsdWUsIGx1dDEt
PmJsdWUsIGx1dDItPmdyZWVuLCBsdXQxLT5ncmVlbik7CisKIAlyZXR1cm4gKChhYnMoKGxvbmcp
bHV0Mi0+cmVkIC0gbHV0MS0+cmVkKSkgPD0gZXJyKSAmJgogCQkoKGFicygobG9uZylsdXQyLT5i
bHVlIC0gbHV0MS0+Ymx1ZSkpIDw9IGVycikgJiYKIAkJKChhYnMoKGxvbmcpbHV0Mi0+Z3JlZW4g
LSBsdXQxLT5ncmVlbikpIDw9IGVycik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
