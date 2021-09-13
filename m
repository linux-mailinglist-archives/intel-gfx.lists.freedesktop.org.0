Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E396409C83
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 20:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6C36E218;
	Mon, 13 Sep 2021 18:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8195B6E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 18:48:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221434680"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="221434680"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 11:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="698961696"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga005.fm.intel.com with ESMTP; 13 Sep 2021 11:48:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 19:48:31 +0100
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 11:48:29 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Disallow D3Cold.
Thread-Index: AQHXpmuQXoP8mfH3PUyxlCHkGzzhMKuiQ4CAgACE4YA=
Date: Mon, 13 Sep 2021 18:48:29 +0000
Message-ID: <8349526affb10be82c5f6cf447f186d7316b6e16.camel@intel.com>
References: <20210910174447.289750-1-rodrigo.vivi@intel.com>
 <20210910174447.289750-2-rodrigo.vivi@intel.com>
 <05c65f7e1cf04fdea37d2914beb0fe7c@intel.com>
In-Reply-To: <05c65f7e1cf04fdea37d2914beb0fe7c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7AB262AFADFED4BB10905B9AC5D3F6A@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Disallow D3Cold.
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

T24gTW9uLCAyMDIxLTA5LTEzIGF0IDE2OjIyICswNTMwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6
DQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVs
LWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYN
Cj4gPiBPZiBSb2RyaWdvDQo+ID4gVml2aQ0KPiA+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDEw
LCAyMDIxIDExOjE1IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiBDYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IFRhbmd1ZHUs
IFRpbGFrDQo+ID4gPHRpbGFrLnRhbmd1ZHVAaW50ZWwuY29tPjsgRGVhaywgSW1yZSA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMi8zXSBkcm0v
aTkxNTogRGlzYWxsb3cgRDNDb2xkLg0KPiA+IA0KPiA+IER1cmluZyBydW50aW1lIG9yIHMyaWRs
ZSBzdXNwZW5kIGFuZCByZXN1bWUgY2FzZXMgb24gZGlzY3JldGUNCj4gPiBjYXJkcywgaWYgRDND
b2xkDQo+ID4gaXMgcmVhbGx5IGFjaGlldmVkLCB3ZSB3aWxsIGJsb3cgZXZlcnl0aGluZyB1cCBh
bmQgZnJlZXplIHRoZQ0KPiA+IG1hY2hpbmUgYmVjYXVzZQ0KPiA+IHdlIGFyZSBub3QgeWV0IGhh
bmRsaW5nIHRoZSBwY2kgc3RhdGVzIHByb3Blcmx5Lg0KPiA+IA0KPiA+IE9uIEludGVncmF0ZWQg
aXQgc2ltcGx5IGRvZXNuJ3QgbWF0dGVyIGJlY2F1c2UgRDNob3QgaXMgdGhlIG1heGltdW0NCj4g
PiB0aGF0IHdlDQo+ID4gd2lsbCBnZXQgYW55d2F5LCB1bmxlc3MgdGhlIHN5c3RlbSBpcyBvbiBT
My9TNCBhbmQgb3VyIHBvd2VyIGlzDQo+ID4gY3V0Lg0KPiA+IA0KPiA+IExldCdzIHB1dCB0aGlz
IGhhbW1lciBmb3Igbm93IGV2ZXJ5d2hlcmUuIFNvIHdlIGNhbiB3b3JrIHRvIGVuYWJsZQ0KPiA+
IHRoZSBhdXRvLQ0KPiA+IHN1c3BlbmQgYnkgZGVmYXVsdCB3aXRob3V0IGJsb3dpbmcgdXAgdGhl
IHdvcmxkLg0KPiA+IA0KPiA+IFRoZW4sIHRoaXMgc2hvdWxkIGJlIHJlbW92ZWQgd2hlbiB3ZSBm
aW5hbGx5IGZpeCB0aGUgRDNDb2xkIGZsb3cuDQo+ID4gDQo+ID4gQ2M6IFRpbGFrIFRhbmd1ZHUg
PHRpbGFrLnRhbmd1ZHVAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gPiBBY2tlZC1ieTogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYyB8IDggKysrKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiA+IGluZGV4IGE0MGI1
ZDgwNjMyMS4uMDg2YTlhNDc1Y2U4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
DQo+ID4gQEAgLTMwMSw2ICszMDEsNyBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9ncHUoc3RydWN0
DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiDCoCAqLw0KPiA+IMKgc3RhdGljIGlu
dCBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpk
ZXZfcHJpdinCoCB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0
b19wY2lfZGV2KGRldl9wcml2LT5kcm0uZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHJl
dCA9IDA7DQo+ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpOTE1X2luamVjdF9wcm9iZV9m
YWlsdXJlKGRldl9wcml2KSkNCj4gPiBAQCAtMzMxLDYgKzMzMiwxMyBAQCBzdGF0aWMgaW50IGk5
MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0IDwgMCkNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gDQo+ID4gK8KgwqDCoMKgwqDCoMKg
LyoNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBGSVhNRTogVGVtcG9yYXJ5IGhhbW1lciB0byBhdm9p
ZCBmcmVlemluZyB0aGUgbWFjaGluZSBvbg0KPiA+IG91cg0KPiA+IERHRlgNCj4gPiArwqDCoMKg
wqDCoMKgwqAgKiBUaGlzIHNob3VsZCBiZSB0b3RhbGx5IHJlbW92ZWQgd2hlbiB3ZSBoYW5kbGUg
dGhlIHBjaQ0KPiA+IHN0YXRlcw0KPiA+IHByb3Blcmx5DQo+ID4gK8KgwqDCoMKgwqDCoMKgICog
b24gcnVudGltZSBQTSBhbmQgb24gczJpZGxlIGNhc2VzLg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAq
Lw0KPiA+ICvCoMKgwqDCoMKgwqDCoHBjaV9kM2NvbGRfZGlzYWJsZShwZGV2KTsNCj4gwqDCoMKg
wqDCoMKgwqDCoFRoaXMgc3RpbGwgZG9lc24ndCBwcm90ZWN0LCBpZiB1c2VyIHNwYWNlIGVuYWJs
ZXMgZDNjb2xkIHZpYQ0KPiBzeXMtZnMuDQo+IMKgwqDCoMKgwqDCoMKgwqBkM2NvbGRfYWxsb3dl
ZF9zdG9yZSgpIG1heSBjYWxsIHBjaV9kM2NvbGRfZW5hYmxlKCkNCj4gwqDCoMKgwqDCoMKgwqDC
oElzIGl0IHBvc3NpYmxlIHRvIGRpc2FibGUgaXQgdmlhIFBDSSBQTSBDYXBzIGF0IGVhcmx5IHBy
b2JlPw0KPiDCoMKgwqDCoMKgwqDCoMKgT3RoZXJ3aXNlIGl0IHNob3VsZCBkb25lIGluIHJlc3Bl
Y3RpdmUgc3VzcGVuZCBjYWxsYmFjayB0bw0KPiBtYWtlIHN1cmUNCj4gwqDCoMKgwqDCoMKgwqDC
oGQzY29sZCBpcyBkaXNhYmxlZC4NCg0KV2VsbCwgSSdtIG5vdCB0b28gY29uY2VybmVkIGFib3V0
IHRoZSBjYXNlIHRoYXQgdXNlciBnb2VzIGFuZCB0d2Vhaw0Kc29tZXRoaW5nIHRoYXQgaGUgc2hv
dWxkbid0LiBJbiBlc3BlY2lhbCBhIHRlbXBvcmFyeSBoYWNrIGxpa2UgdGhpcywNCmFuZCB3aXRo
IHVzIGFjdGl2ZWx5IHdvcmtpbmcgdG8gcmVtb3ZlIHRoYXQuDQoNCkhvd2V2ZXIgeW91IGhhdmUg
YSBwb2ludCBhbmQgVGlsYWsgYWxzbyBpcyB0cnlpbmcgdG8gY29udmluY2UgbWUgdGhhdA0KaGlz
IHZlcnNpb24gd2hpY2ggZGlzYWJsZXMgaXQgb24gdGhlIHJlbGV2YW50IHN1c3BlbmQgcGF0aHMg
YW5kIHJlLQ0KZW5hYmxlcyBpdCBvbiB0aGUgcmVzdW1lIGlzIHNhZmVyIGZvciBzMyBhbmQgczQu
DQoNCkknbSBhbHNvIG5vdCBmdWxseSBjb252aW5jZWQgdGhlcmUgYmVjYXN1ZSBvbiBzMy9zNCB3
ZSBsb3NlIHBvd2VyDQpheXdheXMsIGhvd2V2ZXIgSSdtIG5vdCBnb2luZyB0byBiZSBzdHViYm9y
biBhbmQgbGlzdGVuIHRvIGJvdGggb2YgeW91DQo7KQ0KDQpQbGVhc2UgbGV0J3MgZ28gd2l0aCBU
aWxhaydzIHZlcnNpb24uDQoNCkkganVzdCBiZWxpZXZlIHRoYXQgd2UgbmVlZCBhIHdheSB3aXRo
IGEgdGVtcG9yYXJ5IGtlcm5lbCBwYXJhbWV0ZXIgdG8NCmJlIGFibGUgdG8gYWxsb3cgZDNjb2xk
IG9uIHJwbSBhbmQgczJpZGxlIHNvIHdoaWxlIHdlIGFyZSB3b3JraW5nIHRvDQpmaXggZDNjb2xk
IHBhdGhzIHByb3Blcmx5Lg0KDQpUaGFua3MsDQpSb2RyaWdvLg0KDQo+IA0KPiBUaGFua3MsDQo+
IEFuc2h1bWFuIEd1cHRhLg0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gdmx2X3N1
c3BlbmRfaW5pdChkZXZfcHJpdik7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKQ0K
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBlcnJfd29ya3F1ZXVlczsN
Cj4gPiAtLQ0KPiA+IDIuMzEuMQ0KPiANCg0K
