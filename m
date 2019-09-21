Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D56BA262
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79490890D4;
	Sun, 22 Sep 2019 12:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3226E093
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2019 20:20:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Sep 2019 13:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,532,1559545200"; d="scan'208";a="194993814"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2019 13:20:35 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Sep 2019 01:40:54 +0530
Message-Id: <1569096654-24433-4-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
References: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v4][PATCH 3/3] FOR_TESTING_ONLY: Print rgb values of
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
ci5jCmluZGV4IDI5OWFkYTViLi4zNTA4ZDZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jCkBAIC0xNDc1LDYgKzE0NzUsOCBAQCBpbnQgaW50ZWxfY29sb3Jf
Z2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdAogc3RhdGljIGJvb2wgZXJyX2NoZWNrKHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQx
LAogCQkgICAgICBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MiwgdTMyIGVycikKIHsKKwlEUk1f
REVCVUdfS01TKCJod19sdXQtPnJlZD0weCV4IHN3X2x1dC0+cmVkPTB4JXggaHdfbHV0LT5ibHVl
PTB4JXggc3dfbHV0LT5ibHVlPTB4JXggaHdfbHV0LT5ncmVlbj0weCV4IHN3X2x1dC0+Z3JlZW49
MHgleCIsIGx1dDItPnJlZCwgbHV0MS0+cmVkLCBsdXQyLT5ibHVlLCBsdXQxLT5ibHVlLCBsdXQy
LT5ncmVlbiwgbHV0MS0+Z3JlZW4pOworCiAJcmV0dXJuICgoYWJzKChsb25nKWx1dDItPnJlZCAt
IGx1dDEtPnJlZCkpIDw9IGVycikgJiYKIAkJKChhYnMoKGxvbmcpbHV0Mi0+Ymx1ZSAtIGx1dDEt
PmJsdWUpKSA8PSBlcnIpICYmCiAJCSgoYWJzKChsb25nKWx1dDItPmdyZWVuIC0gbHV0MS0+Z3Jl
ZW4pKSA8PSBlcnIpOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
