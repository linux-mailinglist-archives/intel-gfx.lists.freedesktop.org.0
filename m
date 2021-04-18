Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9B3632D2
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 02:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE61D6E06D;
	Sun, 18 Apr 2021 00:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815216E04E
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Apr 2021 00:19:10 +0000 (UTC)
IronPort-SDR: QbGyQIHD6MVe/Jo1Fioy1qdHdpB8ubrfGKen8Xtc2xZPIBsuEIPqf7MSv27iUcTIPB9/8nufDH
 W5DWH5njO4JA==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182687385"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="182687385"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:10 -0700
IronPort-SDR: jFmsnL7YcMdgwYRJkb22wFb/j8lm39AFEVD1UASbE1hnveLZzn/ocp2zqDoLWE0vXTjWpGLuV5
 Zn4mKL+4I9Aw==
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="426049798"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.36.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Apr 2021 17:21:26 -0700
Message-Id: <20210418002126.87882-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
References: <20210418002126.87882-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display/xelpd: Implement
 Wa_14013475917
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

VGhpcyB3b3JrYXJvdW5kIHJlcXVpcmVzIHRoYXQgVklERU9fRElQX0VOQUJMRV9WU0NfSFNXIGlz
IG5ldmVyIHNldAp3aXRoIFBTUi4KCkJTcGVjOiA1NDM2OQpCU3BlYzogNTQwNzcKQ2M6IE1hdHQg
QXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KQ2M6IEd3YW4tZ3llb25nIE11biA8
Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCBk
ZTczMjg2ODVkNDAuLjM4NzZhNTI2NDJhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMKQEAgLTUzMSw2ICs1MzEsMTEgQEAgdm9pZCBoc3dfd3JpdGVfaW5mb2Zy
YW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgIGhzd19kaXBfZGF0
YV9yZWcoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCB0eXBlLCBpID4+IDIpLAogCQkJICAgICAg
IDApOwogCisJLyogV2FfMTQwMTM0NzU5MTcgKi8KKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID09IDEzICYmIGNydGNfc3RhdGUtPmhhc19wc3IgJiYKKwkgICAgdHlwZSA9PSBEUF9TRFBfVlND
KQorCQlyZXR1cm47CisKIAl2YWwgfD0gaHN3X2luZm9mcmFtZV9lbmFibGUodHlwZSk7CiAJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIGN0bF9yZWcsIHZhbCk7CiAJaW50ZWxfZGVfcG9zdGluZ19y
ZWFkKGRldl9wcml2LCBjdGxfcmVnKTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
