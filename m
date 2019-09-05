Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A7EAABF0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 21:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3DD889FED;
	Thu,  5 Sep 2019 19:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E1989FED
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 19:27:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 12:27:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="383970326"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga006.fm.intel.com with ESMTP; 05 Sep 2019 12:27:11 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 00:47:09 +0530
Message-Id: <1567711031-26144-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
References: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Add gamma precision
 function for CHV
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

aW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oKSBpcyBleHRlbmRlZCBmb3IKY2hl
cnJ5dmlldyBieSBhZGRpbmcgY2h2X2dhbW1hX3ByZWNpc2lvbigpLCBpOTY1IHdpbGwgdXNlIGV4
aXN0aW5nCmk5eHhfZ2FtbWFfcHJlY2lzaW9uKCkgZnVuYyBvbmx5LgoKU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyNSArKysrKysrKysrKysrKysrKysrLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggNmQ2NDFlMS4u
NGQ5YTU2OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpA
QCAtMTQwMCw2ICsxNDAwLDE0IEBAIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAl9CiB9CiAKK3N0YXRpYyBp
bnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKK3sKKwlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUgJiBDR01fUElQRV9NT0RFX0dB
TU1BKQorCQlyZXR1cm4gMTA7CisJZWxzZQorCQlyZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNpb24o
Y3J0Y19zdGF0ZSk7Cit9CisKIHN0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzd2l0Y2ggKGNydGNfc3Rh
dGUtPmdhbW1hX21vZGUpIHsKQEAgLTE0MjEsMTIgKzE0MjksMTcgQEAgaW50IGludGVsX2NvbG9y
X2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXQKIAlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKIAkJcmV0dXJuIDA7CiAK
LQlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSkKLQkJ
cmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwotCWVsc2UgaWYgKElTX0NB
Tk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQotCQlyZXR1cm4g
Z2xrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKLQllbHNlIGlmIChJU19JUk9OTEFLRShk
ZXZfcHJpdikpCi0JCXJldHVybiBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOworCWlm
IChIQVNfR01DSChkZXZfcHJpdikpIHsKKwkJaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQor
CQkJcmV0dXJuIGNodl9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CisJCWVsc2UKKwkJCXJl
dHVybiBpOXh4X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKKwl9IGVsc2UgeworCQlpZiAo
SVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJCQly
ZXR1cm4gZ2xrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKKwkJZWxzZSBpZiAoSVNfSVJP
TkxBS0UoZGV2X3ByaXYpKQorCQkJcmV0dXJuIGlsa19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0
ZSk7CisJfQogCiAJcmV0dXJuIDA7CiB9Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
