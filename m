Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0530D653
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A066EA31;
	Wed,  3 Feb 2021 09:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B076EA31
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:30:48 +0000 (UTC)
IronPort-SDR: YEbuJwVFFca9n6UigU4UAWmjhA2BH/BUlgwGyxTfmQRjty33B/TLC1aogIMnfv4PzyIPvm2aO4
 pyUfW6MgdG+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="181159024"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="181159024"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:30:47 -0800
IronPort-SDR: plsLEjxuFOe/ml+vJEWuRTD7G7oyTdaNNALy0AWh/4s2aI4Lh0Su04fD6MPjVL08IKma5fSx/o
 Tujov3rMr43A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="372313456"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 03 Feb 2021 01:30:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Feb 2021 11:30:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 11:30:44 +0200
Message-Id: <20210203093044.30532-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reject 446-480MHz HDMI clock on GLK
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBCWFQvR0xLIERQTEwgY2FuJ3QgZ2VuZXJhdGUgY2VydGFpbiBmcmVxdWVuY2llcy4gV2UgYWxy
ZWFkeQpyZWplY3QgdGhlIDIzMy0yNDBNSHogcmFuZ2Ugb24gYm90aC4gQnV0IG9uIEdMSyB0aGUg
RFBMTCBtYXgKZnJlcXVlbmN5IHdhcyBidW1wZWQgZnJvbSAzMDBNSHogdG8gNTk0TUh6LCBzbyBu
b3cgd2UgZ2V0IHRvCmFsc28gd29ycnkgYWJvdXQgdGhlIDQ0Ni00ODBNSHogcmFuZ2UgKGRvdWJs
ZSB0aGUgb3JpZ2luYWwKcHJvYmxlbSByYW5nZSkuIFJlamVjdCBhbnkgZnJlcXVlbmN5IHdpdGhp
biB0aGUgaGlnaGVyCnByb2JsZW1hdGljIHJhbmdlIGFzIHdlbGwuCgpDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50
ZWwvLS9pc3N1ZXMvMzAwMApTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
CmluZGV4IDY2ZTFhYzM4ODdjNi4uYjU5M2E3MWU2NTE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjIxOCw3ICsyMjE4LDExIEBAIGhkbWlfcG9ydF9j
bG9ja192YWxpZChzdHJ1Y3QgaW50ZWxfaGRtaSAqaGRtaSwKIAkJCQkJICBoYXNfaGRtaV9zaW5r
KSkKIAkJcmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsKIAotCS8qIEJYVCBEUExMIGNhbid0IGdlbmVy
YXRlIDIyMy0yNDAgTUh6ICovCisJLyogR0xLIERQTEwgY2FuJ3QgZ2VuZXJhdGUgNDQ2LTQ4MCBN
SHogKi8KKwlpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgJiYgY2xvY2sgPiA0NDY2NjYgJiYg
Y2xvY2sgPCA0ODAwMDApCisJCXJldHVybiBNT0RFX0NMT0NLX1JBTkdFOworCisJLyogQlhUL0dM
SyBEUExMIGNhbid0IGdlbmVyYXRlIDIyMy0yNDAgTUh6ICovCiAJaWYgKElTX0dFTjlfTFAoZGV2
X3ByaXYpICYmIGNsb2NrID4gMjIzMzMzICYmIGNsb2NrIDwgMjQwMDAwKQogCQlyZXR1cm4gTU9E
RV9DTE9DS19SQU5HRTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
