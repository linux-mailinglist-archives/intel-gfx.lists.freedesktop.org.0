Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEB717410F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 21:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0371B6F4CA;
	Fri, 28 Feb 2020 20:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6E46F4CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 20:36:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 12:36:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="231196467"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 28 Feb 2020 12:35:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 22:35:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 22:35:51 +0200
Message-Id: <20200228203552.30273-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Enable transition watermarks for
 glk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFyZSBtaXN0YWtlbmx5IHNraXBwaW5nIHRyYW5zaXRpb24gd2F0ZXJtYXJrcyBvbiBnbGsuIEZp
eAp1cCB0aGUgY29uZGl0aW9uIGZvciBnbGssIGFuZCB0b3NzIGluIHRoZSB3L2EgbmFtZSBmcm9t
CnRoZSBkYXRhYmFzZS4KCnYyOiBSZW9yZGVyIHRoZSBpcGMgZW5hYmxlZCB2cy4gcGxhdGZvcm0g
Y2hlY2sgdG8gYmUgbW9yZSBzZW5zaWJsZQoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4gI3YxCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyB8IDExICsrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGEzZDc2ZTY5
Y2FhZS4uZjdjMTFiOWYyYzI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTUxMjAsMTQg
KzUxMjAsMTcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfdHJhbnNpdGlvbl93bShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljb25zdCB1MTYgdHJhbnNfYW1v
dW50ID0gMTA7IC8qIFRoaXMgaXMgY29uZmlndXJhYmxlIGFtb3VudCAqLwogCXUxNiB3bTBfc2Vs
X3Jlc19iLCB0cmFuc19vZmZzZXRfYiwgcmVzX2Jsb2NrczsKIAotCS8qIFRyYW5zaXRpb24gV00g
YXJlIG5vdCByZWNvbW1lbmRlZCBieSBIVyB0ZWFtIGZvciBHRU45ICovCi0JaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPD0gOSkKLQkJcmV0dXJuOwotCiAJLyogVHJhbnNpdGlvbiBXTSBkb24ndCBt
YWtlIGFueSBzZW5zZSBpZiBpcGMgaXMgZGlzYWJsZWQgKi8KIAlpZiAoIWRldl9wcml2LT5pcGNf
ZW5hYmxlZCkKIAkJcmV0dXJuOwogCisJLyoKKwkgKiBXYURpc2FibGVUV006c2tsLGtibCxjZmws
Ynh0CisJICogVHJhbnNpdGlvbiBXTSBhcmUgbm90IHJlY29tbWVuZGVkIGJ5IEhXIHRlYW0gZm9y
IEdFTjkKKwkgKi8KKwlpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikgfHwgSVNfQlJPWFRPTihkZXZf
cHJpdikpCisJCXJldHVybjsKKwogCXRyYW5zX21pbiA9IDE0OwogCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQogCQl0cmFuc19taW4gPSA0OwotLSAKMi4yNC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
