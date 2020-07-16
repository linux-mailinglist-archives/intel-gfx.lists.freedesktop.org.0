Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F328222574
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22186E287;
	Thu, 16 Jul 2020 14:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16BF6E287
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 14:27:47 +0000 (UTC)
IronPort-SDR: i9LImEIk9XAsIqVU1mV6UTnmCZIespcL0JKVlsTn2P6PzTuY5NG3DrA/L0iKNHPPugzN+4dA+g
 bZxHuO+Nqbpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="146897269"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="146897269"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 07:27:40 -0700
IronPort-SDR: wq+pPDCb1MBfBG3+KXo2ntwuH3Jiu1cnLRbWMlJ4Nxwy9WIRySW5uGa9xpis2zhMR2HtG18xk6
 3yZcSCLGHjXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460487728"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 07:27:38 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:28:57 +0530
Message-Id: <20200716145857.6911-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v2] drm/i915/display/fbc: Disable fbc by default on TGL
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

RmJjIGlzIGNhdXNpbmcgcmFuZG9tIHVuZGVycnVucyBpbiBDSSBleGVjdXRpb24gb24gVEdMIHBs
YXRmb3Jtcy4KRGlzYWJsaW5nIHRoZSBzYW1lIHdoaWxlIHRoZSBwcm9ibGVtIGlzIGJlaW5nIGRl
YnVnZ2VkIGFuZCBhbmFseXplZC4KCnYyOiBNb3ZlZCB0aGUgY2hlY2sgYmVsb3cgdGhlIG1vZHVs
ZSBwYXJhbSBjaGVjayAoVmlsbGUpCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMg
fCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCAzYTRmOTgwNzg4YTYuLjE5NWI4YmU0
NTMyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0xNDI2
LDYgKzE0MjYsMTMgQEAgc3RhdGljIGludCBpbnRlbF9zYW5pdGl6ZV9mYmNfb3B0aW9uKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoIUhBU19GQkMoZGV2X3ByaXYpKQog
CQlyZXR1cm4gMDsKIAorCS8qCisJICogRmJjIGlzIGNhdXNpbmcgcmFuZG9tIHVuZGVycnVucyBp
biBDSSBleGVjdXRpb24gb24gVEdMIHBsYXRmb3Jtcy4KKwkgKiBEaXNhYmxpbmcgdGhlIHNhbWUg
d2hpbGUgdGhlIHByb2JsZW0gaXMgYmVpbmcgZGVidWdnZWQgYW5kIGFuYWx5emVkLgorCSAqLwor
CWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQorCQlyZXR1cm4gMDsKKwogCWlmIChJU19CUk9B
RFdFTEwoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKIAkJcmV0dXJuIDE7
CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
