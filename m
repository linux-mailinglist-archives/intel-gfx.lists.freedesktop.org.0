Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCB19F1EA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 19:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB228925F;
	Tue, 27 Aug 2019 17:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22968925F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 17:55:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 10:55:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="187979264"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Aug 2019 10:55:56 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 27 Aug 2019 10:55:56 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.151]) with mapi id 14.03.0439.000;
 Tue, 27 Aug 2019 10:55:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Runyan, Arthur J" <arthur.j.runyan@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
Thread-Index: AQHVWYu+gNijV9FxwUmYw4/6iofWvacN6lEAgABDgwCAAX+ugIAAFhCA
Date: Tue, 27 Aug 2019 17:55:50 +0000
Message-ID: <b14daf380862c4058cc4e92b37facbae490dc7cf.camel@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-5-lucas.demarchi@intel.com>
 <20190826134158.GA27192@ideak-desk.fi.intel.com>
 <C7E999358BBE9E45938BA940F5F51108D30BD7BF@fmsmsx116.amr.corp.intel.com>
 <20190827163651.oq46ok6mfgn5dvtx@ldmartin-desk1>
In-Reply-To: <20190827163651.oq46ok6mfgn5dvtx@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <1CF9E5BACC113F4E919B2BBE0F41DAEB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTI3IGF0IDA5OjM2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIE1vbiwgQXVnIDI2LCAyMDE5IGF0IDEwOjQzOjM2QU0gLTA3MDAsIFJ1bnlhbiwgQXJ0
aHVyIEogd3JvdGU6DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJv
bTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogTW9uZGF5LCAy
NiBBdWd1c3QsIDIwMTkgNjo0MiBBTQ0KPiA+ID4gVG86IFNvdXphLCBKb3NlIDxqb3NlLnNvdXph
QGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMNCj4gPiA+IDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+OyBSdW55YW4sIEFydGh1ciBKIDwNCj4gPiA+IGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5j
b20+DQo+ID4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgUGFuZGl5YW4s
IERoaW5ha2FyYW4NCj4gPiA+IDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gPiA+
IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjMgMDQvMjNdIGRybS9pOTE1L2Jkdys6
IEVuYWJsZQ0KPiA+ID4gUFNSIGluIGFueQ0KPiA+ID4gZURQIHBvcnQNCj4gPiA+IA0KPiA+ID4g
T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMDE6MjA6MzZBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOg0KPiA+ID4gPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiA+ID4gDQo+ID4gPiA+IEZyb20gQkRXKyB0aGUgUFNSIHJlZ2lzdGVy
cyBtb3ZlZCBmcm9tIERESUEgdG8gdHJhbnNjb2Rlciwgc28NCj4gPiA+ID4gYW55IHBvcnQNCj4g
PiA+ID4gd2l0aCBhIGVEUCBwYW5lbCBjb25uZWN0ZWQgY2FuIGhhdmUgUFNSLCBzbyBsZXRzIHJl
bW92ZSB0aGlzDQo+ID4gPiA+IGxpbWl0YXRpb24uDQo+ID4gPiA+IA0KPiA+ID4gPiBDYzogRGhp
bmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+ID4gPiA+
IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4NCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKystLS0tDQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRl
eCA4MWUzNjE5Y2Q5MDUuLjAxNzJiODI4NThkOSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IEBAIC01ODgsMTEgKzU4
OCw5IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiA+ID4gPiBpbnRl
bF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gPiAgCS8qDQo+ID4gPiA+ICAJICogSFNXIHNw
ZWMgZXhwbGljaXRseSBzYXlzIFBTUiBpcyB0aWVkIHRvIHBvcnQgQS4NCj4gPiA+ID4gLQkgKiBC
RFcrIHBsYXRmb3JtcyBoYXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXINCj4gPiA+
ID4gdHJhbnNjb2RlciBidXQNCj4gPiA+ID4gLQkgKiBmb3Igbm93IGl0IG9ubHkgc3VwcG9ydHMg
b25lIGluc3RhbmNlIG9mIFBTUiwgc28NCj4gPiA+ID4gbGV0cyBrZWVwIGl0DQo+ID4gPiA+IC0J
ICogaGFyZGNvZGVkIHRvIFBPUlRfQQ0KPiA+ID4gPiArCSAqIEJEVysgcGxhdGZvcm1zIGhhdmUg
YSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlcg0KPiA+ID4gPiB0cmFuc2NvZGVyLg0KPiA+
ID4gPiAgCSAqLw0KPiA+ID4gPiAtCWlmIChkaWdfcG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkg
ew0KPiA+ID4gPiArCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAmJiBkaWdfcG9ydC0+YmFzZS5w
b3J0ICE9DQo+ID4gPiA+IFBPUlRfQSkgew0KPiA+ID4gDQo+ID4gPiBCYXNlZCBvbiBhbiBlYXJs
aWVyIGRpc2N1c3Npb24gd2l0aCBBcnQsIGJlZm9yZSBUR0wgUFNSIGlzIG5vdA0KPiA+ID4gc3Vw
cG9zZWQNCj4gPiA+IHRvIGJlIHVzZWQgYW55d2hlcmUgZWxzZSB0aGFuIHBvcnQgQS4NCj4gPiA+
IA0KPiA+ID4gQXJ0IGNvdWxkIHlvdSBjb25maXJtIHRoYXQ/DQo+ID4gDQo+ID4gQ29ycmVjdC4N
Cj4gPiBQU1IxIGlzIGxpbWl0ZWQgdG8gRERJQSB1bnRpbCBUaWdlcmxha2UuICBUaGVyZSBhcmUg
cmVnaXN0ZXJzIGZvcg0KPiA+IFBTUiBvbiB0aGUgb3RoZXINCj4gPiB0cmFuc2NvZGVycy9wb3J0
cyBiZWNhdXNlIG9mIHJldXNlLCBidXQgaGFyZHdhcmUgaXNuJ3QgZnVsbHkgaG9va2VkDQo+ID4g
dXAgb3IgdmFsaWRhdGVkLg0KPiA+IFBTUjIgaXMgc3RpbGwgbGltaXRlZCB0byBERElBIG9uIFRp
Z2VybGFrZS4NCj4gDQo+IHRoYW5rIHlvdSBib3RoIGZvciBjb25maXJtaW5nLiBKb3PDqSwgSSB0
aGluayB3ZSBuZWVkIHRvIGRyb3AgdGhpcw0KPiBwYXRjaA0KPiBhbmQgcmViYXNlIHRoZSByZXN0
IHNvIHdlIGRvbid0IGRvIGFueXRoaW5nIGJlZm9yZSBUaWdlciBMYWtlLiBJIHdpbGwNCj4gd29y
ayBvbiBpdC4NCg0KVGhhbmtzLCBtYXliZSB3cml0ZSBhIHBhdGNoIHVwZGF0aW5nIHRoZSBjb21t
ZW50IGFib3ZlIHdvdWxkIGJlIG5pY2UuDQpPdGhlcndpc2UgSSBjYW4gZG8gaXQgbGF0dGVyLg0K
DQo+IA0KPiBMdWNhcyBEZSBNYXJjaGkNCj4gDQo+ID4gPiA+ICAJCURSTV9ERUJVR19LTVMoIlBT
UiBjb25kaXRpb24gZmFpbGVkOiBQb3J0IG5vdA0KPiA+ID4gc3VwcG9ydGVkXG4iKTsNCj4gPiA+
ID4gIAkJcmV0dXJuOw0KPiA+ID4gPiAgCX0NCj4gPiA+ID4gLS0NCj4gPiA+ID4gMi4yMy4wDQo+
ID4gPiA+IA0KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiA+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gPiA+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
