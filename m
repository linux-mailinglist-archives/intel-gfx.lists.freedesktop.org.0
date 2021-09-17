Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E8840FE53
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8D86E02E;
	Fri, 17 Sep 2021 17:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59F36E039
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:02:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222494525"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="222494525"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:02:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="483133273"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2021 10:02:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:02:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:02:21 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 17 Sep 2021 10:02:21 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
Thread-Index: AQHXqa47Y9mVfs3M+0eviC8Dq7E/pqulpjoAgAA5fYCAATzGAIAAQiiAgAFMggCAAEPvgA==
Date: Fri, 17 Sep 2021 17:02:21 +0000
Message-ID: <c347299ba2b7bdcb2de79ee60569977058aeb51a.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com> <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
 <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
 <YUSSbMQKuQxQ7Ug9@intel.com>
In-Reply-To: <YUSSbMQKuQxQ7Ug9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <07DFBB610D406745AAC5E85BF378CE56@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

T24gRnJpLCAyMDIxLTA5LTE3IGF0IDE2OjA0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgU2VwIDE2LCAyMDIxIGF0IDA1OjA5OjA4UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0wOS0xNiBhdCAxNjoxNyArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBTZXAgMTUsIDIwMjEgYXQgMDY6MTg6MzVQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFdlZCwgMjAyMS0wOS0xNSBhdCAx
Nzo1OCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFR1ZSwgU2Vw
IDE0LCAyMDIxIGF0IDAyOjI1OjA1UE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6DQo+ID4gPiA+ID4gPiBOb3Qgc3VyZSB3aHkgYnV0IHdoZW4gbW92aW5nIHRoZSBjdXJzb3Ig
ZmFzdCBpdCBjYXVzZXMgc29tZSBhcnRpZmFjdHMNCj4gPiA+ID4gPiA+IG9mIHRoZSBjdXJzb3Ig
dG8gYmUgbGVmdCBpbiB0aGUgY3Vyc29yIHBhdGgsIGFkZGluZyBzb21lIHBpeGVscyBhYm92ZQ0K
PiA+ID4gPiA+ID4gdGhlIGN1cnNvciB0byB0aGUgZGFtYWdlZCBhcmVhIGZpeGVzIHRoZSBpc3N1
ZSwgc28gbGVhdmluZyB0aGlzIGFzIGENCj4gPiA+ID4gPiA+IHdvcmthcm91bmQgdW50aWwgcHJv
cGVyIGZpeCBpcyBmb3VuZC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBIYXZlIHlvdSB0cmllZCB3
YXJwaW5nIHRoZSBjdXJzb3IgY2xlYXIgYWNyb3NzIHRoZSBzY3JlZW4gd2hpbGUNCj4gPiA+ID4g
PiBhIHBhcnRpYWwgdXBkYXRlIGlzIGFscmVhZHkgcGVuZGluZz8gSSB0aGluayBpdCB3aWxsIGdv
IGJhZGx5Lg0KPiA+ID4gPiANCj4gPiA+ID4gWW91IG1lYW4gbW92ZSB0aGUgY3Vyc29yIGZvciBl
eGFtcGxlIGZyb20gMHgwIHRvIDUwMHg1MDAgaW4gb25lIGZyYW1lPw0KPiA+ID4gPiBJdCB3aWxs
IG1hcmsgYXMgZGFtYWdlZCB0aGUgcHJldmlvdXMgYXJlYSBhbmQgdGhlIG5ldyBvbmUuDQo+ID4g
PiANCj4gPiA+IExlZ2FjeSBjdXJzb3IgdXBkYXRlcyBieXBhc3MgYWxsIHRoYXQgc3R1ZmYgc28g
eW91J3JlIG5vdCBnb2luZyB0bw0KPiA+ID4gdXBkYXRpbmcgdGhlIHNlbCBmZXRjaCBhcmVhIGZv
ciB0aGUgb3RoZXIgcGxhbmVzLg0KPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IEluIGZhY3QgSSdtIHRoaW5raW5nIHRoZSBtYWlsYm94IHN0eWxlIGxlZ2FjeSBjdXJzb3Ig
dXBkYXRlcyBhcmUganVzdA0KPiA+ID4gPiA+IGZ1bmRlbWVudGFsbHkgaW5jb21wYXRpYmxlIHdp
dGggcGFydGlhbCB1cGRhdGVzIHNpbmNlIHRoZSBjdXJzb3INCj4gPiA+ID4gPiBjYW4gbW92ZSBv
dXRzaWRlIG9mIHRoZSBhbHJlYWR5IGNvbW1pdHRlZCB1cGRhdGUgcmVnaW9uIGFueSB0aW1lLg0K
PiA+ID4gPiA+IEllLiBJIHN1c3BlY3Qgd2hpbGUgdGhlIGN1cnNvciBpcyB2aXNpYmxlIHdlIHNp
bXBseSBjYW4ndCBkbyBwYXJ0aWFsDQo+ID4gPiA+ID4gdXBkYXRlcy4NCj4gPiA+ID4gDQo+ID4g
PiA+IFByb2JhYmx5IEkgZGlkIG5vdCB1bmRlcnN0YW5kIHdoYXQgeW91IHdhbnQgdG8gc2F5LCBi
dXQgZWFjaCBjdXJzb3IgdXBkYXRlIHdpbGwgYmUgaW4gb25lIGZyYW1lLCB1cGRhdGluZyB0aGUg
bmVjZXNzYXJ5IGFyZWEuDQo+ID4gPiANCj4gPiA+IFRoZSBsZWdhY3kgY3Vyc29yIHVzZXMgbWFp
bGJveCB1cGRhdGVzIHNvIHRoZXJlIGlzIG5vIDE6MSByZWxhdGlvbnNoaXANCj4gPiA+IGJldHdl
ZW4gYWN0dWFsIHNjYW5uZWQgb3V0IGZyYW1lcyBhbmQgY3Vyc29yIGlvY3RsIGNhbGxzLiBZb3Ug
Y2FuDQo+ID4gPiBoYXZlIHVtcHRlZW4gdGhvdXNhbmQgY3Vyc29yIHVwZGF0ZXMgcGVyIGZyYW1l
Lg0KPiA+IA0KPiA+IE5vdCBpZiBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZSgpIGlzIGNoYW5n
ZWQgdG8gZ28gdG8gdGhlIHNsb3cgcGF0aCBhbmQgZG8gb25lIGF0b21pYyBjb21taXQgZm9yIGVh
Y2ggbW92ZS4NCj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDUz
MTkyLz9zZXJpZXM9OTQ1MjImcmV2PTENCj4gDQo+IFRoYXQncyBub3QgZ29pbmcgdG8gZmx5LiBU
aGUgd2hvbGUgcmVhc29uIGZvciB0aGUgbGVnYWN5IGN1cnNvciB0aGluZyBpcw0KPiB0aGF0IFgg
bGlrZXMgdG8gZG8gdGhvdXNhbmRzIG9mIGN1cnNvciB1cGRhdGVzIHBlciBmcmFtZS4NCg0KRnJv
bSB1c2VyIGV4cGVyaWVuY2UgcGVyc3BlY3RpdmUgdGhlcmUgaXMgbm8gaXNzdWVzIGluIGNvbnZl
cnRpbmcgdG8gYXRvbWljIGNvbW1pdCwgdGhvc2UgMyB2aWRlb3MgdGhhdCBJIHNoYXJlZCB3aXRo
IHlvdSBoYXZlIHRoaXMgY29udmVyc2lvbi4gDQoNCj4gDQo+ID4gDQo+ID4gSSBiZWxpZXZlIGNv
bXBvc2l0b3JzIHdpbGwgZG8gYSBzaW5nbGUgYXRvbWljIGNvbW1pdCB1cGRhdGluZyBjdXJzb3Ig
YW5kIGFsbCB0aGUgb3RoZXIgcGxhbmVzIGludG8gYSBzaW5nbGUgY29tbWl0Lg0KPiANCj4gTm8u
IFggb2J2aW91c2x5IGRvZXNuJ3QgZG8gdGhhdC4gQW5kIElJUkMgY2hyb21lb3MgYWxzbyB1c2Vz
IHRoZQ0KPiBsZWdhY3kgY3Vyc29yIGlvY3RsIGZvciB0aGUgY3Vyc29yIGRlc3BpdGUgdXNpbmcg
YXRvbWljIGNvbW1pdHMgZm9yDQo+IGV2ZXJ5dGhpbmcgZWxzZS4NCj4gDQoNCg==
