Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE11B816C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 21:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1EB86F9EA;
	Thu, 19 Sep 2019 19:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952AD6F9EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 19:33:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181581374"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 19 Sep 2019 12:33:04 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Sep 2019 12:33:04 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.92]) with mapi id 14.03.0439.000;
 Thu, 19 Sep 2019 12:33:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi
 clock select during DP init sequence
Thread-Index: AQHVbn5BhV0FXWsuQUynTA0FPgpq7acztVOAgAAlJIA=
Date: Thu, 19 Sep 2019 19:33:03 +0000
Message-ID: <ea796be0d96a8b015c7568f4d17049ca5c58f4ee.camel@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-2-jose.souza@intel.com>
 <20190919172007.GG29039@ideak-desk.fi.intel.com>
In-Reply-To: <20190919172007.GG29039@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <6EB7A9786D0DFD438E56F7CE5621F87D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi
 clock select during DP init sequence
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA5LTE5IGF0IDIwOjIwICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA1OjA3OjE0UE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emENCj4gd3JvdGU6DQo+ID4gRnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRh
eWxvckBpbnRlbC5jb20+DQo+ID4gDQo+ID4gU3RlcCA0LmIgd2FzIGNvbXBsZXRlIG1pc3NlZCBi
ZWNhdXNlIGl0IGlzIG9ubHkgcmVxdWlyZWQgdG8gVEMgYW5kDQo+ID4gVEJULg0KPiA+IA0KPiA+
IEJzcGVjOiA0OTE5MA0KPiA+IFNpZ25lZC1vZmYtYnk6IENsaW50b24gQSBUYXlsb3IgPGNsaW50
b24uYS50YXlsb3JAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNSArKysrLQ0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBpbmRleCAzZTYzOTQxMzk5
NjQuLjgxNzkyYTA0ZTBhYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0zMjI0LDExICszMjI0LDE0IEBAIHN0YXRpYyB2b2lkIHRn
bF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiA+ICAJaW50ZWxfZWRwX3BhbmVsX29uKGludGVsX2RwKTsNCj4gPiAgDQo+ID4gIAkvKg0KPiA+
IC0JICogMS5iLCAzLiBhbmQgNC4gaXMgZG9uZSBiZWZvcmUgdGdsX2RkaV9wcmVfZW5hYmxlX2Rw
KCkgYnk6DQo+ID4gKwkgKiAxLmIsIDMuIGFuZCA0LmEgaXMgZG9uZSBiZWZvcmUgdGdsX2RkaV9w
cmVfZW5hYmxlX2RwKCkgYnk6DQo+ID4gIAkgKiBoYXN3ZWxsX2NydGNfZW5hYmxlKCktPmludGVs
X2VuY29kZXJzX3ByZV9wbGxfZW5hYmxlKCkgYW5kDQo+ID4gIAkgKiBoYXN3ZWxsX2NydGNfZW5h
YmxlKCktPmludGVsX2VuYWJsZV9zaGFyZWRfZHBsbCgpDQo+ID4gIAkgKi8NCj4gPiAgDQo+ID4g
KwkvKiA0LmIgKi8NCj4gPiArCWludGVsX2RkaV9jbGtfc2VsZWN0KGVuY29kZXIsIGNydGNfc3Rh
dGUpOw0KPiANCj4gVGhlIEJTcGVjIDQuYiBzdGVwIGNvdWxkIGJlIG1vcmUgc3BlY2lmaWMgYWJv
dXQgdGhlIHJlZ2lzdGVyIHRvDQo+IHByb2dyYW0NCj4gKGF0IGxlYXN0IEkgaGF2ZW4ndCBmb3Vu
ZCB0aGUgbWVudGlvbiBhYm91dCBpdCkgYnV0IHNlZW1zIHRvIG1hdGNoOg0KPiANCj4gUmV2aWV3
ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gDQo+IFdoaWxlIHJldmll
d2luZyB0aGlzIEkgbm90aWNlZCB0aGF0IGJvdGgNCj4gaWNsX3BsbF90b19kZGlfY2xrX3NlbCgp
ICAgKG1pc3NpbmcgY2FzZXMgZm9yIE1HUExMNSw2KQ0KDQpOaWNlIGNhdGNoLCBqdXN0IGFkZGVk
IGEgcGF0Y2ggb24gbXkgdGMgYnJhbmNoIGZpeGluZyB0aGlzLg0KDQo+IGFuZCANCj4gaW50ZWxf
cGh5X2lzX2NvbWJvKCkgICAobm90IGNvcnJlY3QgZm9yIHBvcnQvcGh5IEMpDQo+IHdpbGwgYWxz
byBuZWVkIHRvIGdldCB1cGRhdGVkIGZvciBUR0wuDQoNCkx1Y2FzIGFscmVhZHkgYW5zd2VyZWQg
dGhpcyBvbmUuDQoNClRoYW5rcw0KDQoNCj4gDQo+ID4gKw0KPiA+ICAJLyogNS4gKi8NCj4gPiAg
CWlmICghaW50ZWxfcGh5X2lzX3RjKGRldl9wcml2LCBwaHkpIHx8DQo+ID4gIAkgICAgZGlnX3Bv
cnQtPnRjX21vZGUgIT0gVENfUE9SVF9UQlRfQUxUKQ0KPiA+IC0tIA0KPiA+IDIuMjMuMA0KPiA+
IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
