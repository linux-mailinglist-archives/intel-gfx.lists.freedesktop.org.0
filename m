Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD1455A18
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 12:23:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E441889BC0;
	Thu, 18 Nov 2021 11:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40246EC2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 11:22:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="234403611"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="234403611"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 03:22:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="495338210"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga007.jf.intel.com with ESMTP; 18 Nov 2021 03:22:54 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 11:22:53 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.012;
 Thu, 18 Nov 2021 11:22:53 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD clock
Thread-Index: AQHX3FoBQTMUzaGtU0aUGc4nvhMW5qwJEN+AgAARIBA=
Date: Thu, 18 Nov 2021 11:22:53 +0000
Message-ID: <bb9e5efce1a647ad9b4dd0ad4d0ce9aa@intel.com>
References: <20211118085424.685686-1-mika.kahola@intel.com>
 <20211118085424.685686-4-mika.kahola@intel.com> <874k89lqlw.fsf@intel.com>
In-Reply-To: <874k89lqlw.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD clock
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMTgsIDIw
MjEgMTI6MTIgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsg
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIIDMvNF0gZHJtL2k5MTUvZGlzcGxheS9kZzI6IFNhbml0aXplIENEIGNsb2NrDQo+
IA0KPiBPbiBUaHUsIDE4IE5vdiAyMDIxLCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPiB3cm90ZToNCj4gPiBJbiBjYXNlIG9mIENEIGNsb2NrIHNxdWFzaGluZyB0aGUgZGl2aWRl
ciBpcyBhbHdheXMgMS4gV2UgZG9uJ3QgbmVlZA0KPiA+IHRvIGNhbGN1bGF0ZSB0aGUgZGl2aWRl
ciBpbiB1c2Ugc28gbGV0J3Mgc2tpcCB0aGF0IGZvciBERzIuDQo+ID4NCj4gPiB2MjogRHJvcCB1
bm5lY2Vzc2FyeSBsb2NhbCB2YXJpYWJsZSAoVmlsbGUpDQo+ID4gdjM6IEF2b2lkIGlmLWVsc2Ug
c3RydWN0dXJlIChWaWxsZSkNCj4gPiBbdjQ6IHZzeXJqYWxhOiBGaXggY2QyeCBkaXZpZGVyIGNh
bGN1bGF0aW9uIChVbWEpLA0KPiA+ICAgICAgICAgICAgICAgIEludHJvZHVjZSBoYXNfY2RjbGtf
c3F1YXNoZXIoKV0NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTUgKysrKysrKysrKysrLS0tDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gaW5k
ZXggNjMwYTUzZDRmODgyLi5lOGM1ODc3OWMyYTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gQEAgLTEyMTIsNiArMTIxMiwxMSBA
QCBzdGF0aWMgdm9pZCBza2xfY2RjbGtfdW5pbml0X2h3KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gPiAgCXNrbF9zZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19jb25m
aWcsIElOVkFMSURfUElQRSk7ICB9DQo+ID4NCj4gPiArc3RhdGljIGJvb2wgaGFzX2NkY2xrX3Nx
dWFzaGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KSB7DQo+ID4gKwlyZXR1cm4gSVNf
REcyKGk5MTUpOw0KPiA+ICt9DQo+IA0KPiBUaGUgb2J2aW91cyBwcm9ibGVtIGlzIHRoYXQgeW91
IHVzZSB0aGlzIGZ1bmN0aW9uIGFscmVhZHkgaW4gcGF0Y2ggMi4NCg0KSSBjb3VsZG4ndCBmaW5k
IHRoZSBvcmlnaW5hbCBjb3Zlci1sZXR0ZXIgYW5kIGhlbmNlIHRoZSBwYXRjaGVzIG1pZ2h0IGhh
dmUgc2xpcHBlZCBpbiB3cm9uZyBvcmRlci4gVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dCEN
Cg0KPiANCj4gSSdtIGFsc28gbm90IHN1cmUgd2Ugd2FudCB0byBzdGFydCBzcHJpbmtsaW5nIHRo
ZSBoYXNfIG9yIEhBU18gcXVlcnkgc3R1ZmYgYWxsIG92ZXINCj4gdGhlIHBsYWNlIGluIC5jLiBm
aWxlcy4gT3IgaWYgd2UgZG8sIHdlIHNob3VsZCBkbyBpdCBpbiBhIG1vcmUgcGxhbm5lZCBtYW5u
ZXIsIG5vdA0KPiBieSBzdGFydGluZyB0byBzbmVhayB0aGVzZSBpbi4NCg0KV2VsbCwgd2hhdCB3
b3VsZCBiZSB0aGUgYWx0ZXJuYXRpdmU/IEhvdyB3ZSBzaG91bGQgaGFuZGxlIHRoZSBjYXNlcyB3
aGVyZSBhIGZlYXR1cmUgaXMgc3VwcG9ydGVkIGJ5IGEgcGxhdGZvcm0gYW5kIHBlcmhhcHMgcGxh
dGZvcm1zIGluIHRoZSBmdXR1cmU/DQoNCkNoZWVycywNCk1pa2EgDQo+IA0KPiBCUiwNCj4gSmFu
aS4NCj4gDQo+ID4gKw0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMg
Ynh0X2NkY2xrX3RhYmxlW10gPSB7DQo+ID4gIAl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0g
MTQ0MDAwLCAuZGl2aWRlciA9IDgsIC5yYXRpbyA9IDYwIH0sDQo+ID4gIAl7IC5yZWZjbGsgPSAx
OTIwMCwgLmNkY2xrID0gMjg4MDAwLCAuZGl2aWRlciA9IDQsIC5yYXRpbyA9IDYwIH0sIEBADQo+
ID4gLTE3NTAsNyArMTc1NSw3IEBAIHN0YXRpYyB2b2lkIGJ4dF9zZXRfY2RjbGsoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYsICBzdGF0aWMgdm9pZCBieHRfc2FuaXRpemVf
Y2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYpICB7DQo+ID4gIAl1
MzIgY2RjdGwsIGV4cGVjdGVkOw0KPiA+IC0JaW50IGNkY2xrLCB2Y287DQo+ID4gKwlpbnQgY2Rj
bGssIGNsb2NrLCB2Y287DQo+ID4NCj4gPiAgCWludGVsX3VwZGF0ZV9jZGNsayhkZXZfcHJpdik7
DQo+ID4gIAlpbnRlbF9kdW1wX2NkY2xrX2NvbmZpZygmZGV2X3ByaXYtPmNkY2xrLmh3LCAiQ3Vy
cmVudCBDRENMSyIpOyBAQA0KPiA+IC0xNzg2LDggKzE3OTEsMTIgQEAgc3RhdGljIHZvaWQgYnh0
X3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikNCj4g
PiAgCWV4cGVjdGVkID0gc2tsX2NkY2xrX2RlY2ltYWwoY2RjbGspOw0KPiA+DQo+ID4gIAkvKiBG
aWd1cmUgb3V0IHdoYXQgQ0QyWCBkaXZpZGVyIHdlIHNob3VsZCBiZSB1c2luZyBmb3IgdGhpcyBj
ZGNsayAqLw0KPiA+IC0JZXhwZWN0ZWQgfD0gYnh0X2NkY2xrX2NkMnhfZGl2X3NlbChkZXZfcHJp
diwNCj4gPiAtCQkJCQkgICBkZXZfcHJpdi0+Y2RjbGsuaHcuY2RjbGssDQo+ID4gKwlpZiAoaGFz
X2NkY2xrX3NxdWFzaGVyKGRldl9wcml2KSkNCj4gPiArCQljbG9jayA9IGRldl9wcml2LT5jZGNs
ay5ody52Y28gLyAyOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWNsb2NrID0gZGV2X3ByaXYtPmNkY2xr
Lmh3LmNkY2xrOw0KPiA+ICsNCj4gPiArCWV4cGVjdGVkIHw9IGJ4dF9jZGNsa19jZDJ4X2Rpdl9z
ZWwoZGV2X3ByaXYsIGNsb2NrLA0KPiA+ICAJCQkJCSAgIGRldl9wcml2LT5jZGNsay5ody52Y28p
Ow0KPiA+DQo+ID4gIAkvKg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcg0K
