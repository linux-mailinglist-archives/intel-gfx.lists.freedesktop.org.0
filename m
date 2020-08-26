Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFD252848
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 09:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37D26EA29;
	Wed, 26 Aug 2020 07:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EE336EA29
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:18:31 +0000 (UTC)
IronPort-SDR: +0hEzLn0vCyMeuCUz2ElBDg1J0sf4/bJ47kIafKr04ERPdc2UL+KnjtZj0tgufuVsq80l8cmIi
 3NnzsXjc3+2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="153670436"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="153670436"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 00:18:30 -0700
IronPort-SDR: 2XO8qujj3Z9j3bCsFVBRdhusdlVBz+CuSHpmNzh6SblzeE+HbKH8/kU4KV32Win3bZ2A7EKUjA
 kDwjojcX9dJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="339068809"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2020 00:18:29 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 15:17:10 +0800
Message-Id: <20200826071710.31689-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200825102600.27779-1-shawn.c.lee@intel.com>
References: <20200825102600.27779-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/fbc: Disable fbc with VT-d also
 with cometlake
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
Cc: William Tseng <william.tseng@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Qm90aCBWVC1kIGFuZCBGQkMgZW5hYmxlZCB0aGF0IGNhdXNlZCBkaXNwbGF5IGZsaWNrZXIKaXNz
dWUgdmVyeSByYW5kb21seS4gQWNjb3JkaW5nIHRvIHNpZ2h0aW5nIHJlcG9ydCwKaXQgcmVjb21t
ZW5kIHRvIGRpc2FibGUgRkJDIHRvIHdvcmthcm91bmQgdGhpcyBpc3N1ZS4KCnYyOiBTcGVjaWZp
YyB0aGlzIGNoYW5nZSBmb3IgQ01MIFUgc2VyaWVzIGRldmljZS4KICAgIFVzaW5nIElTX0NNTF9V
TFQoKSBpbnN0ZWFkIG9mIElTX0NPTUVUTEFLRSgpLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBXaWxsaWFt
IFRzZW5nIDx3aWxsaWFtLnRzZW5nQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTGVlIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
aW5kZXggMTM1ZjVlOGE0ZDcwLi5jOTljNGM4NGEwZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtMTQ0Myw3ICsxNDQzLDkgQEAgc3RhdGljIGJvb2wgbmVl
ZF9mYmNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAkvKiBX
YUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICovCiAJaWYgKGludGVs
X3Z0ZF9hY3RpdmUoKSAmJgotCSAgICAoSVNfU0tZTEFLRShkZXZfcHJpdikgfHwgSVNfQlJPWFRP
TihkZXZfcHJpdikpKSB7CisJICAgIChJU19TS1lMQUtFKGRldl9wcml2KSB8fAorCSAgICAgSVNf
QlJPWFRPTihkZXZfcHJpdikgfHwKKwkgICAgIElTX0NNTF9VTFQoZGV2X3ByaXYpKSkgewogCQlk
cm1faW5mbygmZGV2X3ByaXYtPmRybSwKIAkJCSAiRGlzYWJsaW5nIGZyYW1lYnVmZmVyIGNvbXBy
ZXNzaW9uIChGQkMpIHRvIHByZXZlbnQgc2NyZWVuIGZsaWNrZXIgd2l0aCBWVC1kIGVuYWJsZWRc
biIpOwogCQlyZXR1cm4gdHJ1ZTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
