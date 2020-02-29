Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 172881743E1
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 01:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1456E143;
	Sat, 29 Feb 2020 00:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D84E6E143
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 00:45:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 16:45:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,498,1574150400"; d="scan'208";a="285820416"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Feb 2020 16:45:59 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.97]) with mapi id 14.03.0439.000;
 Fri, 28 Feb 2020 16:45:44 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "mika.kuoppala@linux.intel.com" <mika.kuoppala@linux.intel.com>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
Thread-Index: AQHV7blbQuVoCVTblkOo88w6bvJvyagxpcaAgAAssoCAAAbcAIAABLiA
Date: Sat, 29 Feb 2020 00:45:43 +0000
Message-ID: <3130c4f150e09504a2161cebbf1ac2eda7adf825.camel@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-9-jose.souza@intel.com>
 <20200228212511.GD174531@mdroper-desk1.amr.corp.intel.com>
 <d92a0232b0c7df363fc37cdfcccf48a39c5f4d0c.camel@intel.com>
 <20200229002942.GF174531@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200229002942.GF174531@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <0A2D9ECD62E3FE48BC38F3F5ED812855@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
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

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDE2OjI5IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIEZlYiAyOCwgMjAyMCBhdCAwNDowNDoxN1BNIC0wODAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiBPbiBGcmksIDIwMjAtMDItMjggYXQgMTM6MjUgLTA4MDAsIE1hdHQgUm9wZXIgd3Jv
dGU6DQo+ID4gPiBPbiBUaHUsIEZlYiAyNywgMjAyMCBhdCAwMjowMDo1OVBNIC0wODAwLCBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphDQo+ID4gPiB3cm90ZToNCj4gPiA+ID4gSXQgaXMgZml4ZWQgaW4g
QjAgc3RlcHBpbmcuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNSArKystLQ0KPiA+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+ID4gPiBpbmRleCAyMmFh
MjA1NzkzZTUuLmExMDFkODA3MmI1YiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jDQo+ID4gPiA+IEBAIC02ODM4LDggKzY4MzgsOSBAQCBzdGF0aWMgdm9pZCB0Z2xf
aW5pdF9jbG9ja19nYXRpbmcoc3RydWN0DQo+ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiA+ID4gPiAgCXVuc2lnbmVkIGludCBpOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJLyog
V2FfMTQwODYxNTA3Mjp0Z2wgKi8NCj4gPiA+ID4gLQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJp
di0+dW5jb3JlLA0KPiA+ID4gPiBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsDQo+ID4gPiA+
IC0JCQkgMCwgVlNVTklUX0NMS0dBVEVfRElTX1RHTCk7DQo+ID4gPiA+ICsJaWYgKElTX1RHTF9S
RVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQ0KPiA+ID4gPiArCQlp
bnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLA0KPiA+ID4gPiBVTlNMSUNFX1VOSVRf
TEVWRUxfQ0xLR0FURTIsDQo+ID4gPiA+ICsJCQkJIDAsIFZTVU5JVF9DTEtHQVRFX0RJU19UR0wp
Ow0KPiA+ID4gDQo+ID4gPiBJIHRoaW5rIHRoaXMgd29ya2Fyb3VuZCBpcyBhbHNvIGltcGxlbWVu
dGVkIGluIHRoZSB3cm9uZw0KPiA+ID4gbG9jYXRpb24uICBUaGlzDQo+ID4gPiBpcyBhIHJlbmRl
ciBlbmdpbmUgcmVnaXN0ZXIgKHBhcnQgb2YgdGhlIDk0RDAtOTUxQyByZW5kZXINCj4gPiA+IGZv
cmNld2FrZQ0KPiA+ID4gcmFuZ2Ugb24gYnNwZWMgNTIwNzgpIGFuZCBwYXJ0IG9mIHRoZSBNQ1Ig
cmFuZ2UgKGJzcGVjIDUyMDc5KSwgc28NCj4gPiA+IHdlDQo+ID4gPiBzaG91bGQgcHJvZ3JhbSB0
aGlzIGluIHRoZSBlbmdpbmVfd2FfaW5pdCByYXRoZXIgdGhhbiB0aGUgY2xvY2sNCj4gPiA+IGdh
dGluZw0KPiA+ID4gZnVuY3Rpb24uDQo+ID4gPiANCj4gPiA+IFRoZSBJQ0wvRUhMIHZlcnNpb24g
KHdoaWNoIHdlIGJhc2VkIHRoZSBUR0wgV0Egb24pIGlzIGFsc28gaW4gdGhlDQo+ID4gPiB3cm9u
Zw0KPiA+ID4gcGxhY2UgZm9yIHRoZSBzYW1lIHJlYXNvbnMuDQo+ID4gPiANCj4gPiA+IEF0IHNv
bWUgcG9pbnQgd2Ugc2hvdWxkIHByb2JhYmx5IGF1ZGl0IGFsbCB0aGUgb3RoZXINCj4gPiA+IEdU
L2VuZ2luZS9NQ1INCj4gPiA+IHJlZ2lzdGVycyB3ZSdyZSBkZWFsaW5nIHdpdGggaW4gdGhlIGlu
aXRfY2xvY2tfZ2F0aW5nIGZ1bmN0aW9ucw0KPiA+ID4gYW5kDQo+ID4gPiBtb3ZlDQo+ID4gPiB0
aGVtIG91dCB0byBtb3JlIGFwcHJvcHJpYXRlIHBsYWNlcy4NCj4gPiANCj4gPiBXaGF0IGFib3V0
IHRoaXMgbm90ZSBpbiBCU3BlYyA1MjA3ODoNCj4gPiAqIE5vdGU6IFNvbWUgQ1AgcmVnaXN0ZXJz
ICgweDk0MDAtMHg5N0ZGKSBhcmUgcmVwbGljYXRlZCBpbiBhbGwNCj4gPiBkb21haW5zLCB0aHVz
IGJvdGggcmVuZGVyIGFuZCBtZWRpYSBkb21haW5zIG11c3QgYmUgYXdha2UuDQo+IA0KPiBXZWxs
LCB0aGUgdW5jb3JlIGZ1bmN0aW9ucyB3aWxsIHN0aWxsIHRha2UgY2FyZSBvZiBncmFiYmluZyBi
b3RoDQo+IGZvcmNld2FrZXMgZm9yIHJlZ2lzdGVycyBsaWtlIHRoZXNlIChzbyB0aGF0IHRoZSBy
ZWdpc3RlciB3cml0ZXMgYXJlDQo+IGFwcGxpZWQgdG8gYWxsIHRoZSBtdWx0aWNhc3QgcmVnaXN0
ZXIgaW5zdGFuY2VzIHRoYXQgbGl2ZSBiZWhpbmQgdGhhdA0KPiByZWdpc3RlciBvZmZzZXQpLCBz
byBldmVyeXRoaW5nIHRoYXQgbmVlZHMgdG8gYmUgd2lsbCBiZSBwb3dlcmVkIHVwLg0KPiBCYXNl
ZCBvbiB0aGUgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHdvcmthcm91bmQsIGl0IHNvdW5kcyBsaWtl
IGl0J3MNCj4gb25seQ0KPiBhY3R1YWxseSB0aGUgcmVuZGVyIGVuZ2luZSBpdCByZWFsbHkgbWF0
dGVycyBmb3IgdGhvdWdoLg0KDQpUaGUgV0EgZXhwbGljaXR5IHNheXMgdG8gc2V0IDB4OTRFNCBz
byBvdGhlciBlbmdpbmVzIHdvdWxkIG5lZWQgaXQgdG9vLg0KDQo+IA0KPiBJZiB3ZSBkbyB0aGlz
IGNoYW5nZSBpbiBpbml0X2Nsb2NrX2dhdGluZywgSSBkb24ndCBiZWxpZXZlIGl0IGdldHMNCj4g
cmUtYXBwbGllZCBvbiBzaW5nbGUtZW5naW5lIHJlc2V0cywgc28gd2UgbG9zZSB0aGUgd29ya2Fy
b3VuZC4gIElmIHdlDQo+IGRvDQo+IHRoaXMgaW4gdGhlIHJjcyBlbmdpbmUncyBXQSBmdW5jdGlv
biwgdGhlbiB0aG9zZSB3aWxsIGJlIHJlLWFwcGxpZWQNCg0KRm9yIHdoYXQgSSBjaGVja2VkIGlm
IGRpc3BsYXkgaXMgbm90IGludm9sdmVkIGluIHRoZSByZXNldCBpdCB3b3VsZCBub3QNCmJlIGFw
cGxpZWQsIHNvIGEgYmV0dGVyIGFuZCBlYXNpZXIgc29sbHV0aW9uIHdvdWxkIGJlIG1ha2UgaXQg
YmUNCmV4ZWN1dGVkIHdoZW4gZGlzcGxheSBpcyBub3QgaW52b2x2ZWQuDQoNCkNDaW5nIHNvbWUg
R1QgZm9sa3MuDQoNCj4gDQo+ID4gT3RoZXJ3aXNlIHdlIGhhdmUgYSBodWdlIHByb2JsZW0sIGRv
aW5nIGp1c3QgYSBxdWljayBzZWFyY2ggSSBmb3VuZA0KPiA+IHRoaXMgMiByZWdpc3RlcnMgYmVs
bG93IHRoYXQgd2UgYXJlIHByb2dyYW1pbmcgZnJvbQ0KPiA+IGluaXRfY2xvY2tfZ2F0aW5nKCkN
Cj4gPiBpbiB0aGUgc2FtZSByYW5nZS4NCj4gPiANCj4gPiAjZGVmaW5lIEdFTjhfVUNHQ1RMNgkJ
CQlfTU1JTygweDk0MzApDQo+ID4gI2RlZmluZSBHRU43X01JU0NDUENUTAkJCQlfTU1JTygweDk0
MjQpDQo+IA0KPiBZZWFoLCBJIHN1c3BlY3QgdGhlcmUgYXJlIG11bHRpcGxlIHdvcmthcm91bmRz
IHdlJ3JlIG5vdCBhY3R1YWxseQ0KPiBoYW5kbGluZyBwcm9wZXJseSB0b2RheSAoYnV0IGFzIGxv
bmcgYXMgeW91IGRvbid0IHN1ZmZlciBhbiBlbmdpbmUNCj4gaGFuZw0KPiAmIHJlc2V0LCB5b3Un
bGwgcHJvYmFibHkgbmV2ZXIgbm90aWNlKS4NCj4gDQo+IElJUkMsIHRoZXJlJ3MgYSBmaXhtZSBj
b21tZW50IHNvbWV3aGVyZSBpbiB0aGUgY29kZSBzYXlpbmcgd2Ugc2hvdWxkDQo+IG1vdmUgYWxs
DQo+IHRoZSBub24tZGlzcGxheSBzdHVmZiBvdXIgb2YgaW5pdF9jbG9ja19nYXRpbmcgdG8gbW92
ZSBhcHByb3ByaWF0ZQ0KPiBsb2NhdGlvbnMgdG9vLg0KPiANCj4gDQo+IA0KPiBNYXR0DQo+IA0K
PiA+ID4gDQo+ID4gPiBNYXR0DQo+ID4gPiANCj4gPiA+ID4gIA0KPiA+ID4gPiAgCS8qIFRoaXMg
aXMgbm90IGEgV0EuIEVuYWJsZSBWRCBIQ1AgJiBNRlhfRU5DIHBvd2VyZ2F0ZQ0KPiA+ID4gPiAq
Lw0KPiA+ID4gPiAgCWZvciAoaSA9IDA7IGkgPCBJOTE1X01BWF9WQ1M7IGkrKykgew0KPiA+ID4g
PiAtLSANCj4gPiA+ID4gMi4yNS4xDQo+ID4gPiA+IA0KPiA+ID4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+ID4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
