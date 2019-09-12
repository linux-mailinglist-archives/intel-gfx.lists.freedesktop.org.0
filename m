Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABFAB0CEB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 12:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151296ECB3;
	Thu, 12 Sep 2019 10:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D336ECB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 10:30:19 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 03:30:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,495,1559545200"; d="scan'208";a="192388392"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Sep 2019 03:30:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2019 13:30:14 +0300
Date: Thu, 12 Sep 2019 13:30:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190912103014.GH7482@intel.com>
References: <20190911175926.31365-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911175926.31365-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable FBC if BIOS reserved
 memory (stolen) is unavailable
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDY6NTk6MjZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFRoZSBGQkMgcmVxdWlyZXMgYSBjb3VwbGUgb2YgY29udGlndW91cyBidWZmZXJzLCB3
aGljaCB3ZSBhbGxvY2F0ZSBmcm9tCj4gc3RvbGVuIG1lbW9yeS4gSWYgc3RvbGVuIG1lbW9yeSBp
cyB1bmF2YWlsYWJsZSwgd2UgY2Fubm90IGFsbG9jYXRlIHRob3NlCj4gYnVmZmVycyBhbmQgc28g
Y2Fubm90IHN1cHBvcnQgRkJDLiBNYXJrIGl0IHNvLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Ywo+IGluZGV4IGRjMzRiMjNlMjMyMC4uMzExMWVjYWVhYmQwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gQEAgLTEzMjAsNiArMTMyMCw5IEBAIHZvaWQg
aW50ZWxfZmJjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJZmJj
LT5lbmFibGVkID0gZmFsc2U7Cj4gIAlmYmMtPmFjdGl2ZSA9IGZhbHNlOwo+ICAKPiArCWlmICgh
ZHJtX21tX2luaXRpYWxpemVkKCZkZXZfcHJpdi0+bW0uc3RvbGVuKSkKPiArCQlta3dyaXRlX2Rl
dmljZV9pbmZvKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZmJjID0gZmFsc2U7Cj4gKwoKTm90IGEg
aHVnZSBmYW4gb2YgdGhpcyBhcHByb2FjaCBzaW5jZSBpdCBtZWFucyB3ZSB3b24ndCBldmVuIG1h
a2Ugc3VyZQpGQkMgaXMgdHJ1bHkgZGlzYWJsZWQuIEJ1dCB3ZSBhbHJlYWR5IGRvIHRoaXMgZm9y
IG90aGVyIHJlYXNvbnMgc28gSQpndWVzcyBpdCdzIGZpbmUuCgpSZXZpZXdlZC1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAlpZiAobmVlZF9m
YmNfdnRkX3dhKGRldl9wcml2KSkKPiAgCQlta3dyaXRlX2RldmljZV9pbmZvKGRldl9wcml2KS0+
ZGlzcGxheS5oYXNfZmJjID0gZmFsc2U7Cj4gIAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
