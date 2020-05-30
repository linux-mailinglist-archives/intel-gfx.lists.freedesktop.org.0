Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9271E8CDB
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 03:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2392D6E992;
	Sat, 30 May 2020 01:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5D46E992
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2020 01:30:30 +0000 (UTC)
IronPort-SDR: ugRpC/w15V0U+FRX2xKeELwqU0laXbMX9LWrJNRZnMW+sHEOZMYFciebiQgAEqeYd+4w74C+gY
 qp/M1Ia0QrsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 18:30:29 -0700
IronPort-SDR: cqDpySXxjWTyCXDCTptJb/Sqa8zxoCmeuctpUSsOdDrVEzplfM1VWPMgqcJUN8K+IjVqkW5L9Y
 fImkuxwV025Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,451,1583222400"; d="scan'208";a="257482859"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2020 18:30:29 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 18:30:29 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.114]) with mapi id 14.03.0439.000;
 Fri, 29 May 2020 18:30:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915: Fix cpt/ppt max pre-emphasis
Thread-Index: AQHWKISkA4l/UKon5UGh6XqTlyG6yajAaHWA
Date: Sat, 30 May 2020 01:30:28 +0000
Message-ID: <1ac2f3c04f389c3e1582de80772001e669d5ea26.camel@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200512174145.3186-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.186.10]
Content-ID: <40B32CAE691159438F3A138EDC18F916@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Fix cpt/ppt max pre-emphasis
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
PiANCj4gY3B0L3BwdCBzdXBwb3J0IHByZS1lbXBoYXNpcyBsZXZlbCAzLiBMZXQncyBhY3R1YWxs
eSBkZWNsYXJlDQo+IHN1cHBvcnQgZm9yIGl0LCBpbnN0ZWFkIG9mIGNsYW1waW5nIHRoaW5ncyB0
byBsZXZlbCAyLg0KPiANCj4gQWxzbyB0d2VhayB0aGUgaWYtbGFkZGVyIGluIGludGVsX2RwX3Zv
bHRhZ2VfbWF4KCkgdG8gbWF0Y2gNCj4gaW50ZWxfZHBfcHJlX2VtcGhhc2lzX21heCgpIHRvIG1h
a2UgaXQgZWFzaWVyIHRvIGNvbXBhcmUgdGhlbS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDggKysrKy0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDY3NzIzZGVk
ZTFkMS4uNzU0MTI2NGZmNGU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IEBAIC0zOTU3LDEyICszOTU3LDExIEBAIGludGVsX2RwX3ZvbHRhZ2VfbWF4
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICANCj4gIAlpZiAoSEFTX0RESShkZXZfcHJp
dikpDQo+ICAJCXJldHVybiBpbnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoZW5jb2Rlcik7DQo+IC0J
ZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJp
dikpDQo+ICsJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklF
VyhkZXZfcHJpdikgfHwNCj4gKwkJIChIQVNfUENIX0NQVChkZXZfcHJpdikgJiYgcG9ydCAhPSBQ
T1JUX0EpKQ0KPiAgCQlyZXR1cm4gRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zOw0KPiAg
CWVsc2UgaWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0EpDQo+ICAJ
CXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzI7DQo+IC0JZWxzZSBpZiAoSEFT
X1BDSF9DUFQoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQ0KPiAtCQlyZXR1cm4gRFBfVFJB
SU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zOw0KPiAgCWVsc2UNCj4gIAkJcmV0dXJuIERQX1RSQUlO
X1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjsNCj4gIH0NCj4gQEAgLTM5NzYsNyArMzk3NSw4IEBAIGlu
dGVsX2RwX3ByZV9lbXBoYXNpc19tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdTggdm9s
dGFnZV9zd2luZykNCj4gIA0KPiAgCWlmIChIQVNfRERJKGRldl9wcml2KSkgew0KPiAgCQlyZXR1
cm4gaW50ZWxfZGRpX2RwX3ByZV9lbXBoYXNpc19tYXgoZW5jb2Rlciwgdm9sdGFnZV9zd2luZyk7
DQo+IC0JfSBlbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVX
KGRldl9wcml2KSkgew0KPiArCX0gZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwg
SVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgfHwNCj4gKwkJICAgKEhBU19QQ0hfQ1BUKGRldl9wcml2
KSAmJiBwb3J0ICE9IFBPUlRfQSkpIHsNCg0KTWF0Y2hlcyBpbnRlbF9kcF92b2x0YWdlX21heCgp
Lg0KDQo+ICAJCXN3aXRjaCAodm9sdGFnZV9zd2luZyAmIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdf
TUFTSykgew0KPiAgCQljYXNlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMDoNCj4gIAkJ
CXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8zOw0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
