Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E13F7A72
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CBE6E9B6;
	Mon, 11 Nov 2019 18:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C186E9B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 18:04:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 10:04:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="403961088"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 11 Nov 2019 10:04:40 -0800
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 11 Nov 2019 10:04:39 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.150]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.36]) with mapi id 14.03.0439.000;
 Mon, 11 Nov 2019 10:04:39 -0800
From: "Hiatt, Don" <don.hiatt@intel.com>
To: Tomas Janousek <tomi@nomi.cz>, "Wajdeczko, Michal"
 <Michal.Wajdeczko@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/guc: Add GuC method to determine if
 submission is active.
Thread-Index: AQHVlMlBj3P0TwIhvkaVCEnHDA6TAaeEy5mAgAF/HMA=
Date: Mon, 11 Nov 2019 18:04:39 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F991CC6@ORSMSX106.amr.corp.intel.com>
References: <20191106174003.26162-1-don.hiatt@intel.com>
 <20191110111059.5wmqoy2fe4fm3wiq@notes.lisk.in>
In-Reply-To: <20191110111059.5wmqoy2fe4fm3wiq@notes.lisk.in>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTJkNmZmMTYtYTYwYy00MGFkLWFlZDEtZjYyN2NkNTkxZjEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYlAzNmtcLzhVVVdqd2lhREhNTlI3bmx2M1F6dlQwZkZMNjdLaXpCd293RjdiKys3TUxEV1ViRWo0RmxsZTZBWHEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add GuC method to
 determine if submission is active.
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

DQoNCj4gRnJvbTogVG9tYXMgSmFub3VzZWsgPHRvbWlAbm9taS5jej4NCj4gU2VudDogU3VuZGF5
LCBOb3ZlbWJlciAxMCwgMjAxOSAzOjExIEFNDQo+IFRvOiBIaWF0dCwgRG9uIDxkb24uaGlhdHRA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBSZTogW1BBVENIIDEvMl0gZHJtL2k5MTUvZ3VjOiBBZGQgR3VDIG1ldGhvZCB0byBkZXRl
cm1pbmUgaWYNCj4gc3VibWlzc2lvbiBpcyBhY3RpdmUuDQo+IA0KPiBPbiBXZWQsIE5vdiAwNiwg
MjAxOSBhdCAwOTo0MDowMkFNIC0wODAwLCBkb24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOg0KPiA+
IEFkZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFibGVkKCkgZnVuY3Rpb24gdG8gZGV0ZXJt
aW5lIGlmDQo+ID4gR3VDIHN1Ym1pc3Npb24gaXMgYWN0aXZlLiBCYXNlZCBvbiBjb2RlIGJ5IE1p
Y2hhbCBXYWpkZWN6a28uDQo+IA0KPiBEb24ndCBmb3JnZXQgdG8gdXBkYXRlIFVTRVNfR1VDX1NV
Qk1JU1NJT04gKGFuZC9vcg0KPiBpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKSB0byB1c2Ug
dGhpcyBuZXcgZnVuY3Rpb24uDQo+IA0KTWljaGFsIHNhaWQgdGhhdCB5b3UgaGF2ZSB0byB1c2Ug
VVNFX0dVQ19TVUJNSVNTSU9OIHVudGlsIHRoZSBlbmdpbmVzDQphcmUgdXAgYW5kIHRoYXQgdGhp
cyBmdW5jdGlvbiBjYW4ndCByZXBsYWNlIGl0J3MgdXNhZ2UuDQoNCk1pY2hhbDogQmFzZWQgdXBv
biB0aGUgZmVlZGJhY2ssIGRvIHlvdSBoYXZlIGFueSBpc3N1ZSB3aXRoIG1lIGdvaW5nIGJhY2sg
dG8NCnYyIG9mIHRoZSBwYXRjaD8NCg0KDQo+IChBbmQgSSBzdGlsbCB0aGluayB0aGUgImRybS9p
OTE1L2d1YzogU2tpcCBzdXNwZW5kL3Jlc3VtZSBHdUMgYWN0aW9uIG9uIiBwYXRjaA0KPiBzaG91
bGQganVzdCB1c2UgVVNFU19HVUNfU1VCTUlTU0lPTi4gVGhlIGN1cnJlbnQgdmVyc2lvbiAodjMg
JiB2NCkgb2YgdGhlDQo+IHBhdGNoIHdoaWNoIHNwbGl0cyB0aGUgbG9naWMgYmV0d2VlbiBpbnRl
bF9ndWMuYyBhbmQgaW50ZWxfdWMuYyBqdXN0IHRvIGF2b2lkDQo+IHRoZSBnb3RvIGlzIG1ha2lu
ZyB0aGUgY29kZSBoYXJkZXIgdG8gbWFpbnRhaW4sIGluIG15IG9waW5pb24uKQ0KPiANCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24u
YyB8ICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJt
aXNzaW9uLmggfCAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgICAgICAgICAgfCAxNCArKysrKysrKysrKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYw0KPiA+IGluZGV4
IDI0OThjNTVlMGVhNS4uMGFhZWY3YzA3ODc5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ID4gQEAgLTEwODEs
NyArMTA4MSw3IEBAIHN0YXRpYyB2b2lkIGd1Y19pbnRlcnJ1cHRzX3JlbGVhc2Uoc3RydWN0IGlu
dGVsX2d0DQo+ICpndCkNCj4gPiAgCXJwcy0+cG1faW50cm1za19tYnogJj0gfkFSQVRfRVhQSVJF
RF9JTlRSTVNLOw0KPiA+ICB9DQo+ID4NCj4gPiAtc3RhdGljIHZvaWQgZ3VjX3NldF9kZWZhdWx0
X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiA+ICt2b2lkIGd1
Y19zZXRfZGVmYXVsdF9zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkN
Cj4gPiAgew0KPiA+ICAJLyoNCj4gPiAgCSAqIFdlIGluaGVyaXQgYSBidW5jaCBvZiBmdW5jdGlv
bnMgZnJvbSBleGVjbGlzdHMgdGhhdCB3ZSdkIGxpa2UNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmgNCj4gPiBpbmRleCA1NGQ3
MTY4MjgzNTIuLmEwMTMyZjA2MWViYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaA0KPiA+IEBAIC02Myw1ICs2Myw2
IEBAIHZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZ3VjDQo+
ICpndWMpOw0KPiA+ICB2b2lkIGludGVsX2d1Y19zdWJtaXNzaW9uX2Zpbmkoc3RydWN0IGludGVs
X2d1YyAqZ3VjKTsNCj4gPiAgaW50IGludGVsX2d1Y19wcmVlbXB0X3dvcmtfY3JlYXRlKHN0cnVj
dCBpbnRlbF9ndWMgKmd1Yyk7DQo+ID4gIHZvaWQgaW50ZWxfZ3VjX3ByZWVtcHRfd29ya19kZXN0
cm95KHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7DQo+ID4gK3ZvaWQgZ3VjX3NldF9kZWZhdWx0X3N1
Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsNCj4gPg0KPiA+ICAjZW5k
aWYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBpbmRleCA3ZTBmNjdiYWJlMjAu
Ljg3OGQ1NzRiYjFjMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IEBA
IC03OCw4ICs3OCwxMCBAQA0KPiA+DQo+ID4gICNpbmNsdWRlICJndC9pbnRlbF9scmMuaCINCj4g
PiAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZS5oIg0KPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxf
Z3QuaCINCj4gPiAgI2luY2x1ZGUgImd0L2ludGVsX2d0X3R5cGVzLmgiDQo+ID4gICNpbmNsdWRl
ICJndC9pbnRlbF93b3JrYXJvdW5kcy5oIg0KPiA+ICsjaW5jbHVkZSAiZ3QvdWMvaW50ZWxfZ3Vj
X3N1Ym1pc3Npb24uaCINCj4gPiAgI2luY2x1ZGUgImd0L3VjL2ludGVsX3VjLmgiDQo+ID4NCj4g
PiAgI2luY2x1ZGUgImludGVsX2RldmljZV9pbmZvLmgiDQo+ID4gQEAgLTIwMzIsNCArMjAzNCwx
NiBAQCBpOTE1X2NvaGVyZW50X21hcF90eXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpp
OTE1KQ0KPiA+ICAJcmV0dXJuIEhBU19MTEMoaTkxNSkgPyBJOTE1X01BUF9XQiA6IEk5MTVfTUFQ
X1dDOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIGlubGluZSBib29sIGludGVsX2d1Y19zdWJt
aXNzaW9uX2lzX2VuYWJsZWQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+ICt7DQo+ID4gKwlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7DQo+ID4gKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsNCj4gPiAr
DQo+ID4gKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpDQo+ID4gKwkJcmV0dXJuIGVu
Z2luZS0+c2V0X2RlZmF1bHRfc3VibWlzc2lvbiA9PQ0KPiA+ICsJCQlndWNfc2V0X2RlZmF1bHRf
c3VibWlzc2lvbjsNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgI2Vu
ZGlmDQo+ID4gLS0NCj4gPiAyLjIwLjENCj4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiANCj4gLS0NCj4gVG9tw6HF
oSBKYW5vdcWhZWssIGEuay5hLiBQaXZuw61rLCBhLmsuYS4gTGlza25pX3NpLCBodHRwOi8vd29y
ay5saXNrLmluLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
