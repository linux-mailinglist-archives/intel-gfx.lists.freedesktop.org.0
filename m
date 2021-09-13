Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CE1409C87
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 20:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8066E218;
	Mon, 13 Sep 2021 18:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0346E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 18:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="219892167"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="219892167"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 11:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="609172143"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2021 11:49:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 19:49:31 +0100
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 11:49:30 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "david.weinehall@linux.intel.com" <david.weinehall@linux.intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Tangudu, Tilak"
 <tilak.tangudu@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 3/3] drm/i915: Enable runtime pm autosuspend by default
Thread-Index: AQHXpmuQ6N/0eiEev06Cq1Oz95ik9auiROsAgACDwIA=
Date: Mon, 13 Sep 2021 18:49:30 +0000
Message-ID: <627fcfb53e1e6bd6fc137af119076a26c19de6f5.camel@intel.com>
References: <20210910174447.289750-1-rodrigo.vivi@intel.com>
 <20210910174447.289750-3-rodrigo.vivi@intel.com>
 <24b529f8a179488cbc62bb89306b1abd@intel.com>
In-Reply-To: <24b529f8a179488cbc62bb89306b1abd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <EE8753789E0A0F4CA902742D558C4587@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Enable runtime pm autosuspend
 by default
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

T24gTW9uLCAyMDIxLTA5LTEzIGF0IDE2OjI3ICswNTMwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6
DQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFZpdmks
IFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBTZXB0
ZW1iZXIgMTAsIDIwMjEgMTE6MTUgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsg
RGFuaWVsIFZldHRlcg0KPiA+IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPjsgRGF2aWQgV2VpbmVo
YWxsDQo+ID4gPGRhdmlkLndlaW5laGFsbEBsaW51eC5pbnRlbC5jb20+Ow0KPiA+IFRhbmd1ZHUs
IFRpbGFrIDx0aWxhay50YW5ndWR1QGludGVsLmNvbT47IERlYWssIEltcmUNCj4gPiA8aW1yZS5k
ZWFrQGludGVsLmNvbT47DQo+ID4gR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIDMvM10gZHJtL2k5MTU6IEVuYWJsZSBydW50aW1l
IHBtIGF1dG9zdXNwZW5kIGJ5DQo+ID4gZGVmYXVsdA0KPiA+IA0KPiA+IExldCdzIGVuYWJsZSBy
dW50aW1lIHBtIGF1dG9zdXNwZW5kIGJ5IGRlZmF1bHQgZXZlcnl3aGVyZS4NCj4gPiANCj4gPiBC
dXQgYXQgdGhpcyB0aW1lIGxldCdzIG5vdCB0b3VjaCB0aGUgYXV0b3N1c3BlbmRfZGVsYXkgdGlt
ZSwgd2hhdA0KPiA+IGNhdXNlZCBzb21lDQo+ID4gcmVncmVzc2lvbiBvbiBvdXIgcHJldmlvdXMg
YXR0ZW1wdC4NCj4gPiANCj4gPiB2MjogQ0kgb24gc29tZSBnZW45IHBsYXRmb3JtcyB3YXMgbm90
IGNsZWFuLiBCdXQgaXQgY2FtZQ0KPiA+IMKgwqDCoCBwcmV0dHkgY2xlYW4gb24gbmV3ZXIgZ2Vu
ZXJhdGlvbnMuIEZvciBub3csIGxldCdzDQo+ID4gwqDCoMKgIHBpY2sgZ2VuMTIgYW5kIG5ld2Vy
LiBXZSB3aWxsIHJldHVybiBsYXRlciB0byBleHRlbmQNCj4gPiDCoMKgwqAgdGhhdCB0byBvbGRl
ciBwbGF0Zm9ybXMuDQo+ID4gDQo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
ZmZ3bGwuY2g+DQo+ID4gQ2M6IERhdmlkIFdlaW5laGFsbCA8ZGF2aWQud2VpbmVoYWxsQGxpbnV4
LmludGVsLmNvbT4NCj4gPiBDYzogVGlsYWsgVGFuZ3VkdSA8dGlsYWsudGFuZ3VkdUBpbnRlbC5j
b20+DQo+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gUmV2aWV3
ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+ICN2MQ0KPiA+
IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIHwgNCAr
KysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jDQo+ID4gaW5kZXggZjI4YjVi
YWI2MWI0Li5mOTFhMDRjM2VmMTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcnVudGltZV9wbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcnVudGltZV9wbS5jDQo+ID4gQEAgLTYwNSw2ICs2MDUsMTAgQEAgdm9pZCBpbnRlbF9ydW50
aW1lX3BtX2VuYWJsZShzdHJ1Y3QNCj4gPiBpbnRlbF9ydW50aW1lX3BtICpycG0pDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVuZChr
ZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoC8q
IFhYWDogRW5hYmxlIGJ5IGRlZmF1bHQgb25seSBmb3IgbmV3ZXIgcGxhdGZvcm1zIGZvciBub3cN
Cj4gPiAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChHUkFQSElDU19WRVIoaTkxNSkgPj0gMTIp
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBtX3J1bnRpbWVfYWxsb3coa2Rl
dik7DQo+IMKgwqDCoMKgwqDCoMKgwqBSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gwqDCoMKgwqDCoMKgwqDCoExvb2tzIGdvb2QgdG8gbWUu
DQo+IMKgwqDCoMKgwqDCoMKgwqBCciwNCj4gwqDCoMKgwqDCoMKgwqDCoEFuc2h1bWFuIEd1cHRh
Lg0KDQpOb3Qgc28gZmFzdCB0aG91Z2ggOigNCldlIGZvdW5kIHNvbWUgYnVncyBvbiBERzIuIFRp
bGFrIHdpbGwgdGFrZSBhIGxvb2sgdGhlcmUgYmVmb3JlIHdlIGNhbg0KcHVzaCB0aGlzLg0KDQpU
aGFua3MsDQpSb2RyaWdvLg0KDQoNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4g
wqDCoMKgwqDCoMKgwqDCoCAqIFRoZSBjb3JlIGNhbGxzIHRoZSBkcml2ZXIgbG9hZCBoYW5kbGVy
IHdpdGggYW4gUlBNDQo+ID4gcmVmZXJlbmNlIGhlbGQuDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAq
IFdlIGRyb3AgdGhhdCBoZXJlIGFuZCB3aWxsIHJlYWNxdWlyZSBpdCBkdXJpbmcgdW5sb2FkaW5n
DQo+ID4gaW4NCj4gPiAtLQ0KPiA+IDIuMzEuMQ0KPiANCg0K
