Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FABE2E97A1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 15:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE9989E63;
	Mon,  4 Jan 2021 14:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D788989E63
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 14:51:00 +0000 (UTC)
IronPort-SDR: FyaCzfoiEyFY6M0szmi+0FJc/7paiPQISK40gdB1eBnGJ5DU6FgXyMhHUa3qhN47Q0pmqd3Xph
 U4FoaoQyUqZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="156156880"
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="156156880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 06:51:00 -0800
IronPort-SDR: SQsf4Owuf/ahittB2abi7LFIevOY7jF5YYJNQfpwMysJx7Jp/qSl7+Lvz1x96WZGiVCRt1QjyL
 P31kf+n9TbOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="394901244"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jan 2021 06:51:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Jan 2021 06:50:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Jan 2021 06:50:59 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 4 Jan 2021 06:50:59 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Deak, Imre" <imre.deak@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
Thread-Index: AQHW3pfYMZuyTDfERkORB1Xzt8CLbqoQ2UsAgAAXBQCAAIQ7AIAGpqaA
Date: Mon, 4 Jan 2021 14:50:59 +0000
Message-ID: <16204f921b930e527eccae0e8a986773a1c6b376.camel@intel.com>
References: <20201230103742.18577-1-chris@chris-wilson.co.uk>
 <20201231000210.GE3894148@mdroper-desk1.amr.corp.intel.com>
 <0e8a2ada254a3fb151aa133093a475577151d152.camel@intel.com>
 <160940627002.15472.4084597144232819762@build.alporthouse.com>
In-Reply-To: <160940627002.15472.4084597144232819762@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <F839EA5AF2AA0D449C5D046C74B92468@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin, 
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTEyLTMxIGF0IDA5OjE3ICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgQWxtYWhhbGxhd3ksIEtoYWxlZCAoMjAyMC0xMi0zMSAwMToyNDozNCkNCj4gPiBP
biBXZWQsIDIwMjAtMTItMzAgYXQgMTY6MDIgLTA4MDAsIE1hdHQgUm9wZXIgd3JvdGU6DQo+ID4g
PiBPbiBXZWQsIERlYyAzMCwgMjAyMCBhdCAxMDozNzo0MkFNICswMDAwLCBDaHJpcyBXaWxzb24g
d3JvdGU6DQo+ID4gPiA+IFRoZSB0aW1lb3V0cyBhcmUgZnJlcXVlbnQgYW5kIGV4cGVjdGVkLiBX
ZSB3aWxsIGNvbXBsYWluIGlmIHdlDQo+ID4gPiA+IHJldHJ5IHNvDQo+ID4gPiA+IG9mdGVuIGFz
IHRvIGxvc2UgcGF0aWVuY2UgYW5kIGdpdmUgdXAsIHNvIHRoZSBjYWNvcGhvbnkgZnJvbQ0KPiA+
ID4gPiBpbmRpdmlkdWFsDQo+ID4gPiA+IGNvbXBsYWludHMgaXMgcmVkdW5kYW50Lg0KPiA+ID4g
PiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+DQo+ID4gPiANCj4gPiA+IFJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIgLS0NCj4gPiA+ID4gwqAxIGZp
bGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gaW5kZXggOGFlNzY5
YjE4ODc5Li43MDRlNGNlYmY3ZjMgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gQEAgLTE2MTMsOCArMTYxMyw2IEBAIGlu
dGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgwqDC
oMKgLyogVGltZW91dHMgb2NjdXIgd2hlbiB0aGUgZGV2aWNlIGlzbid0IGNvbm5lY3RlZCwgc28g
dGhleSdyZQ0KPiA+ID4gPiDCoMKgwqDCoMKgKiAibm9ybWFsIiAtLSBkb24ndCBmaWxsIHRoZSBr
ZXJuZWwgbG9nIHdpdGggdGhlc2UgKi8NCj4gPiA+ID4gwqDCoMKgwqBpZiAoc3RhdHVzICYgRFBf
QVVYX0NIX0NUTF9USU1FX09VVF9FUlJPUikgew0KPiA+ID4gPiAtICAgICAgICAgICBkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiJXM6IHRpbWVvdXQgKHN0YXR1cw0KPiA+ID4gPiAweCUwOHgpXG4i
LA0KPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9kcC0+YXV4Lm5hbWUsIHN0
YXR1cyk7DQo+ID4gDQo+ID4gQVVYIHRpbWVvdXQgbG9ncyBhcmUgdmVyeSBpbXBvcnRhbnQgZm9y
IFRHTCBUQ1NTIERpc3BsYXkgZGVidWdnaW5nLiBXZQ0KPiA+IGFjdHVhbGx5IGNhbiBnZXQgQVVY
IHRpbWVvdXQgd2hlbiB0aGUgZGlzcGxheSBpcyBjb25uZWN0ZWQgZm9yIHRoZQ0KPiA+IGZvbGxv
d2luZyByZWFzb25zOg0KPiA+ICogSWYgQVVYIG9yaWVudGF0aW9uIGlzIG5vdCBjb25maWd1cmVk
IGNvcnJlY3RseSBpbiBCSU9TDQo+ID4gKiBJZiBVU0IzIGRvY2sgaXMgZG93bmdyYWRlZCB0byBV
U0IyIGFuZCBTQlUvQVVYIGxpbmVzIGFyZSBkaXNhYmxlZA0KPiA+ICogV2hlbiBMVFRQUi9SZXRp
bWVyIHN0YXJ0ZWQgdG8gYWN0IGZ1bm55IGFuZCBub3QgY29uZmlndXJlZCBjb3JyZWN0bHkNCj4g
PiBieSBFQw0KPiA+ICogV2hlbiB3ZSBoYXZlIGEgYnVnIGluIHRoZSBQTUMgbXV4IGNvbmZpZ3Vy
YXRpb24gYmVjYXVzZSBvZiBidWcgaW4gdGhlDQo+ID4gZm9sbG93aW5nIGZpbGVzOiBkcml2ZXJz
L3VzYi90eXBlYy9tdXgvaW50ZWxfcG1jX211eC5jIGFuZA0KPiA+IGRyaXZlcnMvcGxhdGZvcm0v
eDg2L2ludGVsX3NjdV9pcGMuYw0KPiA+ICogV2hlbiB1c2VyIHNwYWNlIGlzIG5vdCBjbGVhbmx5
IGRpc2Nvbm5lY3RlZCBhbGwgTVNUIGNvbm5lY3RvcnMgZm9yDQo+ID4gZGlzY29ubmVjdGVkIE1T
VCBodWIgd2l0aCAyKyBkaXNwbGF5LiBXZSB3aWxsIGJlIGxlZnQgd2l0aCBlbmFibGVkDQo+ID4g
cGlwZXMgYWx0aG91Z2ggdGhlIGNhYmxlIGlzIGRpc2Nvbm5lY3RlZCBhbmQgbmV4dCBjb25uZWN0
IG9mIHR5cGUtYw0KPiA+IGRpc3BsYXkgd2lsbCBnaXZlIGF1eCB0aW1lb3V0OiANCj4gPiDCoMKg
KiogVXNlciBzcGFjZSBmaXggaW4gQ2hyb21lOiANCj4gPiBodHRwczovL2Nocm9taXVtLXJldmll
dy5nb29nbGVzb3VyY2UuY29tL2MvY2hyb21pdW0vc3JjLysvMjUxMjU1MC8gDQo+ID4gwqDCoCoq
IFdBIGluIGRyaXZlcjogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzM5
NTkwMS8gDQo+ID4gDQo+ID4gVGhlc2UgbG9ncyBhcmUgZXNwZWNpYWxseSBpbXBvcnRhbnQgZm9y
IENocm9tZSBiYXNlZCBwbGF0Zm9ybXMgd2l0aA0KPiA+IHR5cGUtQy4gU2VlaW5nIHRoZXNlIGxv
Z3Mgd2UgY2FuIGtub3cgd2hvIGlzIHNjcmV3aW5nIHVwIChUQ1NTIGRyaXZlciwNCj4gPiBDQiwg
b3IgRUMpLg0KPiANCj4gVGhlbiBjYXB0dXJlIHRoZSBpbmZvcm1hdGlvbiB5b3UgcmVxdWlyZSB0
byBhbmFseXNlIHlvdXIgZmFpbHVyZXMuDQo+IEZsb29kaW5nIHRoZSBkZWJ1ZyBsb2cgbWFrZXMg
ZGVidWdnaW5nIGV2ZXJ5dGhpbmcgZWxzZSBtdWNoLCBtdWNoIGhhcmRlci4NCj4gLUNocmlzDQoN
CkkgYWdyZWUgd2l0aCBLaGFsZWQgdGhpcyBtZXNzYWdlIGlzIGhlbHBmdWwgdG8gZGVidWcgd2h5
IGRpc3BsYXkgaXMgbm90IGNvbWluZyB1cC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
