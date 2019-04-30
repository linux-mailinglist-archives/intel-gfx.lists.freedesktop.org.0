Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB76F1BA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82CF894DE;
	Tue, 30 Apr 2019 08:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA368894DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:01:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="227987122"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by orsmga001.jf.intel.com with ESMTP; 30 Apr 2019 01:01:05 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.31]) by
 IRSMSX106.ger.corp.intel.com ([169.254.8.235]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 09:01:04 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
Thread-Index: AQHU/x/mZmrNtDEAS0Cq/Cc9mu4fDqZUQeSAgAAEbgA=
Date: Tue, 30 Apr 2019 08:01:04 +0000
Message-ID: <a563ef46c6cc28727999d2968423f7c6ba8a14ae.camel@intel.com>
References: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
 <8736m0rl8o.fsf@intel.com>
In-Reply-To: <8736m0rl8o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.154]
Content-ID: <25D0CF7CBB5D044D83FE6CEDBFD384FF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: "Peres, Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA0LTMwIGF0IDEwOjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAzMCBBcHIgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8DQo+IHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBDdXJyZW50bHkgZHVlIHRvIHJlZ3Jlc3Np
b24gQ0kgbWFjaGluZQ0KPiA+IGRpc3BsYXlzIHNob3cgY29ycnVwdCBwaWN0dXJlLg0KPiA+IFBy
b2JsZW0gaXMgd2hlbiBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBpY3R1cmUgZ2V0cw0KPiA+
IHVuc3RhYmxlLCB3aGlsZSBEU0kgYW5kIERFIHBsbCB2YWx1ZXMgd2VyZQ0KPiA+IGNvbmZpcm1l
ZCB0byBiZSBjb3JyZWN0Lg0KPiA+IExpbWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBW
aWxsZS4NCj4gPiANCj4gPiBXZSBjb3VsZCBub3QgY29tZSB1cCB3aXRoIGFueSBiZXR0ZXIgc29s
dXRpb24NCj4gPiB5ZXQsIGFzIFBMTCBkaXZpZGVyIHZhbHVlcyBib3RoIGZvciBNSVBJKERTSSBQ
TEwpIGFuZA0KPiA+IENEQ0xLKERFIFBMTCkgYXJlIGNvcnJlY3QsIGhvd2V2ZXIgc2VlbXMgdGhh
dCBkdWUgdG8gc29tZQ0KPiA+IGJvdW5kYXJ5IGNvbmRpdGlvbnMsIHdoZW4gY2xvY2tpbmcgaXMg
dG9vIGxvdyB3ZSBnZXQNCj4gPiB3cm9uZyB0aW1pbmdzIGZvciBEU0kgZGlzcGxheS4NCj4gPiBT
aW1pbGFyIHdvcmthcm91bmQgZXhpc3RzIGZvciBWTFYgdGhvdWdoLCBzbyBqdXN0DQo+ID4gdG9v
ayBzaW1pbGFyIGNvbmRpdGlvbiBpbnRvIHVzZS4gQXQgbGVhc3QgdGhhdCB3YXkNCj4gPiBHTEsg
cGxhdGZvcm0gd2lsbCBzdGFydCB0byBiZSB1c2FibGUgYWdhaW4sIHdpdGgNCj4gPiBjdXJyZW50
IGRybS10aXAuDQo+ID4gDQo+ID4gdjI6IEZpeGVkIGNvbW1pdCBzdWJqZWN0IGFzIHN1Z2dlc3Rl
ZC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNs
YXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiBBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IERvIHdlIGhhdmUgYSBidWd6aWxs
YSBsaW5rPw0KPiANCj4gQlIsDQo+IEphbmkuDQoNCk5vLCBvciBhdCBsZWFzdCBJJ20gbm90IGF3
YXJlIG9mLiBJIGp1c3QgZ290IGEgbWFjaGluZSBmcm9tIENJIGZvcg0KaW52ZXN0aWdhdGlvbiA6
KSBJIGd1ZXNzIGl0IG1pZ2h0IGJlIHdvcnRoIHRvIGNyZWF0ZSBhIGJ1ZyBmb3IgdGhhdC4NCg0K
DQpNYXJ0aW46IGRvIHdlIGhhdmUgYSBidWcgZm9yIENJIEdMSyBpc3N1ZT8NCg0KLVN0YW5pc2xh
dg0KDQo+IA0KPiANCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2Rj
bGsuYyB8IDkgKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYw0KPiA+IGluZGV4IGFl
NDBhODY3OTMxNC4uMmIyM2Y4NTAwMzYyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NkY2xrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jZGNsay5jDQo+ID4gQEAgLTIyNzcsNiArMjI3NywxNSBAQCBpbnQgaW50ZWxfY3J0Y19jb21w
dXRlX21pbl9jZGNsayhjb25zdA0KPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiA+ICAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQ0KPiA+ICAJCW1pbl9jZGNs
ayA9IG1heCgzMjAwMDAsIG1pbl9jZGNsayk7DQo+ID4gIA0KPiA+ICsJLyoNCj4gPiArCSAqIE9u
IEdlbWluaWxha2Ugb25jZSB0aGUgQ0RDTEsgZ2V0cyBhcyBsb3cgYXMgNzkyMDANCj4gPiArCSAq
IHBpY3R1cmUgZ2V0cyB1bnN0YWJsZSwgZGVzcGl0ZSB0aGF0IHZhbHVlcyBhcmUNCj4gPiArCSAq
IGNvcnJlY3QgZm9yIERTSSBQTEwgYW5kIERFIFBMTC4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKGlu
dGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYNCj4gPiAr
CSAgICBJU19HRU1JTklMQUtFKGRldl9wcml2KSkNCj4gPiArCQltaW5fY2RjbGsgPSBtYXgoMTU4
NDAwLCBtaW5fY2RjbGspOw0KPiA+ICsNCj4gPiAgCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+
bWF4X2NkY2xrX2ZyZXEpIHsNCj4gPiAgCQlEUk1fREVCVUdfS01TKCJyZXF1aXJlZCBjZGNsayAo
JWQga0h6KSBleGNlZWRzIG1heCAoJWQNCj4gPiBrSHopXG4iLA0KPiA+ICAJCQkgICAgICBtaW5f
Y2RjbGssIGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSk7DQo+IA0KPiANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
