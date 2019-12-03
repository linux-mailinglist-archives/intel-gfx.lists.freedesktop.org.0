Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCFB111B23
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 22:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111A06F416;
	Tue,  3 Dec 2019 21:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D350D6F416
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 21:48:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 13:48:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="205143686"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 03 Dec 2019 13:48:17 -0800
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 13:48:17 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.88]) with mapi id 14.03.0439.000;
 Tue, 3 Dec 2019 13:48:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Define each HBR link rate
Thread-Index: AQHVqYG+CVRAUI01WkKBiveGU5u7lKeopagAgABD5wCAAJBGAA==
Date: Tue, 3 Dec 2019 21:48:16 +0000
Message-ID: <284e7727581177a282b86f1c50906b73fe99c2d3.camel@intel.com>
References: <20191203023110.488972-1-jose.souza@intel.com>
 <87a789kc7v.fsf@intel.com> <20191203131154.GP1208@intel.com>
In-Reply-To: <20191203131154.GP1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.67]
Content-ID: <2F1CE5BF573ED44E8CF62A702C0B17C0@intel.com>
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDE1OjExICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRGVjIDAzLCAyMDE5IGF0IDExOjA4OjUyQU0gKzAyMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIE1vbiwgMDIgRGVjIDIwMTksIEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gVGhpcyBpcyBiZXR0ZXIg
dGhhbiBrZWVwIHRob3NlIHZhbHVlcyBpbiB0aGUgY29kZSB0aGF0IHlvdSBhbHdheXMNCj4gPiA+
IG5lZWQgdG8gY2hlY2sgdGhlIERQIHNwZWMgdG8ga25vdyB3aGF0IGxldmVsIG9mIEhCUiBpdCBp
cy4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNiArKysrKy0NCj4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+IGluZGV4IGE5NzY2
MDZkMjFjNy4uOTE0ZjBjYzRkMjM3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gQEAgLTQ5LDYgKzQ5LDEwIEBADQo+ID4gPiAg
I2luY2x1ZGUgImludGVsX3RjLmgiDQo+ID4gPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4g
PiA+ICANCj4gPiA+ICsjZGVmaW5lIEhCUl9SQVRFIDI3MDAwMA0KPiA+ID4gKyNkZWZpbmUgSEJS
Ml9SQVRFIDU0MDAwMA0KPiA+ID4gKyNkZWZpbmUgSEJSM19SQVRFIDgxMDAwMA0KPiA+ID4gKw0K
PiA+ID4gIHN0cnVjdCBkZGlfYnVmX3RyYW5zIHsNCj4gPiA+ICAJdTMyIHRyYW5zMTsJLyogYmFs
YW5jZSBsZWcgZW5hYmxlLCBkZS1lbXBoIGxldmVsICovDQo+ID4gPiAgCXUzMiB0cmFuczI7CS8q
IHZyZWYgc2VsLCB2c3dpbmcgKi8NCj4gPiA+IEBAIC04ODgsNyArODkyLDcgQEAgaWNsX2dldF9j
b21ib19idWZfdHJhbnMoc3RydWN0DQo+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
aW50IHR5cGUsIGludCByYXRlLA0KPiA+ID4gIAlpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRfSERN
SSkgew0KPiA+ID4gIAkJKm5fZW50cmllcyA9DQo+ID4gPiBBUlJBWV9TSVpFKGljbF9jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pKTsNCj4gPiA+ICAJCXJldHVybiBpY2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfaGRtaTsNCj4gPiA+IC0JfSBlbHNlIGlmIChyYXRlID4gNTQwMDAw
ICYmIHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgew0KPiA+ID4gKwl9IGVsc2UgaWYgKHJhdGUg
PiBIQlIyX1JBVEUgJiYgdHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQKSB7DQo+ID4gDQo+ID4gSSBk
b24ndCB3YW50IGEgcGF0Y2ggc3dpdGNoaW5nIHNvbWUgcmFuZG9tIHBsYWNlIHRvIHVzaW5nIGEN
Cj4gPiBtYWNyby4gRWl0aGVyIHdlIHN0aWNrIHRvIG51bWJlcnMgb3Igc3dpdGNoIGFsbC4NCj4g
PiANCj4gPiBBbmQgaWYgc3dpdGNoIGFsbCwgYWRkIHRoZSByYXRlcyB0byBkcm0gY29yZSwgbm90
IGxvY2FsbHkgdG8NCj4gPiBpbnRlbF9kZGkuYy4gKEFuZCB0aGVuIHdvbmRlciB3aGF0IHRvIGRv
IHdpdGggdGhlIGludGVybWVkaWF0ZQ0KPiA+IHJhdGVzIGluDQo+ID4gaW50ZWxfZHBfc2V0X3Nv
dXJjZV9yYXRlcygpLi4uKQ0KPiANCj4gWWVhaCwgd2UnbGwgc3RpbGwgZW5kIHVwIHdpdGggYSBt
aXggb2YgZGVmaW5lcyBhbmQgcmF3IG51bWJlcnMuDQo+IA0KPiA+IFBlcnNvbmFsbHksIEhCUjxO
PiBpcyBsZXNzIHVzZWZ1bCB0byBtZSBpbiBjb2RlLCBpdCdzIHRoZSBhY3R1YWwNCj4gPiByYXRl
DQo+ID4gdGhhdCBoZWxwcyBtZS4NCj4gPiANCj4gPiBCdXQgSSdsbCB0cnVzdCBWaWxsZSdzIGp1
ZGdlbWVudCBvbiB0aGlzIG9uZS4NCj4gDQo+IEkgdGVuZCB0byBwcmVmZXIgcmF3IG51bWJlcnMg
Zm9yIHRoaXMgc29ydCBvZiBzdHVmZi4gSWYgd2UgZGlkbid0DQo+IGhhdmUNCj4gdGhlIGludGVy
bWVkaWF0ZSByYXRlcyBJIG1pZ2h0IGhhdmUgYSBkaWZmZXJlbnQgb3Bpbmlvbi4gVGhlIG9ubHkN
Cj4gdGhpbmcNCj4gSSByZWFsbHkgd29ycnkgYWJvdXQgd2l0aCByYXcgbnVtYmVycyBpcyB0aGUg
cG90ZW50aWFsIGZvciB0eXBvcy4NCj4gDQo+IFRoZSBvcmlnaW5hbCBwcm9ibGVtIG9mIGJzcGVj
IHRhbGtpbmcgYWJvdXQgaGJyMiBpbiB0aGUgYnVnIHRyYW5zDQo+IHRhYmxlcyB3ZSBjb3VsZCBw
cm9iYWJseSBzb2x2ZSB3aXRoIGEgY29tbWVudC4NCj4gDQoNCk9rYXksIGRyb3BwaW5nIHRoaXMg
Y2hhbmdlLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
