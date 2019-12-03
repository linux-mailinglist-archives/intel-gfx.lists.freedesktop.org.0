Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9783B1101F3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 17:18:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06406E0CB;
	Tue,  3 Dec 2019 16:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1875B6E0CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 16:18:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 08:17:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="293849641"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 03 Dec 2019 08:17:50 -0800
Date: Tue, 3 Dec 2019 08:17:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191203161750.GL3251369@mdroper-desk1.amr.corp.intel.com>
References: <20191203023110.488972-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203023110.488972-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Define each HBR link rate
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

T24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMDY6MzE6MDlQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUaGlzIGlzIGJldHRlciB0aGFuIGtlZXAgdGhvc2UgdmFsdWVzIGlu
IHRoZSBjb2RlIHRoYXQgeW91IGFsd2F5cwo+IG5lZWQgdG8gY2hlY2sgdGhlIERQIHNwZWMgdG8g
a25vdyB3aGF0IGxldmVsIG9mIEhCUiBpdCBpcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KCkkgdGhpbmsgdGhlcmUgYXJl
IGEgYnVuY2ggb2Ygb3RoZXIgcGxhY2VzIHdoZXJlIHdlIGNvdWxkIHVzZSB0aGVzZSBuZXcKbWFj
cm9zIHRvbywgYnV0IHRoYXQgY2FuIGJlIGRvbmUgaW4gYSBmb2xsb3d1cC4KClJldmlld2VkLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKV2UgbWlnaHQgd2FudCB0
byBhZGQgUkJSICgxNjIwMDApIGFzIHdlbGwgZm9yIGNvbXBsZXRlbmVzcyBpbiB0aGUKZnV0dXJl
LgoKCk1hdHQKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgfCA2ICsrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5k
ZXggYTk3NjYwNmQyMWM3Li45MTRmMGNjNGQyMzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtNDksNiArNDksMTAgQEAKPiAgI2luY2x1ZGUgImlu
dGVsX3RjLmgiCj4gICNpbmNsdWRlICJpbnRlbF92ZHNjLmgiCj4gIAo+ICsjZGVmaW5lIEhCUl9S
QVRFIDI3MDAwMAo+ICsjZGVmaW5lIEhCUjJfUkFURSA1NDAwMDAKPiArI2RlZmluZSBIQlIzX1JB
VEUgODEwMDAwCj4gKwo+ICBzdHJ1Y3QgZGRpX2J1Zl90cmFucyB7Cj4gIAl1MzIgdHJhbnMxOwkv
KiBiYWxhbmNlIGxlZyBlbmFibGUsIGRlLWVtcGggbGV2ZWwgKi8KPiAgCXUzMiB0cmFuczI7CS8q
IHZyZWYgc2VsLCB2c3dpbmcgKi8KPiBAQCAtODg4LDcgKzg5Miw3IEBAIGljbF9nZXRfY29tYm9f
YnVmX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IHR5cGUsIGlu
dCByYXRlLAo+ICAJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkpIHsKPiAgCQkqbl9lbnRy
aWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGRtaSk7Cj4g
IAkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pOwo+IC0JfSBlbHNl
IGlmIChyYXRlID4gNTQwMDAwICYmIHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewo+ICsJfSBl
bHNlIGlmIChyYXRlID4gSEJSMl9SQVRFICYmIHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewo+
ICAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9u
c19lZHBfaGJyMyk7Cj4gIAkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19l
ZHBfaGJyMzsKPiAgCX0gZWxzZSBpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQICYmIGRldl9w
cml2LT52YnQuZWRwLmxvd192c3dpbmcpIHsKPiAtLSAKPiAyLjI0LjAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVy
CkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQK
SW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
