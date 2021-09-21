Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A05413DAC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 00:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6176E8E4;
	Tue, 21 Sep 2021 22:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8F06E8B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 22:37:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210713895"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="210713895"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 15:37:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="484336308"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2021 15:37:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 21 Sep 2021 15:37:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 21 Sep 2021 15:37:53 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 21 Sep 2021 15:37:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
Thread-Index: AQHXqa47Y9mVfs3M+0eviC8Dq7E/pqulpjoAgAA5fYCAATzGAIAAQiiAgAFMggCAAEPvgIAAC30AgABAaICABcI3AIAAmP6A
Date: Tue, 21 Sep 2021 22:37:53 +0000
Message-ID: <61306afdb2d733d342336c3eb57df558c497afe4.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com> <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
 <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
 <YUSSbMQKuQxQ7Ug9@intel.com>
 <c347299ba2b7bdcb2de79ee60569977058aeb51a.camel@intel.com>
 <YUTVDPKmGezFAt+d@intel.com>
 <2e523c6b149091fb9418bbfd44bde129fb20b7f0.camel@intel.com>
 <YUnfvMLGDbhopmEj@intel.com>
In-Reply-To: <YUnfvMLGDbhopmEj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5379346025A4C942AC6259E566411BA2@intel.com>
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDE2OjM1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgU2VwIDE3LCAyMDIxIGF0IDA5OjMzOjU5UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMS0wOS0xNyBhdCAyMDo0OSArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBTZXAgMTcsIDIwMjEgYXQgMDU6MDI6MjFQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIEZyaSwgMjAyMS0wOS0xNyBhdCAx
NjowNCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFRodSwgU2Vw
IDE2LCAyMDIxIGF0IDA1OjA5OjA4UE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4g
PiA+ID4gT24gVGh1LCAyMDIxLTA5LTE2IGF0IDE2OjE3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIFdlZCwgU2VwIDE1LCAyMDIxIGF0IDA2OjE4OjM1UE0g
KzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+IE9uIFdlZCwgMjAyMS0w
OS0xNSBhdCAxNzo1OCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+ID4g
PiA+ID4gT24gVHVlLCBTZXAgMTQsIDIwMjEgYXQgMDI6MjU6MDVQTSAtMDcwMCwgSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gPiA+ID4gPiA+ID4gTm90IHN1cmUgd2h5IGJ1
dCB3aGVuIG1vdmluZyB0aGUgY3Vyc29yIGZhc3QgaXQgY2F1c2VzIHNvbWUgYXJ0aWZhY3RzDQo+
ID4gPiA+ID4gPiA+ID4gPiA+IG9mIHRoZSBjdXJzb3IgdG8gYmUgbGVmdCBpbiB0aGUgY3Vyc29y
IHBhdGgsIGFkZGluZyBzb21lIHBpeGVscyBhYm92ZQ0KPiA+ID4gPiA+ID4gPiA+ID4gPiB0aGUg
Y3Vyc29yIHRvIHRoZSBkYW1hZ2VkIGFyZWEgZml4ZXMgdGhlIGlzc3VlLCBzbyBsZWF2aW5nIHRo
aXMgYXMgYQ0KPiA+ID4gPiA+ID4gPiA+ID4gPiB3b3JrYXJvdW5kIHVudGlsIHByb3BlciBmaXgg
aXMgZm91bmQuDQo+ID4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IEhhdmUgeW91
IHRyaWVkIHdhcnBpbmcgdGhlIGN1cnNvciBjbGVhciBhY3Jvc3MgdGhlIHNjcmVlbiB3aGlsZQ0K
PiA+ID4gPiA+ID4gPiA+ID4gYSBwYXJ0aWFsIHVwZGF0ZSBpcyBhbHJlYWR5IHBlbmRpbmc/IEkg
dGhpbmsgaXQgd2lsbCBnbyBiYWRseS4NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4g
PiBZb3UgbWVhbiBtb3ZlIHRoZSBjdXJzb3IgZm9yIGV4YW1wbGUgZnJvbSAweDAgdG8gNTAweDUw
MCBpbiBvbmUgZnJhbWU/DQo+ID4gPiA+ID4gPiA+ID4gSXQgd2lsbCBtYXJrIGFzIGRhbWFnZWQg
dGhlIHByZXZpb3VzIGFyZWEgYW5kIHRoZSBuZXcgb25lLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+ID4gTGVnYWN5IGN1cnNvciB1cGRhdGVzIGJ5cGFzcyBhbGwgdGhhdCBzdHVmZiBzbyB5
b3UncmUgbm90IGdvaW5nIHRvDQo+ID4gPiA+ID4gPiA+IHVwZGF0aW5nIHRoZSBzZWwgZmV0Y2gg
YXJlYSBmb3IgdGhlIG90aGVyIHBsYW5lcy4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IEluIGZhY3QgSSdtIHRo
aW5raW5nIHRoZSBtYWlsYm94IHN0eWxlIGxlZ2FjeSBjdXJzb3IgdXBkYXRlcyBhcmUganVzdA0K
PiA+ID4gPiA+ID4gPiA+ID4gZnVuZGVtZW50YWxseSBpbmNvbXBhdGlibGUgd2l0aCBwYXJ0aWFs
IHVwZGF0ZXMgc2luY2UgdGhlIGN1cnNvcg0KPiA+ID4gPiA+ID4gPiA+ID4gY2FuIG1vdmUgb3V0
c2lkZSBvZiB0aGUgYWxyZWFkeSBjb21taXR0ZWQgdXBkYXRlIHJlZ2lvbiBhbnkgdGltZS4NCj4g
PiA+ID4gPiA+ID4gPiA+IEllLiBJIHN1c3BlY3Qgd2hpbGUgdGhlIGN1cnNvciBpcyB2aXNpYmxl
IHdlIHNpbXBseSBjYW4ndCBkbyBwYXJ0aWFsDQo+ID4gPiA+ID4gPiA+ID4gPiB1cGRhdGVzLg0K
PiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+IFByb2JhYmx5IEkgZGlkIG5vdCB1bmRl
cnN0YW5kIHdoYXQgeW91IHdhbnQgdG8gc2F5LCBidXQgZWFjaCBjdXJzb3IgdXBkYXRlIHdpbGwg
YmUgaW4gb25lIGZyYW1lLCB1cGRhdGluZyB0aGUgbmVjZXNzYXJ5IGFyZWEuDQo+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiBUaGUgbGVnYWN5IGN1cnNvciB1c2VzIG1haWxib3ggdXBkYXRl
cyBzbyB0aGVyZSBpcyBubyAxOjEgcmVsYXRpb25zaGlwDQo+ID4gPiA+ID4gPiA+IGJldHdlZW4g
YWN0dWFsIHNjYW5uZWQgb3V0IGZyYW1lcyBhbmQgY3Vyc29yIGlvY3RsIGNhbGxzLiBZb3UgY2Fu
DQo+ID4gPiA+ID4gPiA+IGhhdmUgdW1wdGVlbiB0aG91c2FuZCBjdXJzb3IgdXBkYXRlcyBwZXIg
ZnJhbWUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IE5vdCBpZiBpbnRlbF9sZWdhY3lfY3Vy
c29yX3VwZGF0ZSgpIGlzIGNoYW5nZWQgdG8gZ28gdG8gdGhlIHNsb3cgcGF0aCBhbmQgZG8gb25l
IGF0b21pYyBjb21taXQgZm9yIGVhY2ggbW92ZS4NCj4gPiA+ID4gPiA+IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80NTMxOTIvP3Nlcmllcz05NDUyMiZyZXY9MQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IFRoYXQncyBub3QgZ29pbmcgdG8gZmx5LiBUaGUgd2hvbGUgcmVh
c29uIGZvciB0aGUgbGVnYWN5IGN1cnNvciB0aGluZyBpcw0KPiA+ID4gPiA+IHRoYXQgWCBsaWtl
cyB0byBkbyB0aG91c2FuZHMgb2YgY3Vyc29yIHVwZGF0ZXMgcGVyIGZyYW1lLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gRnJvbSB1c2VyIGV4cGVyaWVuY2UgcGVyc3BlY3RpdmUgdGhlcmUgaXMgbm8gaXNz
dWVzIGluIGNvbnZlcnRpbmcgdG8gYXRvbWljIGNvbW1pdCwgdGhvc2UgMyB2aWRlb3MgdGhhdCBJ
IHNoYXJlZCB3aXRoIHlvdSBoYXZlIHRoaXMgY29udmVyc2lvbi4gDQo+ID4gPiANCj4gPiA+IEkg
ZG9uJ3Qga25vdyB3aGF0IHlvdSd2ZSB0ZXN0ZWQgYnV0IHRoZSBsZWdhY3kgY3Vyc29yIGZhc3Rw
YXRoIGlzIHZlcnkNCj4gPiA+IG11Y2ggbmVlZGVkLiBXZSd2ZSBoYXZlIG51bWVyb3VzIGJ1ZyBy
ZXBvcnRzIHdoZW5ldmVyIGl0IGhhcw0KPiA+ID4gYWNjaWRlbnRhbGx5IHJlZ3Jlc3NlZCwgYW5k
IEkndmUgd2l0bmVzc2VkIHRoZSBjYXJuYWdlIG15c2VsZiBhcyB3ZWxsLg0KPiA+ID4gSG1tLCBJ
IGd1ZXNzIHlvdSBkaWRuJ3QgYWN0dWFsbHkgZGlzYWJsZSBpdCBmdWxseS4gVG8gZG8gdGhhdCB5
b3UNCj4gPiA+IHdvdWxkIGhhdmUgdG8gY2xlYXIgc3RhdGUtPmxlZ2FjeV9jdXJzb3JfdXBkYXRl
IGV4cGxpY2l0bHkgc29tZXdoZXJlLg0KPiA+IA0KPiA+IFRoYW5rcyBmb3IgcG9pbnRpbmcgb3V0
IHN0YXRlLT5sZWdhY3lfY3Vyc29yX3VwZGF0ZSBhbmQgeWVzIHNldHRpbmcgaXQgdG8gZmFsc2Ug
bWFrZXMgY2F1c2VzIHRoZSBjdXJzb3IgdG8gbGFnLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBFaXRo
ZXIgd2F5IEkganVzdCByZXRlc3RlZCB0aGUgZWFybGllciBwYXRjaGVzIGp1c3Qgd2l0aCB0aGUg
bm9uYmxvY2tpbmcNCj4gPiA+IGNvbW1pdCBmb3IgZGlydHlmYiBoYWNrZWQgaW4sIGFuZCBJIGxl
ZnQgdGhlIGN1cnNvciBjb2RlIHVzaW5nIHRoZQ0KPiA+ID4gaGFsZiBmYXN0IHBhdGggeW91IG1h
ZGUgaXQgdGFrZS4gVGhlIHVzZXIgZXhwZXJpZW5jZSBpcyBzdGlsbCBhcyBiYWQNCj4gPiA+IGFz
IGJlZm9yZS4gSnVzdCBtb3ZpbmcgdGhlIG1vdXNlIGFyb3VuZCBtYWtlcyBnbHhnZWFycyBzdHV0
dGVyLCBhbmQgdGhlDQo+ID4gPiByZXBvcnRlZCBmcHMgZHJvcHMgdG8gfjQwMCBmcm9tIHRoYXQg
YWxvbmUuIEFuZCBkb2luZyBhbnl0aGluZyBtb3JlDQo+ID4gPiBpbnZvbHZlZCBsaWtlIG1vdmlu
ZyB3aW5kb3dzIGFyb3VuZCBpcyBzdGlsbCBhIHRvdGFsIGZhaWwuDQo+ID4gDQo+ID4gSSBoYXZl
IHRlc3RlZCBpdCBpbiBhIFRHTCBhbmQgQURMLVAsIHdpbGwgdHJ5IHRvIGdldCBzb21lIGdlbjkg
dG8gdHJ5IGl0Lg0KPiA+IE90aGVyIHRoYW4gdGhhdCBJIGRvbid0IGtub3cgd2hhdCBjb3VsZCB0
aGlzIGJpZyBkaWZmZXJlbmNlIGJldHdlZW4gb3VyIHNldHVwcy4NCj4gPiBJJ20gdXNpbmcgTWF0
ZSBsaWtlIHlvdSB3aXRoICdlbmFibGUgc29mdHdhcmUgY29tcG9zaXRpbmcgd2luZG93IG1hbmFn
ZXInIGRpc2FibGVkLg0KPiANCj4gTm90IHN1cmUuDQo+IA0KPiBCVFcgYW5vdGhlciB0aGluZyBJ
IG5vdGljZWQgaXMgdGhhdCB0aGUgc2VsX2ZldGNoIGNvb3JkaW5hdGUgY2FsY3VsYXRpb24NCj4g
Y29kZSBzZWVtcyBzdXBlciBjb25mdXNlZDoNCj4gLSBpdCBzZWVtcyB0byBkbyBvcGVyYXRpb25z
IGJldHdlZW4gY29vcmRpbmF0ZXMgdGhhdCBkb24ndCBldmVuIGxpdmUgaW4NCj4gICB0aGUgc2Ft
ZSBjb29yZGluYXRlIHNwYWNlIChlZy4gZHJtX3JlY3RfaW50ZXJzZWN0KCZjbGlwLCAmc3JjKSB3
aGVyZQ0KPiAgIGNsaXAgaXMgdGhlIHN0cmFpZ2h0IHVzZXJzcGFjZSBkYW1hZ2UgY29vcmRpbmF0
ZXMgYnV0IHNyYyBpcw0KPiAgIFBMQU5FX1NVUkYgcmVsYXRpdmUgcGxhbmUgc291cmNlIGNvb3Jk
aW5hdGVzKQ0KDQpPbiB0aGUgZmlyc3QgZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0
YXRlKCkgaXQgY2FsY3VsYXRlcyB0aGUgcGxhbmUgZGFtYWdlZCBhcmVhIGFuZCB0aGVuIGluIHRo
ZSBsYXN0IDMgbGluZXMgY29udmVydHMgaXQgdG8gcGlwZSBjb29yZGluYXRlDQpzcGFjZS4NClRo
ZSBzZWNvbmQgZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKCkgdGFrZXMgdGhl
IHBpcGUgY29vcmRpbmF0ZSBzcGFjZSBkYW1hZ2VkIGFyZWEgYW5kIHNldHMgbmV3X3BsYW5lX3N0
YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhIHdpdGggdGhlDQpwbGFuZSBjb29yZGluYXRlIHNwYWNl
IGRhbWFnZWQgYXJlYS4NCg0KPiAtIG5vIGNoZWNrcyBmb3IgcGxhbmUgc2NhbGluZyB0aGF0IEkg
Y2FuIHNlZSBidXQgaXQgc3RpbGwgYXNzdW1lcyBpdCBjYW4gDQo+ICAganVzdCBhc3N1bWUgYSAx
OjEgcmVsYXRpb25zaGlwIGJldHdlZW4gc3JjIGFuZCBkc3QgY29vcmRpbmF0ZXMNCg0KTXkgdW5k
ZXJzdGFuZGluZyBpcyB0aGF0IGludGVsX2F0b21pY19wbGFuZV9jaGVja19jbGlwcGluZygpIHdp
bGwgYWRqdXN0IHNyYyB0byBtYXRjaCBkc3Qgd2lkdGggYW5kIGhlaWdodC4NCg0KPiAtIGJpZ2pv
aW5lciBhbHNvIGFmZmVjdHMgdGhlIGNvb3JkaW5hdGUgc3BhY2VzLCBzbyB0aGF0IHBhcnQgdG9v
IGlzIHByb2JhYmx5DQo+ICAgYnVzdGVkDQo+IA0KDQpJIGRvbid0IHRoaW5rIHRoZXJlIGlzIGEg
Y29tbWVyY2lhbCBhdmFpbGFibGUgZURQIHBhbmVsIHRoYXQgd291bGQgcmVxdWlyZSBiaWdqb2lu
ZXIuDQpXZSBjb3VsZCBkZWZpbml0ZWx5IHJ1bGUgUFNSMiBvdXQgaWYgc3VjaCBjYXNlIHNob3dz
IHVwIGJ5IGFkZGluZyBhIGNoZWNrIGluIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxp
ZCgpLg0KDQo=
