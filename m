Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA133010E7
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EBA96EA77;
	Fri, 22 Jan 2021 23:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42276EA6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:31 +0000 (UTC)
IronPort-SDR: w8Ap0r7U2oz0j13KR6ibkvbg3pJ3sWgBxoa39NkMW8Uk0/K22bW0rJezHbuRzYIGTmW0HcYCws
 GF6ELqhvfxtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344452"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344452"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: 05x1JccbsmEh3+/nJrd2WMMN7P0LxMHL8gXLDWTK9JnOn0IeanM0XwHpVl/32jicdtu9Rmtu8g
 +A58g/p6ekTQ==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466013"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:36 -0800
Message-Id: <20210122232647.22688-7-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 07/18] drm/i915/display/dp: Do not enable PSR if
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
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwppbmRleCA2YjFmYjJiNWFmYWMuLjJjMzY1Yjc3OGY3NCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC04MTIsNiArODEyLDEzIEBA
IHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
CiAJCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOwogCWludCBwc3Jfc2V0dXBfdGltZTsK
IAorCS8qCisJICogQ3VycmVudCBQU1IgcGFuZWxzIGRvbnQgd29yayByZWxpYWJseSB3aXRoIFZS
UiBlbmFibGVkCisJICogU28gaWYgVlJSIGlzIGVuYWJsZWQsIGRvIG5vdCBlbmFibGUgUFNSLgor
CSAqLworCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQorCQlyZXR1cm47CisKIAlpZiAoIUNB
Tl9QU1IoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
