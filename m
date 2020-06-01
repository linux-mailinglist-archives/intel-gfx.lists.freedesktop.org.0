Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5541EB025
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 22:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF3989F19;
	Mon,  1 Jun 2020 20:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2B989F19
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 20:23:09 +0000 (UTC)
IronPort-SDR: 7n4CGFdf8TUI94L/OAwhVzCJ47sVyXo6aqSIpc/ACgxDUREejR8HTPORPu/6o2ZOxxWSedn6IZ
 tkEupr7YPNkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 13:23:09 -0700
IronPort-SDR: KmXegD9U2VYiEEduOyTH8eY7ALJq4BPYlDOYxjB8xq+ZUM4U11SXexRpOCXPELTGpp9u/N7qTj
 1qOcdqgPHViA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="470409391"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jun 2020 13:23:09 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 13:23:09 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.151]) with mapi id 14.03.0439.000;
 Mon, 1 Jun 2020 13:23:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915: Fix ibx max vswing/preemph
Thread-Index: AQHWKISkQrObTZyCwUOVQvoKpD0vuKjEyZqA
Date: Mon, 1 Jun 2020 20:23:08 +0000
Message-ID: <f1dd797324015d11f1f600b6997d4ac7f5e8e453.camel@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200512174145.3186-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.39.108]
Content-ID: <6E9723106B4FA84F91EE4D2CA5A09C78@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Fix ibx max vswing/preemph
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

T24gVHVlLCAyMDIwLTA1LTEyIGF0IDIwOjQxICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSUJYIHN1cHBvcnRzIHZzd2luZyBsZXZlbCAzIGFuZCBwcmUtZW1waGFzaXMgbGV2ZWwg
My4gRG9uJ3QNCj4gbGltaXQgaXQgdG8gbGV2ZWwgMiBmb3IgdGhvc2UuDQoNCk1hdGNoZXMgaHR0
cHM6Ly8wMS5vcmcvbGludXhncmFwaGljcy9kb2N1bWVudGF0aW9uL2RyaXZlci1kb2N1bWVudGF0
aW9uLXBybXMvMjAxMC1pbnRlbC1jb3JlLXByb2Nlc3Nvci1mYW1pbHkNCg0KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPA0Kam9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRl
eCA3NTQxMjY0ZmY0ZTkuLjA5MjRlMDQxZTFiZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMzk1OCw3ICszOTU4LDcgQEAgaW50ZWxfZHBfdm9s
dGFnZV9tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoSEFTX0RESShkZXZf
cHJpdikpDQo+ICAJCXJldHVybiBpbnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoZW5jb2Rlcik7DQo+
ICAJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZf
cHJpdikgfHwNCj4gLQkJIChIQVNfUENIX0NQVChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0Ep
KQ0KPiArCQkgKEhBU19QQ0hfU1BMSVQoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKSkNCj4g
IAkJcmV0dXJuIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMzsNCj4gIAllbHNlIGlmIChJ
U19JVllCUklER0UoZGV2X3ByaXYpICYmIHBvcnQgPT0gUE9SVF9BKQ0KPiAgCQlyZXR1cm4gRFBf
VFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8yOw0KPiBAQCAtMzk3Niw3ICszOTc2LDcgQEAgaW50
ZWxfZHBfcHJlX2VtcGhhc2lzX21heChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OCB2b2x0
YWdlX3N3aW5nKQ0KPiAgCWlmIChIQVNfRERJKGRldl9wcml2KSkgew0KPiAgCQlyZXR1cm4gaW50
ZWxfZGRpX2RwX3ByZV9lbXBoYXNpc19tYXgoZW5jb2Rlciwgdm9sdGFnZV9zd2luZyk7DQo+ICAJ
fSBlbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9w
cml2KSB8fA0KPiAtCQkgICAoSEFTX1BDSF9DUFQoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9B
KSkgew0KPiArCQkgICAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0Ep
KSB7DQo+ICAJCXN3aXRjaCAodm9sdGFnZV9zd2luZyAmIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdf
TUFTSykgew0KPiAgCQljYXNlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMDoNCj4gIAkJ
CXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8zOw0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
