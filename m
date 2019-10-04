Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791D6CB648
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3AB66EAFF;
	Fri,  4 Oct 2019 08:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0416EAFD
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 08:35:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 01:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="392226370"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2019 01:35:30 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:56:10 +0530
Message-Id: <20191004082610.24664-5-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004082610.24664-1-swati2.sharma@intel.com>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] FOR_TESTING_ONLY: Print rgb values of hw
 and sw blobs
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSB0byBwcmludCBodyBhbmQgc3cgbHV0IHZhbHVlcy9jaGFubmVsLgoKU2lnbmVkLW9mZi1i
eTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCmluZGV4IDE2OGU5ZGFhZTNkZS4uMmI4NzA2ZGJhNzQ2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBAIC0xNTI4LDYgKzE1MjgsOCBAQCBpbnQgaW50
ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdAogc3RhdGljIGJvb2wgZXJyX2NoZWNrKHN0cnVjdCBkcm1fY29sb3Jf
bHV0ICpsdXQxLAogCQkgICAgICBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MiwgdTMyIGVycikK
IHsKKwlEUk1fREVCVUdfS01TKCJod19sdXQtPnJlZD0weCV4IHN3X2x1dC0+cmVkPTB4JXggaHdf
bHV0LT5ibHVlPTB4JXggc3dfbHV0LT5ibHVlPTB4JXggaHdfbHV0LT5ncmVlbj0weCV4IHN3X2x1
dC0+Z3JlZW49MHgleCIsIGx1dDItPnJlZCwgbHV0MS0+cmVkLCBsdXQyLT5ibHVlLCBsdXQxLT5i
bHVlLCBsdXQyLT5ncmVlbiwgbHV0MS0+Z3JlZW4pOworCiAJcmV0dXJuICgoYWJzKChsb25nKWx1
dDItPnJlZCAtIGx1dDEtPnJlZCkpIDw9IGVycikgJiYKIAkJKChhYnMoKGxvbmcpbHV0Mi0+Ymx1
ZSAtIGx1dDEtPmJsdWUpKSA8PSBlcnIpICYmCiAJCSgoYWJzKChsb25nKWx1dDItPmdyZWVuIC0g
bHV0MS0+Z3JlZW4pKSA8PSBlcnIpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
