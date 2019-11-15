Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABAAFE3D5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9A16E78E;
	Fri, 15 Nov 2019 17:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240CE6E78E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:22:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:22:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="236141869"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2019 09:22:49 -0800
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 Nov 2019 09:22:48 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.150]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.139]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 09:22:48 -0800
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
Thread-Index: AQHVm1GWfjXO3xe0eUmHZYvGqmCEo6eM/1MA//97daA=
Date: Fri, 15 Nov 2019 17:22:47 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F997EB9@ORSMSX106.amr.corp.intel.com>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
In-Reply-To: <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjgyOWNiZmEtNGEyOC00MGY0LWJhNmEtODRkMGRiYzNkOGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR0JpMDJvc3Z0T01Kc1JHanBWNFlXMDZOKzBkVnNTMlhaUXVaWWI5cm8rWHRmZEJcL2pmbEVpb1VsMWpcL1BNeUdwIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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

PiBGcm9tOiBTdW1tZXJzLCBTdHVhcnQgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4NCj4gU2Vu
dDogRnJpZGF5LCBOb3ZlbWJlciAxNSwgMjAxOSA5OjEzIEFNDQo+IA0KPiBPbiBUaHUsIDIwMTkt
MTEtMTQgYXQgMTc6MTEgLTA4MDAsIGRvbi5oaWF0dEBpbnRlbC5jb20gd3JvdGU6DQo+ID4gRnJv
bTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+DQo+ID4gT24gc29tZSBwbGF0
Zm9ybXMgKGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQN
Cj4gPiB0aGUgdXNlciBlbmFibGVkIHRoZSBHdUMgY29tbXVuaWNhdGlvbiAoZS5nIGZvciBIdUMg
YXV0aGVudGljYXRpb24pDQo+ID4gY2FsbGluZyB0aGUgR3VDIEVYSVRfU19TVEFURSBhY3Rpb24g
cmVzdWx0cyBpbiBsb3NlIG9mIGFiaWxpdHkgdG8NCj4gPiBlbnRlciBSQzYuIFdlIGNhbiByZW1v
dmUgdGhlIEd1QyBzdXNwZW5kL3Jlc3VtZSBlbnRpcmVseSBhcyB3ZSBkbw0KPiA+IG5vdCBuZWVk
IHRvIHNhdmUgdGhlIEd1QyBzdWJtaXNzaW9uIHN0YXR1cy4NCj4gPg0KPiA+IHYyOiBEbyBub3Qg
c3VzcGVuZC9yZXN1bWUgdGhlIEd1QyBvbiBwbGF0Zm9ybXMgdGhhdCBkbyBub3Qgc3VwcG9ydA0K
PiA+ICAgICBHdWMgU3VibWlzc2lvbi4NCj4gPiB2MzogRml4IHR5cG8sIG1vdmUgc3VzcGVuZCBs
b2dpYyB0byByZW1vdmUgZ290by4NCj4gPiB2NDogVXNlIGludGVsX2d1Y19zdWJtaXNzaW9uX2lz
X2VuYWJsZWQoKSB0byBjaGVjayBHdUMgc3VibWlzc2lvbg0KPiA+ICAgICBzdGF0dXMuDQo+ID4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEb24gSGlhdHQgPGRvbi5oaWF0dEBpbnRlbC5jb20+DQo+IA0K
PiBBbnkgcmVhc29uIG5vdCB0byBqdXN0IGNvbWJpbmUgYm90aCBvZiB0aGVzZSBpbnRvIGEgc2lu
Z2xlIHBhdGNoPw0KPiANCj4gVGhhbmtzLA0KPiBTdHVhcnQNCj4gDQoNCkkgZGlkbid0IGNvbWJp
bmUgdGhlbSBmb3IgdHdvIHJlYXNvbnM6DQoxKSBJIHdhc24ndCBzdXJlIGlmIHRoZXJlJ2QgYmUg
YW4gYXNrIHRvIHVzZSBpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFibGVkKCkgaW4NCiAgICBv
dGhlciBwbGFjZXMuDQoyKSBUaGUgZ2l0IGxvZyBlbnRyeSBoaWdobGlnaHRzIHRoZSBpbnRyb2R1
Y3Rpb24gb2YgYSBuZXcgZnVuY3Rpb24gYXZhaWxhYmxlIGZvciB1c2UuDQoNCkknbGwgY29tYmlu
ZSB0aGVtIGlmIHRoYXQncyB0aGUgY29uc2Vuc3VzLiANCg0KZG9uDQoNCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgfCA3ICsrKysrKysNCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgfCA4ICsrKysrKysrDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiA+IGluZGV4IDAxOWFlNjQ4NmU4ZC4uOTJk
OTMwNWMwZDczIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
LmMNCj4gPiBAQCAtNTUzLDYgKzU1MywxMyBAQCBpbnQgaW50ZWxfZ3VjX3N1c3BlbmQoc3RydWN0
IGludGVsX2d1YyAqZ3VjKQ0KPiA+ICAJCUdVQ19QT1dFUl9EMSwgLyogYW55IHZhbHVlIGdyZWF0
ZXIgdGhhbiBHVUNfUE9XRVJfRDANCj4gKi8NCj4gPiAgCX07DQo+ID4NCj4gPiArCS8qDQo+ID4g
KwkgKiBJZiBHdUMgY29tbXVuaWNhdGlvbiBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9uIGlzIG5v
dA0KPiA+IHN1cHBvcnRlZCwNCj4gPiArCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHN1c3BlbmQgdGhl
IEd1Qy4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKCFpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFi
bGVkKGd1YykpDQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4gKw0KPiA+ICAJLyoNCj4gPiAgCSAqIFRo
ZSBFTlRFUl9TX1NUQVRFIGFjdGlvbiBxdWV1ZXMgdGhlIHNhdmUvcmVzdG9yZSBvcGVyYXRpb24N
Cj4gPiBpbiBHdUMgRlcNCj4gPiAgCSAqIGFuZCB0aGVuIHJldHVybnMsIHNvIHdhaXRpbmcgb24g
dGhlIEgyRyBpcyBub3QgZW5vdWdoIHRvDQo+ID4gZ3VhcmFudGVlDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gPiBpbmRleCA2MjliMTkzNzdhMjkuLjRkZDQz
Yjk5YTMzNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYw0K
PiA+IEBAIC02MDUsNiArNjA1LDE0IEBAIHN0YXRpYyBpbnQgX191Y19yZXN1bWUoc3RydWN0IGlu
dGVsX3VjICp1YywgYm9vbA0KPiA+IGVuYWJsZV9jb21tdW5pY2F0aW9uKQ0KPiA+ICAJaWYgKGVu
YWJsZV9jb21tdW5pY2F0aW9uKQ0KPiA+ICAJCWd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihndWMp
Ow0KPiA+DQo+ID4gKwkvKg0KPiA+ICsJICogSWYgR3VDIGNvbW11bmljYXRpb24gaXMgZW5hYmxl
ZCBidXQgc3VibWlzc2lvbiBpcyBub3QNCj4gPiBzdXBwb3J0ZWQsDQo+ID4gKwkgKiB3ZSBkbyBu
b3QgbmVlZCB0byByZXN1bWUgdGhlIEd1QyBidXQgd2UgZG8gbmVlZCB0byBlbmFibGUNCj4gPiB0
aGUNCj4gPiArCSAqIEd1QyBjb21tdW5pY2F0aW9uIG9uIHJlc3VtZSAoYWJvdmUpLg0KPiA+ICsJ
ICovDQo+ID4gKwlpZiAoIWludGVsX2d1Y19zdWJtaXNzaW9uX2lzX2VuYWJsZWQoZ3VjKSkNCj4g
PiArCQlyZXR1cm4gMDsNCj4gPiArDQo+ID4gIAllcnIgPSBpbnRlbF9ndWNfcmVzdW1lKGd1Yyk7
DQo+ID4gIAlpZiAoZXJyKSB7DQo+ID4gIAkJRFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHJl
c3VtZSBHdUMsIGVycj0lZCIsIGVycik7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
