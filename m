Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67498183C55
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CF36EB47;
	Thu, 12 Mar 2020 22:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEC06EB47
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:23:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="261691226"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2020 15:23:29 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Mar 2020 15:23:28 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.183]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 15:23:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Yokoyama, Caz" <caz.yokoyama@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc
 flush workaround"
Thread-Index: AQHV8nT+LNp+lpb7s0y4qkYGQ5rGQqg5tVgAgAxQaACAAAS0AA==
Date: Thu, 12 Mar 2020 22:23:27 +0000
Message-ID: <aeafaf173781957f43d2b0ee21799e6917fb4a43.camel@intel.com>
References: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
 <CAKi4VALn9McMaQ=Em=cZet8-jyosWCdxwzDS4JnDG0mfKYWcDg@mail.gmail.com>
 <20200312220746.5n7nwlamppvrvmeg@ldmartin-desk1.jf.intel.com>
In-Reply-To: <20200312220746.5n7nwlamppvrvmeg@ldmartin-desk1.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <309A721A40304B45A950A125B8E5D65B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc
 flush workaround"
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

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDE1OjA3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDA0LCAyMDIwIGF0IDA1OjA0OjUyUE0gLTA4MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToNCj4gPiBPbiBXZWQsIE1hciA0LCAyMDIwIGF0IDI6MzMgUE0gQ2F6IFlva295
YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tDQo+ID4gPiB3cm90ZToNCj4gPiA+IFRoaXMgcmV2
ZXJ0cyBjb21taXQgMzZhNmI1ZDk2NGQ5OTViNTM2YjE5MjVlYzQyMDUyZWU0MGJhOTJjNC4NCj4g
PiA+IEZpeGVzOiAzNmE2YjVkOTY0ZDkgKCJkcm0vaTkxNS90Z2w6IEFkZCBleHRyYSBoZGMgZmx1
c2gNCj4gPiA+IHdvcmthcm91bmQiKQ0KPiA+ID4gDQo+ID4gPiBUaGUgY29tbWl0IHRha2VzIGNh
cmUgV2FfMTYwNDU0NDg4OSB3aGljaCB3YXMgZml4ZWQgb24gYTANCj4gPiA+IHN0ZXBwaW5nIGJh
c2VkIG9uDQo+ID4gPiBhMCByZXBsYW4uIFNvIG5vIFNXIHdvcmthcm91bmQgaXMgcmVxdWlyZWQg
b24gYW55IHN0ZXBwaW5nIG5vdy4NCj4gPiA+IA0KPiA+ID4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDYXog
WW9rb3lhbWEgPGNhei55b2tveWFtYUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gWW91IGRpZG4ndCBh
ZGQgd2hhdCB0aGUgcmV2aWV3ZXJzIGFza2VkIGZvci4gUGxlYXNlIGdvIGJhY2sgdG8gdGhlDQo+
ID4gcmV2aWV3cyBhbmQgY2hlY2sgdGhhdCB5b3UNCj4gPiBzdGlsbCBoYXZlIHRoaW5ncyB0byBj
aGFuZ2UgaW4gdGhpcyBjb21taXQgaW4gb3JkZXIgdG8gYWRkIGhpcyByLWIuDQo+ID4gQWxzbyBj
aGVjayB3aGF0IEpvc8OpIHNhaWQuDQo+IA0KPiBJIHRoaW5rIHdlIGNhbiBsaXZlIHdpdGhvdXQg
dGhlIGNvbW1lbnQgSm9zw6kgYXNrZWQgZm9yLiBTbyBvbmx5DQo+IGFkZGl0aW9uYWwgdGhpbmcg
c3RpbGwgd3JvbmcgaGVyZSBpcyB0aGUgIkZpeGVzIiBsaW5lLiBJdCBuZWVkcyB0byBiZQ0KPiB0
b2dldGhlciB3aXRoIHRoZSBvdGhlciB0cmFpbGVycy4gV2UgY2FuIGRvIHRoYXQgd2hpbGUgYXBw
bHlpbmcuDQoNCkZpeGVzIGxpbmUgbW92ZWQgYW5kIHB1c2hlZCwgdGhhbmtzIGZvciB0aGUgcGF0
Y2guDQoNCj4gDQo+IHRoYW5rcw0KPiANCj4gTHVjYXMgRGUgTWFyY2hpDQo+IA0KPiA+IA0KPiA+
IEx1Y2FzIERlIE1hcmNoaQ0KPiA+IA0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAyMCAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAyMCBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+ID4gPiBpbmRleCBiOWIzZjc4ZjEzMjQuLmY5NDI1
ZTVlZDdlYSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYw0K
PiA+ID4gQEAgLTQxNDUsMjYgKzQxNDUsNiBAQCBzdGF0aWMgaW50IGdlbjEyX2VtaXRfZmx1c2hf
cmVuZGVyKHN0cnVjdA0KPiA+ID4gaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LA0KPiA+ID4gDQo+ID4g
PiAgICAgICAgICAgICAgICAgKmNzKysgPSBwcmVwYXJzZXJfZGlzYWJsZShmYWxzZSk7DQo+ID4g
PiAgICAgICAgICAgICAgICAgaW50ZWxfcmluZ19hZHZhbmNlKHJlcXVlc3QsIGNzKTsNCj4gPiA+
IC0NCj4gPiA+IC0gICAgICAgICAgICAgICAvKg0KPiA+ID4gLSAgICAgICAgICAgICAgICAqIFdh
XzE2MDQ1NDQ4ODk6dGdsDQo+ID4gPiAtICAgICAgICAgICAgICAgICovDQo+ID4gPiAtICAgICAg
ICAgICAgICAgaWYgKElTX1RHTF9SRVZJRChyZXF1ZXN0LT5pOTE1LCBUR0xfUkVWSURfQTAsDQo+
ID4gPiBUR0xfUkVWSURfQTApKSB7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFn
cyA9IDA7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRS
T0xfQ1NfU1RBTEw7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBF
X0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOw0KPiA+ID4gLQ0KPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUT1JFX0RBVEFfSU5ERVg7DQo+ID4g
PiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7
DQo+ID4gPiAtDQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBjcyA9IGludGVsX3Jpbmdf
YmVnaW4ocmVxdWVzdCwgNik7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBpZiAoSVNf
RVJSKGNzKSkNCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBU
Ul9FUlIoY3MpOw0KPiA+ID4gLQ0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgY3MgPSBn
ZW44X2VtaXRfcGlwZV9jb250cm9sKGNzLCBmbGFncywNCj4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBMUkNfUFBIV1NQX1NDDQo+ID4gPiBS
QVRDSF9BRERSKTsNCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGludGVsX3JpbmdfYWR2
YW5jZShyZXF1ZXN0LCBjcyk7DQo+ID4gPiAtICAgICAgICAgICAgICAgfQ0KPiA+ID4gICAgICAg
ICB9DQo+ID4gPiANCj4gPiA+ICAgICAgICAgcmV0dXJuIDA7DQo+ID4gPiAtLQ0KPiA+ID4gMi4y
MS4wLjUuZ2FlYjU4MmE5ODMNCj4gPiA+IA0KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4g
PiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo+ID4gDQo+ID4gDQo+
ID4gLS0gDQo+ID4gTHVjYXMgRGUgTWFyY2hpDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
