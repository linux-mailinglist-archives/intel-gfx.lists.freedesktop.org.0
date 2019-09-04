Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F39F9A868E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D40789BFD;
	Wed,  4 Sep 2019 16:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002A189BFD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="183955574"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 04 Sep 2019 09:26:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:12 +0300
Message-Id: <20190904162625.15048-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Parametrize PFIT_PIPE
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIFBGSVRfUElQRSBzdHVmZiBsZXNzIHVnbHkgdmlhIHBhcmFtZXRyaXppYXRpb24uCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyB8IDMg
Ky0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAxICsKIDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYwppbmRleCBiYzE0ZTljMDI4NWEuLjQ2
MDE0MTZjNjAzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wYW5lbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwu
YwpAQCAtNDMwLDggKzQzMCw3IEBAIHZvaWQgaW50ZWxfZ21jaF9wYW5lbF9maXR0aW5nKHN0cnVj
dCBpbnRlbF9jcnRjICppbnRlbF9jcnRjLAogCS8qIDk2NSsgd2FudHMgZnV6enkgZml0dGluZyAq
LwogCS8qIEZJWE1FOiBoYW5kbGUgbXVsdGlwbGUgcGFuZWxzIGJ5IGZhaWxpbmcgZ3JhY2VmdWxs
eSAqLwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQpCi0JCXBmaXRfY29udHJvbCB8PSAo
KGludGVsX2NydGMtPnBpcGUgPDwgUEZJVF9QSVBFX1NISUZUKSB8Ci0JCQkJIFBGSVRfRklMVEVS
X0ZVWlpZKTsKKwkJcGZpdF9jb250cm9sIHw9IFBGSVRfUElQRShpbnRlbF9jcnRjLT5waXBlKSB8
IFBGSVRfRklMVEVSX0ZVWlpZOwogCiBvdXQ6CiAJaWYgKChwZml0X2NvbnRyb2wgJiBQRklUX0VO
QUJMRSkgPT0gMCkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNDVlZDk2ZDdjNTk5Li4y
MjEzMGFkYTg5MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDc4Nyw2ICs0Nzg3LDcg
QEAgZW51bSB7CiAjZGVmaW5lICAgUEZJVF9FTkFCTEUJCSgxIDw8IDMxKQogI2RlZmluZSAgIFBG
SVRfUElQRV9NQVNLCSgzIDw8IDI5KQogI2RlZmluZSAgIFBGSVRfUElQRV9TSElGVAkyOQorI2Rl
ZmluZSAgIFBGSVRfUElQRShwaXBlKQkoKHBpcGUpIDw8IDI5KQogI2RlZmluZSAgIFZFUlRfSU5U
RVJQX0RJU0FCTEUJKDAgPDwgMTApCiAjZGVmaW5lICAgVkVSVF9JTlRFUlBfQklMSU5FQVIJKDEg
PDwgMTApCiAjZGVmaW5lICAgVkVSVF9JTlRFUlBfTUFTSwkoMyA8PCAxMCkKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
