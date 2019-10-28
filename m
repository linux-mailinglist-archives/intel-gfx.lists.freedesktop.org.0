Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE462E783A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 19:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2B86E9B9;
	Mon, 28 Oct 2019 18:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6696E9B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 18:17:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="198141223"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 28 Oct 2019 11:17:38 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 28 Oct 2019 11:17:38 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.210]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.60]) with mapi id 14.03.0439.000;
 Mon, 28 Oct 2019 11:17:37 -0700
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
Thread-Index: AQHViohM005e6yyaHEGJsPy5MI+iM6dwvi2A//+j+1A=
Date: Mon, 28 Oct 2019 18:17:38 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F976A54@ORSMSX106.amr.corp.intel.com>
References: <20191024162958.11839-1-don.hiatt@intel.com>
 <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
In-Reply-To: <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTEzODM3ZmQtMzQ5Yi00M2E4LTg3ODgtMmFjYTNmNTczZjY2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVk9xQ0dJbVlFcHZkQk9pc09KYlhMaldZaWhZYldCeVVKRWl0SEo3dll4WDd2NjBnZ25BZnFYazg5XC9qdEFQdWsifQ==
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

PiBGcm9tOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDI4LCAyMDE5IDk6NDQgQU0NCj4gVG86
IEhpYXR0LCBEb24gPGRvbi5oaWF0dEBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE0L2d1
YzogRml4IHJlc3VtZSBvbiBwbGF0Zm9ybXMgdy9vIEd1Qw0KPiBzdWJtaXNzaW9uIGJ1dCBlbmFi
bGVkDQo+IA0KPiANCj4gDQo+IE9uIDEwLzI0LzE5IDk6MjkgQU0sIGRvbi5oaWF0dEBpbnRlbC5j
b20gd3JvdGU6DQo+ID4gRnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+
DQo+ID4gQ2hlY2sgdG8gc2VlIGlmIEd1QyBzdWJtaXNzaW9uIGlzIGVuYWJsZWQgYmVmb3JlIHJl
cXVlc3RpbmcgdGhlDQo+ID4gRVhJVF9TX1NUQVRFIGFjdGlvbi4NCj4gPg0KPiANCj4gWW91J3Jl
IG9ubHkgc2tpcHBpbmcgdGhlIHJlc3VtZSwgYnV0IGRvZXMgaXQgbWFrZSBhbnkgc2Vuc2UgdG8g
ZG8gdGhlDQo+IHN1c3BlbmQgYWN0aW9uIGlmIHdlJ3JlIG5vdCBnb2luZyB0byBjYWxsIHRoZSBy
ZXN1bWUgb25lPyBEb2VzIGd1YyBkbw0KPiBhbnl0aGluZyBpbiB0aGUgc3VzcGVuZCBhY3Rpb24g
dGhhdCB3ZSBzdGlsbCByZXF1aXJlPyBJIHRob3VnaHQgaXQgb25seQ0KPiBzYXZlZCB0aGUgc3Vi
bWlzc2lvbiBzdGF0dXMsIHdoaWNoIHdlIGRvbid0IGNhcmUgYWJvdXQgaWYgZ3VjIHN1Ym1pc3Np
b24NCj4gaXMgZGlzYWJsZWQuDQo+IA0KPiBEYW5pZWxlDQo+IA0KDQpIaSBEYW5pZWxlLA0KDQpJ
IHRyaWVkIHNraXBwaW5nIHRoZSBzdXNwZW5kIGFsbCB0b2dldGhlciBidXQgdGhlbiB0aGUgSHVD
IGdldHMgdGltZW91dHMNCndhaXRpbmcgZm9yIHRoZSBHdUMgdG8gYWNrbm93bGVkZ2UgdGhlIGF1
dGhlbnRpY2F0aW9uIHJlcXVlc3Qgd2hpY2ggbGVhZHMgdG8gYQ0Kd2VkZ2VkIEdQVS4g4pi5IA0K
DQpCVFcsIEkgbWFkZSBhIHR5cG8gaW4gdGhlIHBhdGNoLCBzaG91bGQgYmUgJ2RybS9pOTE1JyBu
b3QgJzkxNCcsIEknbGwgZml4IHRoYXQNCnVwLg0KDQpUaGFua3MsDQoNCmRvbg0KDQoNCj4gPiBP
biBzb21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1p
c3Npb24sIGJ1dA0KPiA+IHRoZSB1c2VyIGVuYWJsZWQgdGhlIEd1QyBjb21tdW5pY2F0aW9uIChl
LmcgZm9yIEh1QyBhdXRoZW50aWNhdGlvbikNCj4gPiBjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NU
QVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0eSB0bw0KPiA+IGVudGVyIFJDNi4g
R3VhcmQgYWdhaW5zdCB0aGlzIGJ5IG9ubHkgcmVxdWVzdGluZyB0aGUgR3VDIGFjdGlvbiBvbg0K
PiA+IHBsYXRmb3JtcyB0aGF0IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24uDQo+ID4NCj4gPiBJJ3Zl
IHZlcmZpZWQgdGhhdCBpbnRlbF9ndWNfcmVzdW1lKCkgb25seSBnZXRzIGNhbGxlZCB3aGVuIGRy
aXZlcg0KPiA+IGlzIGxvYWRlZCB3aXRoOiBndWNfZW5hYmxlPXsxLDIsM30sIGFsbCBvdGhlciBj
YXNlcyAobm8gYXJncywNCj4gPiBndWNfZW5hYmxlPXswLC0xfSB0aGUgaW50ZWxfZ3VjX3Jlc3Vt
ZSgpIGlzIG5vdCBjYWxsZWQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBEb24gSGlhdHQgPGRv
bi5oaWF0dEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuYyB8IDUgKysrKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jDQo+ID4gaW5kZXggMzdmN2JjYmY3ZGFjLi4zMzMxOGVkMTM1YzAgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiA+IEBAIC01
NjUsNyArNTY1LDEwIEBAIGludCBpbnRlbF9ndWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykNCj4gPiAgIAkJR1VDX1BPV0VSX0QwLA0KPiA+ICAgCX07DQo+ID4NCj4gPiAtCXJldHVybiBp
bnRlbF9ndWNfc2VuZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsNCj4gPiArCWlm
IChndWMtPnN1Ym1pc3Npb25fc3VwcG9ydGVkKQ0KPiA+ICsJCXJldHVybiBpbnRlbF9ndWNfc2Vu
ZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4g
MDsNCj4gPiAgIH0NCj4gPg0KPiA+ICAgLyoqDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
