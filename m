Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A5F1E8CE7
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 03:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D226E993;
	Sat, 30 May 2020 01:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138446E993
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2020 01:38:30 +0000 (UTC)
IronPort-SDR: KCuroDdgxZ6iKqVo/8lPNIvSQiLmv2XBen2+tV9hzjdn2pejYBbmNYous9DZmzoRqLTeGfvCIo
 ReicrjdUDzyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 18:38:29 -0700
IronPort-SDR: n4ltanozm26uSRY/7TD0Xy6zOqV13LidHsOkUQ+8DMAmw2YYqtIV0z9bN+72VScHYTYLoqvvxm
 /61dYGFMQ+Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,451,1583222400"; d="scan'208";a="257483889"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2020 18:38:29 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 18:38:28 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX161.amr.corp.intel.com ([10.18.125.9]) with mapi id 14.03.0439.000;
 Fri, 29 May 2020 18:38:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/7] drm/i915: Fix ivb cpu edp vswing
Thread-Index: AQHWKISutbqLCwt0gk2ApKwxAPU8r6jAarGA
Date: Sat, 30 May 2020 01:38:27 +0000
Message-ID: <fb400aa3e08bcee5792ddc0871bcb43a7b7ff15a.camel@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200512174145.3186-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.186.10]
Content-ID: <6D7132544BDBB64693F240B94232E099@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Fix ivb cpu edp vswing
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
PiANCj4gQWNjb3JkaW5nIHRvIHRoZSBEUCBzcGVjIHN1cHBvcnRpbmcgdnN3aW5nIDEgKyBwcmVl
bXBoIDIgaXMNCj4gbWFuZGF0b3J5LiBXZSBkb24ndCBoYXZlIHRoZSBodyBzZXR0aW5ncyBmb3Ig
dGhhdCB0aG91Z2guIEluDQo+IG9yZGVyIHRvIHByZXRlbmQgdG8gZm9sbG93IHRoZSBEUCBzcGVj
IGxldCdzIGp1c3Qgc2VsZWN0DQo+IHZzd2luZyAwICsgcHJlZW1waCAyIGluIHRoaXMgY2FzZSAo
dGhlIERQIHNwZWMgc2F5cyB0byB1c2UNCj4gdGhlIHJlcXVlc3RlZCBwcmVlbXBoIGluIHByZWZl
cmVuY2UgdG8gdGhlIHZzd2luZyB3aGVuIHRoZQ0KPiByZXF1ZXN0ZWQgdmFsdWVzIGFyZW4ndCBz
dXBwb3J0ZWQpLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTMgKy0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDkyNGUwNDFlMWJmLi40OTUyOTE4
ZDA5MDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
QEAgLTM5NjAsOCArMzk2MCw2IEBAIGludGVsX2RwX3ZvbHRhZ2VfbWF4KHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNf
Q0hFUlJZVklFVyhkZXZfcHJpdikgfHwNCj4gIAkJIChIQVNfUENIX1NQTElUKGRldl9wcml2KSAm
JiBwb3J0ICE9IFBPUlRfQSkpDQo+ICAJCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xF
VkVMXzM7DQo+IC0JZWxzZSBpZiAoSVNfSVZZQlJJREdFKGRldl9wcml2KSAmJiBwb3J0ID09IFBP
UlRfQSkNCj4gLQkJcmV0dXJuIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjsNCj4gIAll
bHNlDQo+ICAJCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzI7DQo+ICB9DQo+
IEBAIC0zOTg4LDE2ICszOTg2LDYgQEAgaW50ZWxfZHBfcHJlX2VtcGhhc2lzX21heChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLCB1OCB2b2x0YWdlX3N3aW5nKQ0KPiAgCQlkZWZhdWx0Og0KPiAg
CQkJcmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzA7DQo+ICAJCX0NCj4gLQl9IGVsc2Ug
aWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0EpIHsNCj4gLQkJc3dp
dGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19NQVNLKSB7DQo+IC0J
CWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8wOg0KPiAtCQkJcmV0dXJuIERQX1RS
QUlOX1BSRV9FTVBIX0xFVkVMXzI7DQo+IC0JCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19M
RVZFTF8xOg0KPiAtCQljYXNlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjoNCj4gLQkJ
CXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8xOw0KPiAtCQlkZWZhdWx0Og0KPiAtCQkJ
cmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzA7DQo+IC0JCX0NCj4gIAl9IGVsc2Ugew0K
PiAgCQlzd2l0Y2ggKHZvbHRhZ2Vfc3dpbmcgJiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX01BU0sp
IHsNCj4gIAkJY2FzZSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzA6DQo+IEBAIC00Mjkz
LDYgKzQyODEsNyBAQCBzdGF0aWMgdTMyIGl2Yl9jcHVfZWRwX3NpZ25hbF9sZXZlbHModTggdHJh
aW5fc2V0KQ0KPiAgCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8wIHwgRFBfVFJB
SU5fUFJFX0VNUEhfTEVWRUxfMToNCj4gIAkJcmV0dXJuIEVEUF9MSU5LX1RSQUlOXzQwME1WXzNf
NURCX0lWQjsNCj4gIAljYXNlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMCB8IERQX1RS
QUlOX1BSRV9FTVBIX0xFVkVMXzI6DQo+ICsJY2FzZSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xF
VkVMXzEgfCBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8yOg0KPiAgCQlyZXR1cm4gRURQX0xJTktf
VFJBSU5fNDAwTVZfNkRCX0lWQjsNCj4gIA0KPiAgCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lO
R19MRVZFTF8xIHwgRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMDoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
