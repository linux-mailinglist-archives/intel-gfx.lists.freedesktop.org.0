Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BDD31F072
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 20:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3096EA59;
	Thu, 18 Feb 2021 19:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883436EA59
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 19:51:56 +0000 (UTC)
IronPort-SDR: nnx52Q9lTn6E54FkHsDn8btTGbNkHxpck2udw1tjww8Y13rziFkyYxef9pbguJQgR+qDaYAQAh
 DXr1oZRRaIBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="268480971"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="268480971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 11:51:55 -0800
IronPort-SDR: 0gl8uNpdMJ8Tc63La2KFWE8m4rhOSL/XqPRhUlBC70cInP/NBOSe884EckrsA/RGvRoe7tGd7Q
 O4FocydtRVtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="400649959"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
 by orsmga008.jf.intel.com with ESMTP; 18 Feb 2021 11:51:54 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Feb 2021 03:51:53 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.002;
 Fri, 19 Feb 2021 03:51:53 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL3ZibGFuazogQXZvaWQg?=
 =?utf-8?B?c3RvcmluZyBhIHRpbWVzdGFtcCBmb3IgdGhlIHNhbWUgZnJhbWUgdHdpY2Ug?=
 =?utf-8?Q?(rev2)?=
Thread-Index: AQHXBitcfqWmQSuaOkmfVtZZZAtfF6peUqKg
Date: Thu, 18 Feb 2021 19:51:53 +0000
Message-ID: <14c4e382b13f4832a234e3ddf918e22f@intel.com>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <161367530726.23766.8312456807338701714@emeril.freedesktop.org>
 <YC6+XySefUEkPoKx@intel.com>
In-Reply-To: <YC6+XySefUEkPoKx@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vblank=3A_Avoid_storing_a_timestamp_for_the_same_frame_twice_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6IFRodXJzZGF5
LCBGZWJydWFyeSAxOCwgMjAyMSAxMToyMiBBTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCkNjOiBWdWR1bSwgTGFrc2htaW5hcmF5YW5hIDxsYWtzaG1pbmFyYXlhbmEudnVk
dW1AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRy
bS92Ymxhbms6IEF2b2lkIHN0b3JpbmcgYSB0aW1lc3RhbXAgZm9yIHRoZSBzYW1lIGZyYW1lIHR3
aWNlIChyZXYyKQ0KDQpPbiBUaHUsIEZlYiAxOCwgMjAyMSBhdCAwNzowODoyN1BNIC0wMDAwLCBQ
YXRjaHdvcmsgd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRy
bS92Ymxhbms6IEF2b2lkIHN0b3JpbmcgYSB0aW1lc3RhbXAgZm9yIHRoZSBzYW1lIGZyYW1lIHR3
aWNlIChyZXYyKQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvODY2NzIvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiAN
Cj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fOTc4NiAtPiBQYXRjaHdvcmtfMTk3
MDEgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4g
ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTk3MDEgYWJz
b2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYg
eW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRo
ZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTk3MDEsIHBsZWFzZSBub3Rp
ZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcg
ZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+
IA0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE5NzAxL2luZGV4Lmh0bWwNCj4gDQo+IFBvc3NpYmxlIG5ldyBp
c3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93
biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xOTcw
MToNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVz
c2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwOg0KPiAg
ICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4g
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85
Nzg2L2ZpLWNmbC04MTA5dS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMC5odG1sDQo+ICAg
IFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE5NzAxL2ZpLWNmbC04MTA5dS8NCj4gaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczAu
aHRtbA0KDQpMb29rcyBsaWtlIHRoZSBtYWNoaW5lIHdlbnQgQVdPTCBkdXJpbmcgc3VzcGVuZC4g
U2VlbXMgdW5yZWxhdGVkIHRvIHRoZSBwYXRjaCBhdCBoYW5kLg0KDQotLQ0KVmlsbGUgU3lyasOk
bMOkDQpJbnRlbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
