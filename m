Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7B140E1C7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 19:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5AA6EBD0;
	Thu, 16 Sep 2021 17:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4412C6EBD0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 17:09:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="209846614"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="209846614"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 10:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="698939951"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 16 Sep 2021 10:09:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 10:09:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 10:09:08 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 16 Sep 2021 10:09:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
Thread-Index: AQHXqa47Y9mVfs3M+0eviC8Dq7E/pqulpjoAgAA5fYCAATzGAIAAQiiA
Date: Thu, 16 Sep 2021 17:09:08 +0000
Message-ID: <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com> <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
In-Reply-To: <YUNEAE86LBNdEKqD@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6DD7557F6317C147B7782DB2DF7D94D2@intel.com>
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

T24gVGh1LCAyMDIxLTA5LTE2IGF0IDE2OjE3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDE1LCAyMDIxIGF0IDA2OjE4OjM1UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0wOS0xNSBhdCAxNzo1OCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBTZXAgMTQsIDIwMjEgYXQgMDI6MjU6MDVQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gTm90IHN1cmUgd2h5
IGJ1dCB3aGVuIG1vdmluZyB0aGUgY3Vyc29yIGZhc3QgaXQgY2F1c2VzIHNvbWUgYXJ0aWZhY3Rz
DQo+ID4gPiA+IG9mIHRoZSBjdXJzb3IgdG8gYmUgbGVmdCBpbiB0aGUgY3Vyc29yIHBhdGgsIGFk
ZGluZyBzb21lIHBpeGVscyBhYm92ZQ0KPiA+ID4gPiB0aGUgY3Vyc29yIHRvIHRoZSBkYW1hZ2Vk
IGFyZWEgZml4ZXMgdGhlIGlzc3VlLCBzbyBsZWF2aW5nIHRoaXMgYXMgYQ0KPiA+ID4gPiB3b3Jr
YXJvdW5kIHVudGlsIHByb3BlciBmaXggaXMgZm91bmQuDQo+ID4gPiANCj4gPiA+IEhhdmUgeW91
IHRyaWVkIHdhcnBpbmcgdGhlIGN1cnNvciBjbGVhciBhY3Jvc3MgdGhlIHNjcmVlbiB3aGlsZQ0K
PiA+ID4gYSBwYXJ0aWFsIHVwZGF0ZSBpcyBhbHJlYWR5IHBlbmRpbmc/IEkgdGhpbmsgaXQgd2ls
bCBnbyBiYWRseS4NCj4gPiANCj4gPiBZb3UgbWVhbiBtb3ZlIHRoZSBjdXJzb3IgZm9yIGV4YW1w
bGUgZnJvbSAweDAgdG8gNTAweDUwMCBpbiBvbmUgZnJhbWU/DQo+ID4gSXQgd2lsbCBtYXJrIGFz
IGRhbWFnZWQgdGhlIHByZXZpb3VzIGFyZWEgYW5kIHRoZSBuZXcgb25lLg0KPiANCj4gTGVnYWN5
IGN1cnNvciB1cGRhdGVzIGJ5cGFzcyBhbGwgdGhhdCBzdHVmZiBzbyB5b3UncmUgbm90IGdvaW5n
IHRvDQo+IHVwZGF0aW5nIHRoZSBzZWwgZmV0Y2ggYXJlYSBmb3IgdGhlIG90aGVyIHBsYW5lcy4N
Cj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IEluIGZhY3QgSSdtIHRoaW5raW5nIHRoZSBtYWlsYm94
IHN0eWxlIGxlZ2FjeSBjdXJzb3IgdXBkYXRlcyBhcmUganVzdA0KPiA+ID4gZnVuZGVtZW50YWxs
eSBpbmNvbXBhdGlibGUgd2l0aCBwYXJ0aWFsIHVwZGF0ZXMgc2luY2UgdGhlIGN1cnNvcg0KPiA+
ID4gY2FuIG1vdmUgb3V0c2lkZSBvZiB0aGUgYWxyZWFkeSBjb21taXR0ZWQgdXBkYXRlIHJlZ2lv
biBhbnkgdGltZS4NCj4gPiA+IEllLiBJIHN1c3BlY3Qgd2hpbGUgdGhlIGN1cnNvciBpcyB2aXNp
YmxlIHdlIHNpbXBseSBjYW4ndCBkbyBwYXJ0aWFsDQo+ID4gPiB1cGRhdGVzLg0KPiA+IA0KPiA+
IFByb2JhYmx5IEkgZGlkIG5vdCB1bmRlcnN0YW5kIHdoYXQgeW91IHdhbnQgdG8gc2F5LCBidXQg
ZWFjaCBjdXJzb3IgdXBkYXRlIHdpbGwgYmUgaW4gb25lIGZyYW1lLCB1cGRhdGluZyB0aGUgbmVj
ZXNzYXJ5IGFyZWEuDQo+IA0KPiBUaGUgbGVnYWN5IGN1cnNvciB1c2VzIG1haWxib3ggdXBkYXRl
cyBzbyB0aGVyZSBpcyBubyAxOjEgcmVsYXRpb25zaGlwDQo+IGJldHdlZW4gYWN0dWFsIHNjYW5u
ZWQgb3V0IGZyYW1lcyBhbmQgY3Vyc29yIGlvY3RsIGNhbGxzLiBZb3UgY2FuDQo+IGhhdmUgdW1w
dGVlbiB0aG91c2FuZCBjdXJzb3IgdXBkYXRlcyBwZXIgZnJhbWUuDQoNCk5vdCBpZiBpbnRlbF9s
ZWdhY3lfY3Vyc29yX3VwZGF0ZSgpIGlzIGNoYW5nZWQgdG8gZ28gdG8gdGhlIHNsb3cgcGF0aCBh
bmQgZG8gb25lIGF0b21pYyBjb21taXQgZm9yIGVhY2ggbW92ZS4NCmh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80NTMxOTIvP3Nlcmllcz05NDUyMiZyZXY9MQ0KDQpJIGJl
bGlldmUgY29tcG9zaXRvcnMgd2lsbCBkbyBhIHNpbmdsZSBhdG9taWMgY29tbWl0IHVwZGF0aW5n
IGN1cnNvciBhbmQgYWxsIHRoZSBvdGhlciBwbGFuZXMgaW50byBhIHNpbmdsZSBjb21taXQuDQoN
Cj4gDQo+ID4gU28gSSBjYW4ndCB1bmRlcnN0YW5kIHdoeSBpdCBpcyBpbmNvbXBhdGlibGUuDQo+
IA0KPiBCZWNhdXNlIGFsbCB0aGUgb3RoZXIgcGxhbmVzIGFscmVhZHkgZ290IHRoZWlyIHNlbGVj
dGl2ZSBmZXRjaCBhcmVhDQo+IHVwZGF0ZWQgZWFybGlyLCBhbmQgbm93IHRoZSBjdXJzb3IncyBu
ZXcgdXBkYXRlIGFyZWEgaXMgc29tZXRoaW5nDQo+IHRvdGFsbHkgZGlmZmVyZW50LiBEb2Vzbid0
IHRoZSB0b3RhbCBhcmVhIG5lZWQgdG8gY29tcHV0ZWQgdG8gY29tcHJpc2UNCj4gb2YgYSBzaW5n
bGUgY3J0YyBzcGFjZSByZWN0YW5nbGUgZXNzZW50aWFsbHk/DQo+IA0KPiBTbyB3ZSBjb3VsZCBz
dGFydCB3aXRoIHNvbWV0aGluZyBsaWtlOg0KPiANCj4gc2VsIGZldGNoIGFyZWENCj4gIHwNCj4g
IHYNCj4gIF9fX19fX19fX19fX19fX18NCj4gPiBfX19fX19fXyAgICAgICB8DQo+ID4gPiBwbGFu
ZSB8ICAgICAgfA0KPiA+ID4gICAgICAgfF9fX19fIHwNCj4gPiBfX19fX19fX18gICAgIHx8DQo+
ID4gICBfICAgfCBwbGFuZSB8fA0KPiA+ICB8X3wgIHxfX19fX19ffHwNCj4gPiBfX19fX19fX19f
X19fX19ffCAgIA0KPiAgICAgXg0KPiAgICAgfA0KPiBjdXJzb3INCj4gDQo+IFRoZW4gdGhlIGN1
cnNvciBtb3ZlcyBiZWZvcmUgdGhlIGhhcmR3YXJlIGhhcyBldmVuIGxhdGNoZWQgdGhlIHByZXZp
b3VzDQo+IHVwZGF0ZToNCj4gDQo+IG9sZCBzZWwgZmV0Y2ggYXJlYQ0KPiAgfA0KPiAgdg0KPiAg
X19fX19fX19fX19fX19fXw0KPiA+IF9fX19fX19fICAgICAgIHwNCj4gPiA+IHBsYW5lIHwgICAg
ICB8ICAgIF8NCj4gPiA+ICAgICAgIHxfX19fXyB8ICAgfF98DQo+ID4gX19fX19fX19fICAgICB8
fCAgICBeDQo+ID4gICAgICAgfCBwbGFuZSB8fCAgICB8DQo+ID4gICAgICAgfF9fX19fX198fCAg
IGN1cnNvcg0KPiA+IF9fX19fX19fX19fX19fX198ICAgIA0KPiANCg0K
