Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B67EB114C90
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 08:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A7F6E9F8;
	Fri,  6 Dec 2019 07:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA076E9EE
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 07:14:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 23:14:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,283,1571727600"; d="scan'208";a="263518229"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2019 23:14:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 23:14:21 -0800
Message-Id: <20191206071422.27138-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206071422.27138-1-lucas.demarchi@intel.com>
References: <20191206071422.27138-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: use clk_off name to avoid
 double negation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5zdGVhZCBvZiAidW5nYXRlZCIgdXNlIHRoZSBzYW1lIG5hbWUgZm9yIHRoZSB2YXJpYWJsZSBh
cyB0aGUgYml0ZmllbGQsCm1ha2luZyBpdCBjbGVhcmVyIHdoYXQncyB0aGUgaW50ZW50IG9mIHRo
ZSBjaGVja3MuCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
IHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAzNDMz
YjBiZjRmNDQuLjU4NmEwMDE5YjljNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCkBAIC0zMDEyLDEyICszMDEyLDEwIEBAIHN0YXRpYyB2b2lkIGljbF9zYW5pdGl6
ZV9wb3J0X2Nsa19vZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXZhbCA9
IEk5MTVfUkVBRChJQ0xfRFBDTEtBX0NGR0NSMCk7CiAJZm9yX2VhY2hfcG9ydF9tYXNrZWQocG9y
dCwgcG9ydF9tYXNrKSB7CiAJCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9w
cml2LCBwb3J0KTsKKwkJYm9vbCBkZGlfY2xrX29mZiA9IHZhbCAmIGljbF9kcGNsa2FfY2ZnY3Iw
X2Nsa19vZmYoZGV2X3ByaXYsCisJCQkJCQkJCSAgIHBoeSk7CiAKLQkJYm9vbCBkZGlfY2xrX3Vu
Z2F0ZWQgPSAhKHZhbCAmCi0JCQkJCSBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKGRldl9wcml2
LAotCQkJCQkJCQkgICBwaHkpKTsKLQotCQlpZiAoZGRpX2Nsa19uZWVkZWQgPT0gZGRpX2Nsa191
bmdhdGVkKQorCQlpZiAoZGRpX2Nsa19uZWVkZWQgPT0gIWRkaV9jbGtfb2ZmKQogCQkJY29udGlu
dWU7CiAKIAkJLyoKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
