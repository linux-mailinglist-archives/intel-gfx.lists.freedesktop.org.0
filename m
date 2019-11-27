Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231D210C05C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457036E5C8;
	Wed, 27 Nov 2019 22:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8ED6E5C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:48:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 14:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="234254434"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 27 Nov 2019 14:48:10 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 14:48:10 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.184]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 14:48:09 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
Thread-Index: AQHVlEPYy7+XbonwIUmGHn8UKFLW7qeIm/+AgAArI4CAFHyngIACs2EAgABP5YA=
Date: Wed, 27 Nov 2019 22:48:09 +0000
Message-ID: <f476ebfe636329f7853123f0cafd89325484bcf0.camel@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191106014504.167656-5-jose.souza@intel.com>
 <20191112212155.GN21445@mdroper-desk1.amr.corp.intel.com>
 <3eb0c3b944fe92f1bdc76808f2176ece5af8538f.camel@intel.com>
 <2fb0dddb1389172dd75be95f2758d04440cb149a.camel@intel.com>
 <20191127180212.GM6337@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191127180212.GM6337@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <52C4BBC8FA2A3B4C923836AE0BB723D4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDEwOjAyIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIE5vdiAyNSwgMjAxOSBhdCAwNDo0NzozOVBNIC0wODAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBUdWUsIDIwMTktMTEtMTIgYXQgMjM6NTYgKzAwMDAsIFNvdXphLCBKb3NlIHdy
b3RlOg0KPiA+ID4gT24gVHVlLCAyMDE5LTExLTEyIGF0IDEzOjIxIC0wODAwLCBNYXR0IFJvcGVy
IHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIE5vdiAwNSwgMjAxOSBhdCAwNTo0NTowNFBNIC0wODAw
LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQo+ID4gPiA+IHdyb3RlOg0KPiA+ID4gPiA+IFNpbmNl
IFZCVCAyMjggaXMgZnJvbSB0aGlzIGJsb2NrIHRoYXQgUFNSIGFuZCBvdGhlciBwb3dlcg0KPiA+
ID4gPiA+IHNhdmluZw0KPiA+ID4gPiA+IGZlYXR1cmVzIGNvbmZpZ3VyYXRpb24gc2hvdWxkIGJl
IHJlYWQgZnJvbS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiA+IC0tLQ0K
PiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAg
fCAxOQ0KPiA+ID4gPiA+ICsrKysrKysrKysrLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAyOQ0KPiA+ID4gPiA+ICsrKysrKysrKysr
KysrKysrKysNCj4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+ID4gPiA+IGluZGV4IGEwM2Y1NmI3
YjRlZi4uYmY3OWU5ODU4YmQ4IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiA+ID4gPiBAQCAtNTYxLDcgKzU2MSwy
MyBAQCBwYXJzZV9kcml2ZXJfZmVhdHVyZXMoc3RydWN0DQo+ID4gPiA+ID4gZHJtX2k5MTVfcHJp
dmF0ZQ0KPiA+ID4gPiA+ICpkZXZfcHJpdiwNCj4gPiA+ID4gPiAgCSAqLw0KPiA+ID4gPiA+ICAJ
aWYgKCFkcml2ZXItPmRycnNfZW5hYmxlZCkNCj4gPiA+ID4gPiAgCQlkZXZfcHJpdi0+dmJ0LmRy
cnNfdHlwZSA9IERSUlNfTk9UX1NVUFBPUlRFRDsNCj4gPiA+ID4gPiAtCWRldl9wcml2LT52YnQu
cHNyLmVuYWJsZSA9IGRyaXZlci0+cHNyX2VuYWJsZWQ7DQo+ID4gPiA+ID4gKwlpZiAoYmRiLT52
ZXJzaW9uIDwgMjI4KQ0KPiA+ID4gPiA+ICsJCWRldl9wcml2LT52YnQucHNyLmVuYWJsZSA9IGRy
aXZlci0+cHNyX2VuYWJsZWQ7DQo+ID4gPiA+ID4gK30NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
K3N0YXRpYyB2b2lkDQo+ID4gPiA+ID4gK3BhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJl
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ICpkZXZfcHJpdiwNCj4gPiA+ID4g
PiArCQkJCSAgY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikNCj4gPiA+ID4gPiArew0KPiA+
ID4gPiA+ICsJY29uc3Qgc3RydWN0IGJkYl9sZnBfcG93ZXIgKnBvd2VyOw0KPiA+ID4gPiA+ICsJ
dTggcGFuZWxfdHlwZSA9IGRldl9wcml2LT52YnQucGFuZWxfdHlwZTsNCj4gPiA+ID4gPiArDQo+
ID4gPiA+ID4gKwlwb3dlciA9IGZpbmRfc2VjdGlvbihiZGIsIEJEQl9MVkRTX1BPV0VSKTsNCj4g
PiA+ID4gPiArCWlmICghcG93ZXIpDQo+ID4gPiA+ID4gKwkJcmV0dXJuOw0KPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiArCWlmIChiZGItPnZlcnNpb24gPj0gMjI4KQ0KPiA+ID4gPiA+ICsJCWRldl9w
cml2LT52YnQucHNyLmVuYWJsZSA9IHBvd2VyLT5wc3IgJiAoMSA8PA0KPiA+ID4gPiA+IHBhbmVs
X3R5cGUpOw0KPiA+ID4gPiANCj4gPiA+ID4gU2hvdWxkIHdlIGFsc28gYmUgc2V0dGluZyBkZXZf
cHJpdi0+dmJ0LmRycnNfdHlwZSA9DQo+ID4gPiA+IERSUlNfTk9UX1NVUFBPUlRFRA0KPiA+ID4g
PiBpZiBibG9jayA0NCB0ZWxscyB1cyBpdCBpc24ndCB2YWxpZCBvbiB0aGlzIHBhbmVsPw0KPiA+
ID4gPiANCj4gPiA+IA0KPiA+ID4gWWVwLCBpdCBzaG91bGQuDQo+ID4gPiBUaGFua3MgZm9yIGNh
dGNoaW5nIHRoaXMuDQo+ID4gDQo+ID4gTm90aGluZyBmcm9tIGJsb2NrIDQwIGlzIG9ic29sZXRl
LCBpdCBoYXMgdGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZQ0KPiA+IERSUlMgdHlwZSBvZiBhbGwg
dGhlIDE2IHBvc3NpYmxlIHBhbmVscyBzbyBpcyBiZXR0ZXIga2VlcCByZWx5aW5nDQo+ID4gb24g
aXQNCj4gPiBhcyBibG9jayA0NCBvbmx5IGhhdmUgb25seSB0aGUgaW5mb3JtYXRpb24gaWYgRFJS
UyBpcyBzdXBwb3J0ZWQgb3INCj4gPiBub3QuDQo+ID4gDQo+ID4gSSBhbHNvIGNoZWNrZWQgdGhl
IG90aGVyIGZlYXR1cmVzIGJ1dCB3ZSBkb24ndCBpbXBsZW1lbnQgdGhvc2UuDQo+IA0KPiBJIHRo
aW5rIHRoZSBEUlJTX05PVF9TVVBQT1JURUQgaXMgY3VycmVudGx5IGJlaW5nIHNldCBiYXNlZCBv
biB0aGUNCj4gY29udGVudHMgb2YgYmxvY2sgMTIgKGluIHBhcnNlX2RyaXZlcl9mZWF0dXJlcyku
ICBCbG9jayAxMiBkb2VzIGxpc3QNCj4gdGhlDQo+IGJpdCB3ZSdyZSBsb29raW5nIGF0IGFzIG9i
c29sZXRlIGluIHZlcnNpb24gMjI4IChtb3ZlZCB0byBibG9jayA0NCkuDQoNCk5vdyBJIGdvdCBp
dC4NClRoYW5rcyBJIHdpbGwgZml4IHRoYXQuDQoNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+IA0K
PiA+ID4gPiBNYXR0DQo+ID4gPiA+IA0KPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gIA0KPiA+ID4g
PiA+ICBzdGF0aWMgdm9pZA0KPiA+ID4gPiA+IEBAIC0xODc4LDYgKzE4OTQsNyBAQCB2b2lkIGlu
dGVsX2Jpb3NfaW5pdChzdHJ1Y3QNCj4gPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+
ID4gKmRldl9wcml2KQ0KPiA+ID4gPiA+ICAJcGFyc2VfbGZwX2JhY2tsaWdodChkZXZfcHJpdiwg
YmRiKTsNCj4gPiA+ID4gPiAgCXBhcnNlX3Nkdm9fcGFuZWxfZGF0YShkZXZfcHJpdiwgYmRiKTsN
Cj4gPiA+ID4gPiAgCXBhcnNlX2RyaXZlcl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsNCj4gPiA+
ID4gPiArCXBhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsN
Cj4gPiA+ID4gPiAgCXBhcnNlX2VkcChkZXZfcHJpdiwgYmRiKTsNCj4gPiA+ID4gPiAgCXBhcnNl
X3BzcihkZXZfcHJpdiwgYmRiKTsNCj4gPiA+ID4gPiAgCXBhcnNlX21pcGlfY29uZmlnKGRldl9w
cml2LCBiZGIpOw0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+ID4gPiA+IGluZGV4IDY5YTdjYjFmYTEyMS4u
MzFmNDdjZTU2NTg3IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+ID4gPiA+IEBAIC03OTIsNiArNzky
LDM1IEBAIHN0cnVjdCBiZGJfbGZwX2JhY2tsaWdodF9kYXRhIHsNCj4gPiA+ID4gPiAgCXN0cnVj
dCBsZnBfYmFja2xpZ2h0X2NvbnRyb2xfbWV0aG9kDQo+ID4gPiA+ID4gYmFja2xpZ2h0X2NvbnRy
b2xbMTZdOw0KPiA+ID4gPiA+ICB9IF9fcGFja2VkOw0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiAr
LyoNCj4gPiA+ID4gPiArICogQmxvY2sgNDQgLSBMRlAgUG93ZXIgQ29uc2VydmF0aW9uIEZlYXR1
cmVzIEJsb2NrDQo+ID4gPiA+ID4gKyAqLw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArc3RydWN0
IGFsc19kYXRhX2VudHJ5IHsNCj4gPiA+ID4gPiArCXUxNiBiYWNrbGlnaHRfYWRqdXN0Ow0KPiA+
ID4gPiA+ICsJdTE2IGx1eDsNCj4gPiA+ID4gPiArfSBfX3BhY2tlZDsNCj4gPiA+ID4gPiArDQo+
ID4gPiA+ID4gK3N0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgew0KPiA+ID4gPiA+
ICsJdTggZHBzdF9hZ3Jlc3NpdmVuZXNzIDogNDsNCj4gPiA+ID4gPiArCXU4IGxhY2VfYWdyZXNz
aXZlbmVzcyA6IDQ7DQo+ID4gPiA+ID4gK30gX19wYWNrZWQ7DQo+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ICtzdHJ1Y3QgYmRiX2xmcF9wb3dlciB7DQo+ID4gPiA+ID4gKwl1OCBsZnBfZmVhdHVyZV9i
aXRzOw0KPiA+ID4gPiA+ICsJc3RydWN0IGFsc19kYXRhX2VudHJ5IGFsc1s1XTsNCj4gPiA+ID4g
PiArCXU4IGxhY2VfYWdncmVzc2l2ZW5lc3NfcHJvZmlsZTsNCj4gPiA+ID4gPiArCXUxNiBkcHN0
Ow0KPiA+ID4gPiA+ICsJdTE2IHBzcjsNCj4gPiA+ID4gPiArCXUxNiBkcnJzOw0KPiA+ID4gPiA+
ICsJdTE2IGxhY2Vfc3VwcG9ydDsNCj4gPiA+ID4gPiArCXUxNiBhZHQ7DQo+ID4gPiA+ID4gKwl1
MTYgZG1ycnM7DQo+ID4gPiA+ID4gKwl1MTYgYWRiOw0KPiA+ID4gPiA+ICsJdTE2IGxhY2VfZW5h
YmxlZF9zdGF0dXM7DQo+ID4gPiA+ID4gKwlzdHJ1Y3QgYWdyZXNzaXZlbmVzc19wcm9maWxlX2Vu
dHJ5IGFnZ3Jlc3NpdmVuZXNbMTZdOw0KPiA+ID4gPiA+ICt9IF9fcGFja2VkOw0KPiA+ID4gPiA+
ICsNCj4gPiA+ID4gPiAgLyoNCj4gPiA+ID4gPiAgICogQmxvY2sgNTIgLSBNSVBJIENvbmZpZ3Vy
YXRpb24gQmxvY2sNCj4gPiA+ID4gPiAgICovDQo+ID4gPiA+ID4gLS0gDQo+ID4gPiA+ID4gMi4y
NC4wDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiA+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4g
PiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiA+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
