Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7EF139A9A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 21:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4BB6E15C;
	Mon, 13 Jan 2020 20:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475BE6E15C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 20:14:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 12:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="304938096"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 13 Jan 2020 12:14:26 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.96]) with mapi id 14.03.0439.000;
 Mon, 13 Jan 2020 12:14:26 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode
 status values
Thread-Index: AQHVyCDn1uaKcCwKDkCmV+4bI4yd/KfpdwsAgAAWDICAAATcAA==
Date: Mon, 13 Jan 2020 20:14:25 +0000
Message-ID: <33621edd219e30285be0cafd271924fcab160d37.camel@intel.com>
References: <20200111014511.2988923-1-matthew.d.roper@intel.com>
 <93603b610b40926e3e5fe563ac488cd3ce36f9ff.camel@intel.com>
 <20200113195701.GA2244136@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200113195701.GA2244136@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.11]
Content-ID: <57F50CD595745C4286CE42D3F22E1A53@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode status
 values
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTAxLTEzIGF0IDExOjU3IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIEphbiAxMywgMjAyMCBhdCAxMDozODowNkFNIC0wODAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBGcmksIDIwMjAtMDEtMTAgYXQgMTc6NDUgLTA4MDAsIE1hdHQgUm9wZXIgd3Jv
dGU6DQo+ID4gPiBJIGRvbid0IHRoaW5rIHdlJ3ZlIGV2ZXIgaGl0IHRoZXNlIG5ldyBlcnJvciBj
b2RlcywgYnV0IHRoZXkncmUNCj4gPiA+IGRvY3VtZW50ZWQgaW4gdGhlIGdlbjExIHBjb2RlIGRv
Y3VtZW50LCBzbyB3ZSBtaWdodCBhcyB3ZWxsIGFkZA0KPiA+ID4gdGhlbQ0KPiA+ID4gdG8NCj4g
PiA+IHRoZSBoYW5kbGVyLg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICB8IDIgKysNCj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jIHwgNCArKysrDQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiA+ID4gaW5kZXggNmNjNTVjMTAzZjY3Li5lNTA3MWFmNGEzYjMgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBAQCAtODk4Nyw2ICs4OTg3LDggQEAg
ZW51bSB7DQo+ID4gPiAgI2RlZmluZSAgICAgR0VONl9QQ09ERV9VTklNUExFTUVOVEVEX0NNRAkw
eEZGDQo+ID4gPiAgI2RlZmluZSAgICAgR0VON19QQ09ERV9USU1FT1VUCQkJMHgyDQo+ID4gPiAg
I2RlZmluZSAgICAgR0VON19QQ09ERV9JTExFR0FMX0RBVEEJCTB4Mw0KPiA+ID4gKyNkZWZpbmUg
ICAgIEdFTjExX1BDT0RFX0lMTEVHQUxfU1VCQ09NTUFORAkweDQNCj4gPiA+ICsjZGVmaW5lICAg
ICBHRU4xMV9QQ09ERV9MT0NLRUQJCQkweDYNCj4gPiANCj4gPiBJIGNhbid0IGZpbmQgdGhlIGVy
cm9yIDB4NiBpbiBCU3BlYywgd2hhdCBwYWdlIGFyZSB5b3UgbG9va2luZyBhdD8NCj4gPiBJJ20g
Y2hlY2tpbmcgMzQxNTEuDQo+IA0KPiBJdCBkb2Vzbid0IGFwcGVhciB0byBiZSBkb2N1bWVudGVk
IGluIHRoZSBicHNlYyBhZmFpY3MsIGJ1dCB0aGVyZSdzIGENCj4gc2VwYXJhdGUgIkljZWxha2Ug
UENPREUvUHVuaXQgTWFpbGJveGVzIiBIQVMgdGhhdCBoYXMgdGhlDQo+IGRvY3VtZW50YXRpb24u
DQo+IE9uZSBvZiB0aGUgcGNvZGUgZm9sa3MgcmVjZW50bHkgbGV0IHVzIGtub3cgdGhhdCBpdCBp
cyBpbmRlZWQgYW4NCj4gaW1wb3J0YW50IHBvdGVudGlhbCBlcnJvciBjb2RlIChldmVuIHRob3Vn
aCB3ZSBoYXZlbid0IGJlZW4gaGl0dGluZw0KPiBpdCkuDQoNCk9rYXkgbWF0Y2hlcyB0aGUgZG9j
dW1lbnQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiANCj4gQWxzbywgYnNwZWMgMzQxNTEgKGFuZCB0aGUgc2ltaWxhciA1
MjA2NSkgYXJlIHRhZ2dlZCBhcyBub3QgdmFsaWQgZm9yDQo+IElDTCBhbmQgVEdMLCBzbyBJIGRv
bid0IHRoaW5rIHdlIHJlYWxseSBoYXZlIGFueSBnb29kIHJlZmVyZW5jZSB0bw0KPiB0aGlzDQo+
IHN0dWZmIGluIHRoZSBic3BlYyBpdHNlbGYuICA6LSgNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+
ID4gICNkZWZpbmUgICAgIEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09G
X1JBTkdFIDB4MTANCj4gPiA+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9SQzZWSURTCQkw
eDQNCj4gPiA+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMJCTB4NQ0KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMNCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYw0KPiA+ID4gaW5kZXggY2Jm
YjcxNzFkNjJkLi4zMzYxZmRjNDFlZTEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9zaWRlYmFuZC5jDQo+ID4gPiBAQCAtMzY1LDYgKzM2NSwxMCBAQCBzdGF0aWMgaW5s
aW5lIGludA0KPiA+ID4gZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyh1MzINCj4gPiA+IG1ib3gp
DQo+ID4gPiAgCQlyZXR1cm4gLUVUSU1FRE9VVDsNCj4gPiA+ICAJY2FzZSBHRU43X1BDT0RFX0lM
TEVHQUxfREFUQToNCj4gPiA+ICAJCXJldHVybiAtRUlOVkFMOw0KPiA+ID4gKwljYXNlIEdFTjEx
X1BDT0RFX0lMTEVHQUxfU1VCQ09NTUFORDoNCj4gPiA+ICsJCXJldHVybiAtRU5YSU87DQo+ID4g
PiArCWNhc2UgR0VOMTFfUENPREVfTE9DS0VEOg0KPiA+ID4gKwkJcmV0dXJuIC1FQlVTWTsNCj4g
PiA+ICAJY2FzZSBHRU43X1BDT0RFX01JTl9GUkVRX1RBQkxFX0dUX1JBVElPX09VVF9PRl9SQU5H
RToNCj4gPiA+ICAJCXJldHVybiAtRU9WRVJGTE9XOw0KPiA+ID4gIAlkZWZhdWx0Og0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
