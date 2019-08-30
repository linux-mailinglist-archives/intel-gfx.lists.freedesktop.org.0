Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C153A32D7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE4E6E319;
	Fri, 30 Aug 2019 08:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EFD6E316
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:42:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="381059386"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 01:42:39 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 14:01:53 +0530
Message-Id: <1567153913-20166-12-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v9][PATCH 11/11] FOR_TESTING_ONLY: Print rgb values of
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
eS9pbnRlbF9jb2xvci5jCmluZGV4IDhkNmYzYzQuLmM1NjBjOTEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE0NzAsNiArMTQ3MCw4IEBAIGludCBp
bnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0CiBzdGF0aWMgaW5saW5lIGJvb2wgZXJyX2NoZWNrKHN0cnVjdCBk
cm1fY29sb3JfbHV0ICpzd19sdXQsCiAJCQkgICAgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpod19s
dXQsIHUzMiBlcnIpCiB7CisJRFJNX0RFQlVHX0tNUygiaHdfbHV0LT5yZWQ9MHgleCBzd19sdXQt
PnJlZD0weCV4IGh3X2x1dC0+Ymx1ZT0weCV4IHN3X2x1dC0+Ymx1ZT0weCV4IGh3X2x1dC0+Z3Jl
ZW49MHgleCBzd19sdXQtPmdyZWVuPTB4JXgiLCBod19sdXQtPnJlZCwgc3dfbHV0LT5yZWQsIGh3
X2x1dC0+Ymx1ZSwgc3dfbHV0LT5ibHVlLCBod19sdXQtPmdyZWVuLCBzd19sdXQtPmdyZWVuKTsK
KwogCXJldHVybiAoKGFicygobG9uZylod19sdXQtPnJlZCAtIHN3X2x1dC0+cmVkKSkgPD0gZXJy
KSAmJgogCQkoKGFicygobG9uZylod19sdXQtPmJsdWUgLSBzd19sdXQtPmJsdWUpKSA8PSBlcnIp
ICYmCiAJCSgoYWJzKChsb25nKWh3X2x1dC0+Z3JlZW4gLSBzd19sdXQtPmdyZWVuKSkgPD0gZXJy
KTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
