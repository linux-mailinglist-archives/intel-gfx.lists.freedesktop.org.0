Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E7A294D48
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201486EB16;
	Wed, 21 Oct 2020 13:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D36D6EB19
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:14:55 +0000 (UTC)
IronPort-SDR: 10HG64WCDyrkWvTLOMMGYRC/5HFkspZg14xjqn/3sgKMMVa5gWFHzMYobkYa84w1r1ZI2a6mmw
 QyzSX58lrftw==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167483600"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="167483600"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:14:55 -0700
IronPort-SDR: 6qhQtzZzunl1FghC25ofHptx3KB1Xxk2u8+nYev3hUwliS4dQvymF+89wvhfRDeZUHU7vtQxoB
 2RL7JBdwr4Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="332580585"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 21 Oct 2020 06:14:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 16:14:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 16:14:42 +0300
Message-Id: <20201021131443.25616-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Do gen5_gt_irq_postinstall()
 before enabling the master interrupt
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIG1ha2Ugc3VyZSB0aGUgbG93ZXIgbGV2ZWwgaW50ZXJydXB0IGJpdHMgYXJlIGFsbCBsaW5l
ZAp1cCBiZWZvcmUgd2UgZmxpcCBvbiB0aGUgbWFzdGVyIGludGVycnVwdC4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpp
bmRleCBiNzUzYzc3YzlhNzcuLjgyNzEzZDRhMzc2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CkBAIC0zNDc0LDExICszNDc0LDExIEBAIHN0YXRpYyB2b2lkIGlsa19pcnFfcG9zdGluc3RhbGwo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJaWJ4X2lycV9wcmVfcG9zdGlu
c3RhbGwoZGV2X3ByaXYpOwogCisJZ2VuNV9ndF9pcnFfcG9zdGluc3RhbGwoJmRldl9wcml2LT5n
dCk7CisKIAlHRU4zX0lSUV9JTklUKHVuY29yZSwgREUsIGRldl9wcml2LT5pcnFfbWFzaywKIAkJ
ICAgICAgZGlzcGxheV9tYXNrIHwgZXh0cmFfbWFzayk7CiAKLQlnZW41X2d0X2lycV9wb3N0aW5z
dGFsbCgmZGV2X3ByaXYtPmd0KTsKLQogCWlsa19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2
KTsKIAogCWlieF9pcnFfcG9zdGluc3RhbGwoZGV2X3ByaXYpOwotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
