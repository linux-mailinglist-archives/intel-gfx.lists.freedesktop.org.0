Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4872537D1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 21:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAFA6EA9E;
	Wed, 26 Aug 2020 19:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 642206E369
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 19:05:32 +0000 (UTC)
IronPort-SDR: QlSX7yLz0talt+tQQ+io/sSN8MHoNCRO5G/j1/QfHptyZTkGsz1eG5aN09oh9Jje9L/uqp3qXX
 5T38sYopXirQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153790977"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="153790977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 12:05:32 -0700
IronPort-SDR: Da2IP+U2JcXbn70p/5fJc1aXfyEJ5LhZQK+jpBvSvInkRfowtqhuISwgf20BE2EC+Zy1Y0tDs9
 g8q8dUdgpq8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="403157647"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2020 12:05:31 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 12:06:57 -0700
Message-Id: <20200826190657.18283-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200826190657.18283-1-manasi.d.navare@intel.com>
References: <20200826190657.18283-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display/dp: Do not enable PSR if
 VRR is enabled
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

RXZlbiB0aG91Z2ggb3VyIEhXIHN1cHBvcnRzIFBTUiArIFZSUiwgdGhlIGF2YWlsYWJsZSBwYW5l
bHMKZG8gbm90IHdvcmsgcmVsaWFibHkgd2l0aCBQU1IgYW5kIFZSUiB0b2dldGhlci4gU28gaWYg
dXNlcgpyZXF1ZXN0ZWQgVlJSIGFuZCBpcyBzdXBwb3J0ZWQgYnkgSFcgZW5hYmxlIHRoYXQgYW5k
IGRvIG5vdAplbmFibGUgUFNSIGluIHRoYXQgY2FzZS4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwppbmRleCAyYjAwNGVlOTYxOWMuLmYzN2QxNzU2OTAwOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC04MTEsNiArODExLDEzIEBA
IHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
CiAJCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOwogCWludCBwc3Jfc2V0dXBfdGltZTsK
IAorCS8qCisJICogQ3VycmVudCBQU1IgcGFuZWxzIGRvbnQgd29yayByZWxpYWJseSB3aXRoIFZS
UiBlbmFibGVkCisJICogU28gaWYgVlJSIGlzIGVuYWJsZWQsIGRvIG5vdCBlbmFibGUgUFNSLgor
CSAqLworCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQorCQlyZXR1cm47CisKIAlpZiAoIUNB
Tl9QU1IoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
