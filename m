Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21BF10C147
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3366E123;
	Thu, 28 Nov 2019 01:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519B76E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:08:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:08:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="234283305"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 27 Nov 2019 17:08:37 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.88]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 17:08:36 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
Thread-Index: AQHVoZinjTIqbAZQ8UahiJs/KxLShaeeb00AgAAg54CAAWNigIAAYAyA
Date: Thu, 28 Nov 2019 01:08:36 +0000
Message-ID: <a4857777dddd1ba864f6bbd0718561e78c5a542d.camel@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-4-jose.souza@intel.com>
 <20191126201506.GH1208@intel.com>
 <625713c7e7111958caf8283a15aeaa7ecf356a5c.camel@intel.com>
 <20191127192449.GN1208@intel.com>
In-Reply-To: <20191127192449.GN1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <B83BB2556A1A3D49A820214BECB81A3F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjI0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDI2LCAyMDE5IGF0IDEwOjEyOjUyUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAxOS0xMS0yNiBhdCAyMjoxNSArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6NTQ6NTZQTSAt
MDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQ0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+IERpc2Fi
bGluZyBwaXBlL3RyYW5zY29kZXIgY2xvY2sgYmVmb3JlIHBvd2VyIGRvd24gc2luayBjb3VsZA0K
PiA+ID4gPiBjYXVzZQ0KPiA+ID4gPiBzaW5rIGxvc3Qgc2lnbmFsLCBjYXVzaW5nIGl0IHRvIHRy
aWdnZXIgYSBob3RwbHVnIHRvIG5vdGlmeQ0KPiA+ID4gPiBzb3VyY2UNCj4gPiA+ID4gdGhhdCBs
aW5rIHNpZ25hbCB3YXMgbG9zdC4NCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0K
PiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKy0N
Cj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
PiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+ID4gPiA+IGluZGV4IGQyZjBkMzkzZDNlZS4uN2QzYTZlM2M3ZjU3IDEwMDY0
NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPiA+ID4gQEAgLTM4MDgsMTIgKzM4MDgsMTIgQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gaW50
ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4g
PiA+ID4gIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rl
ci0NCj4gPiA+ID4gPnBvcnQpOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJaWYgKCFpc19tc3QpIHsN
Cj4gPiA+ID4gLQkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7
DQo+ID4gPiA+ICAJCS8qDQo+ID4gPiA+ICAJCSAqIFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlz
YWJsaW5nIHRoZSBwb3J0LA0KPiA+ID4gPiBvdGhlcndpc2UNCj4gPiA+ID4gd2UgZW5kDQo+ID4g
PiA+ICAJCSAqIHVwIGdldHRpbmcgaW50ZXJydXB0cyBmcm9tIHRoZSBzaW5rIG9uDQo+ID4gPiA+
IGRldGVjdGluZw0KPiA+ID4gPiBsaW5rIGxvc3MuDQo+ID4gPiA+ICAJCSAqLw0KPiA+ID4gPiAg
CQlpbnRlbF9kcF9zaW5rX2RwbXMoaW50ZWxfZHAsDQo+ID4gPiA+IERSTV9NT0RFX0RQTVNfT0ZG
KTsNCj4gPiA+ID4gKwkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0
ZSk7DQo+ID4gPiA+ICAJfQ0KPiA+ID4gDQo+ID4gPiBUaGUgc3BlYyBzZWVtcyB0byBzYXkgdGhh
dCB3ZSBzaG91bGQgZG8gdGhpcyBhZnRlciB0dXJuaW5nIG9mZg0KPiA+ID4gRERJX0JVRl9DVEwg
b24gdGdsKy4NCj4gPiANCj4gPiBXaGF0IHN0ZXA/IEkgY2FuJ3QgZmluZCBhbnkgc3RlcCB0YWxr
aW5nIGFib3V0IEFVWCBEUF9TRVRfUE9XRVIuDQo+IA0KPiBJIHdhcyB0YWxraW5nIGFib3V0IERE
SV9CVUYgZGlzYWJsZSB2cy4gdHJhbnNjb2RlciBjbG9jayBkaXNhYmxlLg0KPiANCj4gPiBNeSB1
bmRlcnN0YXRpbmcgaXMgdGhhdCB3ZSBzaG91bGQgcG93ZXIgb2ZmIHNpbmsgYmVmb3JlIGludGVy
ZmVyaW5nDQo+ID4gaW4NCj4gPiB0aGUgbWFpbmxpbmsgc2lnbmFsIG90aGVyd2lzZSBzaW5rIGNv
dWxkIHRyaWdnZXIgaG90cGx1Z3MgdG8gbm90aWZ5DQo+ID4gc291cmNlIGFib3V0IGxpbmsgbG9z
cy4NCj4gDQo+IFByZXR0eSBtdWNoLiBOb3RoaW5nIHdyb25nIHdpdGggeW91ciBwYXRjaCBmb3Ig
cHJlLXRnbCBJIHRoaW5rLCBidXQNCj4gZm9yDQo+IHRnbCsgeW91IGRpZG4ndCBtb3ZlIHRoZSBj
bG9jayBkaXNhYmxlIHF1aXRlIGZhciBlbm91Z2ggdG8gbWF0Y2ggdGhlDQo+IGJzcGVjIHNlcXVl
bmNlLg0KDQpBYWFoaA0KVGhhdCBpcyBmaXhlZCBwYXRjaCA2ICJkcm0vaTkxNS9kaXNwbGF5L3Rn
bDogRml4IHRoZSBvcmRlciBvZiB0aGUgc3RlcA0KdG8gdHVybiB0cmFuc2NvZGVyIGNsb2NrIG9m
ZiIgOkQNCg0KPiANCj4gPiA+ID4gIA0KPiA+ID4gPiAgCWludGVsX2Rpc2FibGVfZGRpX2J1Zihl
bmNvZGVyLCBvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gPiA+IC0tIA0KPiA+ID4gPiAyLjI0LjANCj4g
PiA+ID4gDQo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiA+ID4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
