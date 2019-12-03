Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BEF10FEB3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B636E527;
	Tue,  3 Dec 2019 13:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34A16E527
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 13:24:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 05:24:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="412178971"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 03 Dec 2019 05:24:04 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A1F555C1E08; Tue,  3 Dec 2019 15:24:03 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191202204316.2665847-3-chris@chris-wilson.co.uk>
References: <20191202204316.2665847-1-chris@chris-wilson.co.uk>
 <20191202204316.2665847-3-chris@chris-wilson.co.uk>
Date: Tue, 03 Dec 2019 15:24:03 +0200
Message-ID: <87blspv8y4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Try hard to bind the context
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSXQgaXMg
bm90IGFjY2VwdGFibGUgZm9yIGNvbnRleHQgcGlubmluZyB0byBmYWlsIHdpdGggLUVOT1NQQyBh
cyB3ZQo+IHNob3VsZCBhbHdheXMgYmUgYWJsZSB0byBtYWtlIHNwYWNlIGluIHRoZSBHR1RULiBU
aGUgb25seSByZWFzb24gd2UgbWF5Cj4gZmFpbCBpcyB0aGF0IG90aGVyICJ0ZW1wb3JhcnkiIGNv
bnRleHQgcGlucyBhcmUgcmVzZXJ2aW5nIHRoZWlyIHNwYWNlCj4gYW5kIHdlIG5lZWQgdG8gd2Fp
dCBmb3IgYW4gYXZhaWxhYmxlIHNsb3QuCj4KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY3Ngo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyB8IDIxICsrKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggMTBiM2Q2ZDQ0MDQ1Li43ZTIwYzZmNjJjZDUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0xOTM0LDkgKzE5MzQsMjQg
QEAgaW50IGdlbjZfcHBndHRfcGluKHN0cnVjdCBpOTE1X3BwZ3R0ICpiYXNlKQo+ICAJICogc2l6
ZS4gV2UgYWxsb2NhdGUgYXQgdGhlIHRvcCBvZiB0aGUgR1RUIHRvIGF2b2lkIGZyYWdtZW50YXRp
b24uCj4gIAkgKi8KPiAgCWlmICghYXRvbWljX3JlYWQoJnBwZ3R0LT5waW5fY291bnQpKSB7Cj4g
LQkJZXJyID0gaTkxNV92bWFfcGluKHBwZ3R0LT52bWEsCj4gLQkJCQkgICAwLCBHRU42X1BEX0FM
SUdOLAo+IC0JCQkJICAgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKPiArCQlkbyB7Cj4gKwkJCXN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gcHBndHQtPnZtYS0+dm07Cj4gKwo+ICsJCQll
cnIgPSBpOTE1X3ZtYV9waW4ocHBndHQtPnZtYSwKPiArCQkJCQkgICAwLCBHRU42X1BEX0FMSUdO
LAo+ICsJCQkJCSAgIFBJTl9HTE9CQUwgfCBQSU5fSElHSCk7Cj4gKwkJCWlmIChlcnIgIT0gLUVO
T1NQQykKPiArCQkJCWJyZWFrOwo+ICsKPiArCQkJLyogV2UgZG9uJ3QgdGFrZSBubyBmb3IgYW4g
YW5zd2VyISAqLwo+ICsJCQllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnZtLT5tdXRl
eCk7Cj4gKwkJCWlmIChlcnIgPT0gMCkgewo+ICsJCQkJZXJyID0gaTkxNV9nZW1fZXZpY3Rfdm0o
dm0pOwoKV2h5IHdvdWxkIHdlIGhvbGQgYW55IHNpZ25pZmljYW50IGFtb3VudCBvZiB2bWFzPwpJ
IHRob3VnaHQgd2UgbmVlZCB0byBraWNrIHRoZSBnZ3R0IGhhcmQgaW4gb3JkZXIgZm9yIHRoaXMK
dG8gZml0IGluLgoKLU1pa2EKCj4gKwkJCQltdXRleF91bmxvY2soJnZtLT5tdXRleCk7Cj4gKwkJ
CX0KPiArCQkJaWYgKGVycikKPiArCQkJCWJyZWFrOwo+ICsJCX0gd2hpbGUgKDEpOwo+ICAJfQo+
ICAJaWYgKCFlcnIpCj4gIAkJYXRvbWljX2luYygmcHBndHQtPnBpbl9jb3VudCk7Cj4gLS0gCj4g
Mi4yNC4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
