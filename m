Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B7B1784E0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 22:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABB76E955;
	Tue,  3 Mar 2020 21:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326E46E955
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 21:29:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 13:29:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="319601241"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 03 Mar 2020 13:29:17 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.97]) with mapi id 14.03.0439.000;
 Tue, 3 Mar 2020 13:29:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
Thread-Index: AQHV5rA+dBaiL/G+qECvpM+oYzzaIag37MsAgAADo4CAAA4mgA==
Date: Tue, 3 Mar 2020 21:29:16 +0000
Message-ID: <802159c000ab5c96ec2ffa4156db7428139f4677.camel@intel.com>
References: <20200218230822.66801-1-jose.souza@intel.com>
 <CAKi4VAL-f=p18JtZQjgc9J+KsSGFZ5VQXB3Cb1AYXMC9G-1-qA@mail.gmail.com>
 <20200303203935.GF645250@intel.com>
In-Reply-To: <20200303203935.GF645250@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <3F07AAFED6152C48A53ABCC6167E46F9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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

T24gVHVlLCAyMDIwLTAzLTAzIGF0IDEyOjM5IC0wODAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFR1ZSwgTWFyIDAzLCAyMDIwIGF0IDEyOjI2OjM0UE0gLTA4MDAsIEx1Y2FzIERlIE1hcmNo
aSB3cm90ZToNCj4gPiBPbiBUdWUsIEZlYiAxOCwgMjAyMCBhdCAzOjA3IFBNIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gV2Ug
aGF2ZSBhIGZldyBUR0wgbWFjaGluZXMgaW4gb3VyIENJIGFuZCBpdCBpcyBtb3N0bHkgZ3JlZW4g
d2l0aA0KPiA+ID4gZmFpbHVyZXMgaW4gdGVzdHMgdGhhdCB3aWxsIG5vdCBpbXBhY3QgZnV0dXJl
IExpbnV4DQo+ID4gPiBpbnN0YWxsYXRpb25zLg0KPiA+ID4gQWxzbyB0aGVyZSBpcyBubyB3YXJu
aW5ncywgZXJyb3JzLCBmbGlja2VyaW5nIG9yIGFueSB2aXN1YWwNCj4gPiA+IGRlZmVjdHMNCj4g
PiA+IHdoaWxlIGRvaW5nIG9yZGluYXJ5IHRhc2tzIGxpa2UgYnJvd3NpbmcgYW5kIGVkaXRpbmcg
ZG9jdW1lbnRzIGluDQo+ID4gPiBhDQo+ID4gPiBkdWFsIG1vbml0b3Igc2V0dXAuDQo+ID4gPiAN
Cj4gPiA+IEFzIGEgcmVtaW5kZXIgaTkxNS5yZXF1aXJlX2ZvcmNlX3Byb2JlIHdhcyBjcmVhdGVk
IHRvIHByb3RlY3QNCj4gPiA+IGZ1dHVyZSBMaW51eCBpbnN0YWxsYXRpb24ncyBpc28gaW1hZ2Vz
IHRoYXQgbWlnaHQgY29udGFpbiBhDQo+ID4gPiBrZXJuZWwgZnJvbSB0aGUgZW5hYmxpbmcgdGlt
ZSBvZiB0aGUgbmV3IHBsYXRmb3JtLiBXaXRob3V0IHRoaXMNCj4gPiA+IHByb3RlY3Rpb24gbW9z
dCBvZiBsaW51eCBpbnN0YWxsYXRpb24gd2FzIHJlY29tbWVuZGluZw0KPiA+ID4gbm9tb2Rlc2V0
IG9wdGlvbiBkdXJpbmcgaW5zdGFsbGF0aW9uIHRoYXQgd2FzIGdldHRpbmcgc3RpY2sNCj4gPiA+
IHRoZXJlIGFmdGVyIGluc3RhbGxhdGlvbi4NCj4gPiA+IA0KPiA+ID4gUmVmZXJlbmNlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL2ZpLXRnbC11Lmh0bWwNCj4gPiA+
IFJlZmVyZW5jZTogDQo+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL3NoYXJkLXRnbGIuaHRtbA0KPiA+ID4gQ2M6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVz
QGludGVsLmNvbT4NCj4gPiA+IENjOiBKYW5pIFNhYXJpbmVuIDxqYW5pLnNhYXJpbmVuQGludGVs
LmNvbT4NCj4gPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+
ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+IENjOiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gQWxzbywgSSB0aGluayBpdCB3b3VsZCBiZSBnb29kIHRv
IGhhdmUgdGhpcyBpbiA1LjYgcmF0aGVyIHRoYW4gNS43Lg0KPiA+IFllcywgaXQncyBsYXRlIGlu
IHRoZSBtZXJnZSB3aW5kb3csIGJ1dCBpdCBmYWxscyBpbiB0aGUgY2FzZSBvZg0KPiA+ICJOZXcN
Cj4gPiBkZXZpY2UgSURzIGFuZCBxdWlya3MgYXJlIGFsc28gYWNjZXB0ZWQuIiBvZiB0aGUgc3Rh
YmxlIGtlcm5lbA0KPiA+IHJ1bGVzLA0KPiA+IHNvIGNvdWxkIGFzIHdlbGwganVzdCBnbyBkaXJl
Y3RseSB0byB0aGlzIGtlcm5lbC4gUm9kcmlnbywgaXMgaXQNCj4gPiBwb3NzaWJsZT8NCj4gDQo+
IEphbmkgaXMgb24gY2hhcmdlIG9mIHRoZSA1LjYgc28gSSB3aWxsIGRlZmVyIHRoaXMgZGVjaXNp
b24gdG8gaGltLg0KPiANCj4gQnV0IGluIGdlbmVyYWwgd2UgYWx3YXlzIHJlZnVzZWQgdG8gZG8g
dGhpcyBiZWNhdXNlIHRoaXMgaXMgYQ0KPiBlbmFibGluZw0KPiBraW5kIG9mIHRoaW5nIGFuZCBu
b3QgYSBmaXggcGVyIHNheS4gT2theSwgeW91IG1pZ2h0IGFyZ3VlIHRoYXQgaXQgaXMNCj4gYSBk
ZXZpY2UgSUQgYW5kIHRoYXQgd291bGQgYmUgYWNjZXB0ZWQgb24gc3RhYmxlIHNvIHdoeSBub3Qg
YWxzbyBvbg0KPiBmaXhlcyBjeWNsZSwgYnV0IG15IGZlYXIgaXMgdGhhdCB3ZSBoYXZlbid0IHBy
b3Blcmx5IHZhbGlkYXRlZCB0aGF0DQo+IG9uIDUuNiB3aXRob3V0IHRoZSBtYW55IGNoYW5nZXMs
IGZpeGVzIGFuZCB3b3JrYXJvdW5kcyB0aGF0IGFyZQ0KPiBvbmx5IGdvaW5nIHRvd2FyZHMgNS43
IGFuZCBub3QgNS42Lg0KDQpBbHNvIHdlIGFyZSBibG9ja2VkIHVudGlsIA0KaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTIzMyBpcyBmaXhlZCwgSm9vbmFz
DQphbmQgSm9uIEJsb29tZmllbGQgYWR2aXNlZCB0aGF0Lg0KDQo+IA0KPiA+IHRoYW5rcw0KPiA+
IEx1Y2FzIERlIE1hcmNoaQ0KPiA+IA0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyB8IDEgLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gPiA+IGlu
ZGV4IDI0YjFmMGNlODc0My4uMjE0NmI5YTg2NWJhIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYw0KPiA+ID4gQEAgLTgyMiw3ICs4MjIsNiBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvDQo+ID4gPiB0Z2xfaW5mbyA9IHsNCj4gPiA+ICAgICAgICAg
R0VOMTJfRkVBVFVSRVMsDQo+ID4gPiAgICAgICAgIFBMQVRGT1JNKElOVEVMX1RJR0VSTEFLRSks
DQo+ID4gPiAgICAgICAgIC5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwg
QklUKFBJUEVfQykgfA0KPiA+ID4gQklUKFBJUEVfRCksDQo+ID4gPiAtICAgICAgIC5yZXF1aXJl
X2ZvcmNlX3Byb2JlID0gMSwNCj4gPiA+ICAgICAgICAgLmRpc3BsYXkuaGFzX21vZHVsYXJfZmlh
ID0gMSwNCj4gPiA+ICAgICAgICAgLmVuZ2luZV9tYXNrID0NCj4gPiA+ICAgICAgICAgICAgICAg
ICBCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwNCj4gPiA+
IEJJVChWQ1MyKSwNCj4gPiA+IC0tDQo+ID4gPiAyLjI1LjENCj4gPiA+IA0KPiA+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiA+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QNCj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4DQo+ID4gDQo+ID4gDQo+ID4gLS0gDQo+ID4gTHVjYXMgRGUgTWFyY2hpDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
