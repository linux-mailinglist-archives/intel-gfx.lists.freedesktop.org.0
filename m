Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50422B80CC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 20:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD646F546;
	Thu, 19 Sep 2019 18:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732636F547
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 18:27:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 11:27:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181562018"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 19 Sep 2019 11:27:03 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 23:47:20 +0530
Message-Id: <1568917040-3365-4-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568917040-3365-1-git-send-email-swati2.sharma@intel.com>
References: <1568917040-3365-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v3][PATCH 3/3] FOR_TESTING_ONLY: Print rgb values of
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

T25seSB0byBwcmludCBodyBhbmQgc3cgbHV0IHZhbHVlcy9jaGFubmVsLgoKU2lnbmVkLW9mZi1i
eTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCmluZGV4IGFkNTQ4Y2UuLmE3YTJmYTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMKQEAgLTE0NzUsNiArMTQ3NSw4IEBAIGludCBpbnRlbF9jb2xvcl9n
ZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0CiBzdGF0aWMgYm9vbCBlcnJfY2hlY2soc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEs
CiAJCSAgICAgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLCB1MzIgZXJyKQogeworCURSTV9E
RUJVR19LTVMoImh3X2x1dC0+cmVkPTB4JXggc3dfbHV0LT5yZWQ9MHgleCBod19sdXQtPmJsdWU9
MHgleCBzd19sdXQtPmJsdWU9MHgleCBod19sdXQtPmdyZWVuPTB4JXggc3dfbHV0LT5ncmVlbj0w
eCV4IiwgbHV0Mi0+cmVkLCBsdXQxLT5yZWQsIGx1dDItPmJsdWUsIGx1dDEtPmJsdWUsIGx1dDIt
PmdyZWVuLCBsdXQxLT5ncmVlbik7CisKIAlyZXR1cm4gKChhYnMoKGxvbmcpbHV0Mi0+cmVkIC0g
bHV0MS0+cmVkKSkgPD0gZXJyKSAmJgogCQkoKGFicygobG9uZylsdXQyLT5ibHVlIC0gbHV0MS0+
Ymx1ZSkpIDw9IGVycikgJiYKIAkJKChhYnMoKGxvbmcpbHV0Mi0+Z3JlZW4gLSBsdXQxLT5ncmVl
bikpIDw9IGVycik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
