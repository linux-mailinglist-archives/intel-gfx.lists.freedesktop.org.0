Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567EE798B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 21:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974C06E9E8;
	Mon, 28 Oct 2019 20:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593026E9E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:04:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 13:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="205269168"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2019 13:04:14 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 28 Oct 2019 13:04:13 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.210]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.36]) with mapi id 14.03.0439.000;
 Mon, 28 Oct 2019 13:04:13 -0700
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
Thread-Index: AQHViohM005e6yyaHEGJsPy5MI+iM6dwvi2A//+j+1CAAHmsgP//pJCA
Date: Mon, 28 Oct 2019 20:04:13 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F976B28@ORSMSX106.amr.corp.intel.com>
References: <20191024162958.11839-1-don.hiatt@intel.com>
 <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
 <97654A90DB924C44A3AE6C902A3FEAC15F976A54@ORSMSX106.amr.corp.intel.com>
 <e0f9e325-2783-4a2d-7eaf-ac0b78c15e1c@intel.com>
In-Reply-To: <e0f9e325-2783-4a2d-7eaf-ac0b78c15e1c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGI5ZTIxNDMtZTRhNC00MGFkLThkMzQtNWQ3NjdiYTlhZDBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ091OXpYUkZscjJJbTFiVFZaZGZtZTNqaWdRaGtnRUNyaFlsUGkwV3JteWtMM2ZkZ2FlNHdON3hMSjlVeE9BUCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gRnJvbTogQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgT2N0b2JlciAyOCwgMjAxOSAxMTozMCBBTQ0K
PiBUbzogSGlhdHQsIERvbiA8ZG9uLmhpYXR0QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5
MTQvZ3VjOiBGaXggcmVzdW1lIG9uIHBsYXRmb3JtcyB3L28gR3VDDQo+IHN1Ym1pc3Npb24gYnV0
IGVuYWJsZWQNCj4gDQo+IA0KPiANCj4gT24gMTAvMjgvMTkgMTE6MTcgQU0sIEhpYXR0LCBEb24g
d3JvdGU6DQo+ID4+IEZyb206IENlcmFvbG8gU3B1cmlvLCBEYW5pZWxlIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPg0KPiA+PiBTZW50OiBNb25kYXksIE9jdG9iZXIgMjgsIDIwMTkg
OTo0NCBBTQ0KPiA+PiBUbzogSGlhdHQsIERvbiA8ZG9uLmhpYXR0QGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTQvZ3VjOiBGaXggcmVzdW1lIG9uIHBsYXRmb3JtcyB3L28NCj4gR3VD
DQo+ID4+IHN1Ym1pc3Npb24gYnV0IGVuYWJsZWQNCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gT24g
MTAvMjQvMTkgOToyOSBBTSwgZG9uLmhpYXR0QGludGVsLmNvbSB3cm90ZToNCj4gPj4+IEZyb206
IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4NCj4gPj4+DQo+ID4+PiBDaGVjayB0byBz
ZWUgaWYgR3VDIHN1Ym1pc3Npb24gaXMgZW5hYmxlZCBiZWZvcmUgcmVxdWVzdGluZyB0aGUNCj4g
Pj4+IEVYSVRfU19TVEFURSBhY3Rpb24uDQo+ID4+Pg0KPiA+Pg0KPiA+PiBZb3UncmUgb25seSBz
a2lwcGluZyB0aGUgcmVzdW1lLCBidXQgZG9lcyBpdCBtYWtlIGFueSBzZW5zZSB0byBkbyB0aGUN
Cj4gPj4gc3VzcGVuZCBhY3Rpb24gaWYgd2UncmUgbm90IGdvaW5nIHRvIGNhbGwgdGhlIHJlc3Vt
ZSBvbmU/IERvZXMgZ3VjIGRvDQo+ID4+IGFueXRoaW5nIGluIHRoZSBzdXNwZW5kIGFjdGlvbiB0
aGF0IHdlIHN0aWxsIHJlcXVpcmU/IEkgdGhvdWdodCBpdCBvbmx5DQo+ID4+IHNhdmVkIHRoZSBz
dWJtaXNzaW9uIHN0YXR1cywgd2hpY2ggd2UgZG9uJ3QgY2FyZSBhYm91dCBpZiBndWMgc3VibWlz
c2lvbg0KPiA+PiBpcyBkaXNhYmxlZC4NCj4gPj4NCj4gPj4gRGFuaWVsZQ0KPiA+Pg0KPiA+DQo+
ID4gSGkgRGFuaWVsZSwNCj4gPg0KPiA+IEkgdHJpZWQgc2tpcHBpbmcgdGhlIHN1c3BlbmQgYWxs
IHRvZ2V0aGVyIGJ1dCB0aGVuIHRoZSBIdUMgZ2V0cyB0aW1lb3V0cw0KPiA+IHdhaXRpbmcgZm9y
IHRoZSBHdUMgdG8gYWNrbm93bGVkZ2UgdGhlIGF1dGhlbnRpY2F0aW9uIHJlcXVlc3Qgd2hpY2gg
bGVhZHMgdG8NCj4gYQ0KPiA+IHdlZGdlZCBHUFUuIOKYuQ0KPiA+DQo+IA0KPiBEbyB3ZSBrbm93
IHdoeT8gaWYgd2Ugc2tpcCB0aGUgc3VzcGVuZC9yZXN1bWUgSDJHIGFuZCByZWxvYWQgdGhlIGJs
b2JzDQo+IGFmdGVyIHJlc2V0dGluZyB0aGUgSFcgaXQgc2hvdWxkIGxvb2sgbGlrZSBhIGNsZWFu
IGJvb3QgZnJvbSB0aGUgSFcNCj4gcGVyc3BlY3RpdmUsIHNvIHRoZSBmYWN0IHRoYXQgSHVDIGF1
dGggdGltZXMgb3V0IGZlZWxzIHdlaXJkIGFuZCBtaWdodA0KPiBoaWRlIG90aGVyIGlzc3Vlcy4g
SSBhc2tlZCBvbmUgb2YgdGhlIGd1YyBkZXZzIGFuZCBoZSBhbHNvIHRoaW5rcyB0aGlzDQo+IGlz
IG5vdCBleHBlY3RlZCBiZWhhdmlvci4gQ2FuIHlvdSBkaWcgYSBiaXQgbW9yZT8NCj4gDQo+IFRo
YW5rcywNCj4gRGFuaWVsZQ0KPiANCg0KTm8gaWRlYSB3aHkgYnV0IEknbGwgZG8gc29tZSBkaWdn
aW5nIGFuZCBzZWUgd2hhdCBJIGZpbmQuDQoNClRoYW5rcyENCg0KZG9uDQoNCj4gPiBCVFcsIEkg
bWFkZSBhIHR5cG8gaW4gdGhlIHBhdGNoLCBzaG91bGQgYmUgJ2RybS9pOTE1JyBub3QgJzkxNCcs
IEknbGwgZml4IHRoYXQNCj4gPiB1cC4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPg0KPiA+IGRvbg0K
PiA+DQo+ID4NCj4gPj4+IE9uIHNvbWUgcGxhdGZvcm1zIChlLmcuIEtCTCkgdGhhdCBkbyBub3Qg
c3VwcG9ydCBHdUMgc3VibWlzc2lvbiwgYnV0DQo+ID4+PiB0aGUgdXNlciBlbmFibGVkIHRoZSBH
dUMgY29tbXVuaWNhdGlvbiAoZS5nIGZvciBIdUMgYXV0aGVudGljYXRpb24pDQo+ID4+PiBjYWxs
aW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0
eSB0bw0KPiA+Pj4gZW50ZXIgUkM2LiBHdWFyZCBhZ2FpbnN0IHRoaXMgYnkgb25seSByZXF1ZXN0
aW5nIHRoZSBHdUMgYWN0aW9uIG9uDQo+ID4+PiBwbGF0Zm9ybXMgdGhhdCBzdXBwb3J0IEd1QyBz
dWJtaXNzaW9uLg0KPiA+Pj4NCj4gPj4+IEkndmUgdmVyZmllZCB0aGF0IGludGVsX2d1Y19yZXN1
bWUoKSBvbmx5IGdldHMgY2FsbGVkIHdoZW4gZHJpdmVyDQo+ID4+PiBpcyBsb2FkZWQgd2l0aDog
Z3VjX2VuYWJsZT17MSwyLDN9LCBhbGwgb3RoZXIgY2FzZXMgKG5vIGFyZ3MsDQo+ID4+PiBndWNf
ZW5hYmxlPXswLC0xfSB0aGUgaW50ZWxfZ3VjX3Jlc3VtZSgpIGlzIG5vdCBjYWxsZWQuDQo+ID4+
Pg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0K
PiA+Pj4gLS0tDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMu
YyB8IDUgKysrKy0NCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmMNCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWMuYw0KPiA+Pj4gaW5kZXggMzdmN2JjYmY3ZGFjLi4zMzMxOGVkMTM1YzAgMTAwNjQ0
DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiA+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMNCj4gPj4+IEBA
IC01NjUsNyArNTY1LDEwIEBAIGludCBpbnRlbF9ndWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndWMg
Kmd1YykNCj4gPj4+ICAgIAkJR1VDX1BPV0VSX0QwLA0KPiA+Pj4gICAgCX07DQo+ID4+Pg0KPiA+
Pj4gLQlyZXR1cm4gaW50ZWxfZ3VjX3NlbmQoZ3VjLCBhY3Rpb24sIEFSUkFZX1NJWkUoYWN0aW9u
KSk7DQo+ID4+PiArCWlmIChndWMtPnN1Ym1pc3Npb25fc3VwcG9ydGVkKQ0KPiA+Pj4gKwkJcmV0
dXJuIGludGVsX2d1Y19zZW5kKGd1YywgYWN0aW9uLCBBUlJBWV9TSVpFKGFjdGlvbikpOw0KPiA+
Pj4gKw0KPiA+Pj4gKwlyZXR1cm4gMDsNCj4gPj4+ICAgIH0NCj4gPj4+DQo+ID4+PiAgICAvKioN
Cj4gPj4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
