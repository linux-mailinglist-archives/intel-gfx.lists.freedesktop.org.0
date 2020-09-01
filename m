Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9A8258501
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 03:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964456E554;
	Tue,  1 Sep 2020 01:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F066E536
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 01:06:41 +0000 (UTC)
IronPort-SDR: ugYzNUYFXtjhwqbMpbU3QlSmNgfaM399eKHGEW/WsQYfehApNfZcuFxM6O3lPtyURhJ7pHTnT3
 lZPFnpfTwKIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="156343633"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="156343633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 18:06:41 -0700
IronPort-SDR: 4cKXtIgMT3MEcZ+/Ldiiu+YKOtG81EMd7UHk1aQK6oJFk9wH0UoP3ucMzXxeSvbQggeGxpHe6+
 qtq0kHLjVUNw==
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="476977347"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 18:06:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Aug 2020 18:09:22 -0700
Message-Id: <20200901010924.235808-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200901010924.235808-1-jose.souza@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub
 features
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

SW4gY2FzZSBQU1IyIGlzIGRpc2FibGVkIGJ5IGRlYnVnZnMgZGMzY29fZW5hYmxlZCBhbmQKcHNy
Ml9zZWxfZmV0Y2hfZW5hYmxlZCB3ZXJlIHN0aWxsIGJlaW5nIHNldCBjYXVzaW5nIHNvbWUgY29k
ZSBwYXRocwp0byBiZSBleGVjdXRlZCB3ZXJlIGl0IHNob3VsZCBub3QuCldlIGhhdmUgdGVzdHMg
Zm9yIFBTUjEgYW5kIFBTUjIgc28ga2VlcCB0aG9zZSBmZWF0dXJlcyBkaXNhYmxlZCB3aGVuClBT
UjEgaXMgYWN0aXZlIGJ1dCBQU1IyIGlzIHN1cHBvcnRlZCBpcyBpbXBvcnRhbnQuCgpDYzogR3dh
bi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDRlMDlhZTYxZDRhYS4uNjY5OGQwMjA5ODc5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTk2MiwxMiArOTYy
LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAlkZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxlZCA9IGludGVs
X3BzcjJfZW5hYmxlZChkZXZfcHJpdiwgY3J0Y19zdGF0ZSk7CiAJZGV2X3ByaXYtPnBzci5idXN5
X2Zyb250YnVmZmVyX2JpdHMgPSAwOwogCWRldl9wcml2LT5wc3IucGlwZSA9IHRvX2ludGVsX2Ny
dGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZTsKLQlkZXZfcHJpdi0+cHNyLmRjM2NvX2Vu
YWJsZWQgPSAhIWNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lOworCWRldl9wcml2LT5wc3IuZGMz
Y29fZW5hYmxlZCA9ICEhY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUgJiYKKwkJCQkgICAgICBk
ZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxlZDsKIAlkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIgPSBj
cnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKIAkvKiBEQzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0
IDYgaWRsZSBmcmFtZXMgKi8KIAl2YWwgPSB1c2Vjc190b19qaWZmaWVzKGludGVsX2dldF9mcmFt
ZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7CiAJZGV2X3ByaXYtPnBzci5kYzNjb19leGl0X2Rl
bGF5ID0gdmFsOwotCWRldl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCA9IGNydGNf
c3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaDsKKwlkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYKKwkJCQkJ
ICAgICAgIGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkOwogCiAJLyoKIAkgKiBJZiBhIFBTUiBl
cnJvciBoYXBwZW5lZCBhbmQgdGhlIGRyaXZlciBpcyByZWxvYWRlZCwgdGhlIEVEUF9QU1JfSUlS
CkBAIC0xMTc4LDcgKzExODAsNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5f
dHJrX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdAogCXN0cnVjdCBp
OTE1X3BzciAqcHNyID0gJmRldl9wcml2LT5wc3I7CiAKIAlpZiAoIUhBU19QU1IyX1NFTF9GRVRD
SChkZXZfcHJpdikgfHwKLQkgICAgIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkK
KwkgICAgIWRldl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkKIAkJcmV0dXJuOwog
CiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19DVEwocHNyLT50cmFuc2Nv
ZGVyKSwKQEAgLTExODksOCArMTE5MSw5IEBAIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCSBzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGlu
dGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCi0JaWYg
KCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpCisJaWYgKCFkZXZfcHJpdi0+cHNy
LnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpCiAJCXJldHVybjsKIAogCWNydGNfc3RhdGUtPnBzcjJf
bWFuX3RyYWNrX2N0bCA9IFBTUjJfTUFOX1RSS19DVExfRU5BQkxFIHwKLS0gCjIuMjguMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
