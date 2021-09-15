Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5D540CC75
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 20:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFA96E9D2;
	Wed, 15 Sep 2021 18:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE926E9D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 18:18:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222439098"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="222439098"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 11:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="508918267"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2021 11:18:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 11:18:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 11:18:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 15 Sep 2021 11:18:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
Thread-Index: AQHXqa47Y9mVfs3M+0eviC8Dq7E/pqulpjoAgAA5fYA=
Date: Wed, 15 Sep 2021 18:18:35 +0000
Message-ID: <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com> <YUIKDNuiNBPHKQ96@intel.com>
In-Reply-To: <YUIKDNuiNBPHKQ96@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <74DFCE4828B14943B5B05E2F9BEA9FC7@intel.com>
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

T24gV2VkLCAyMDIxLTA5LTE1IGF0IDE3OjU4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDAyOjI1OjA1UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gTm90IHN1cmUgd2h5IGJ1dCB3aGVuIG1vdmluZyB0aGUg
Y3Vyc29yIGZhc3QgaXQgY2F1c2VzIHNvbWUgYXJ0aWZhY3RzDQo+ID4gb2YgdGhlIGN1cnNvciB0
byBiZSBsZWZ0IGluIHRoZSBjdXJzb3IgcGF0aCwgYWRkaW5nIHNvbWUgcGl4ZWxzIGFib3ZlDQo+
ID4gdGhlIGN1cnNvciB0byB0aGUgZGFtYWdlZCBhcmVhIGZpeGVzIHRoZSBpc3N1ZSwgc28gbGVh
dmluZyB0aGlzIGFzIGENCj4gPiB3b3JrYXJvdW5kIHVudGlsIHByb3BlciBmaXggaXMgZm91bmQu
DQo+IA0KPiBIYXZlIHlvdSB0cmllZCB3YXJwaW5nIHRoZSBjdXJzb3IgY2xlYXIgYWNyb3NzIHRo
ZSBzY3JlZW4gd2hpbGUNCj4gYSBwYXJ0aWFsIHVwZGF0ZSBpcyBhbHJlYWR5IHBlbmRpbmc/IEkg
dGhpbmsgaXQgd2lsbCBnbyBiYWRseS4NCg0KWW91IG1lYW4gbW92ZSB0aGUgY3Vyc29yIGZvciBl
eGFtcGxlIGZyb20gMHgwIHRvIDUwMHg1MDAgaW4gb25lIGZyYW1lPw0KSXQgd2lsbCBtYXJrIGFz
IGRhbWFnZWQgdGhlIHByZXZpb3VzIGFyZWEgYW5kIHRoZSBuZXcgb25lLg0KDQo+IA0KPiBJbiBm
YWN0IEknbSB0aGlua2luZyB0aGUgbWFpbGJveCBzdHlsZSBsZWdhY3kgY3Vyc29yIHVwZGF0ZXMg
YXJlIGp1c3QNCj4gZnVuZGVtZW50YWxseSBpbmNvbXBhdGlibGUgd2l0aCBwYXJ0aWFsIHVwZGF0
ZXMgc2luY2UgdGhlIGN1cnNvcg0KPiBjYW4gbW92ZSBvdXRzaWRlIG9mIHRoZSBhbHJlYWR5IGNv
bW1pdHRlZCB1cGRhdGUgcmVnaW9uIGFueSB0aW1lLg0KPiBJZS4gSSBzdXNwZWN0IHdoaWxlIHRo
ZSBjdXJzb3IgaXMgdmlzaWJsZSB3ZSBzaW1wbHkgY2FuJ3QgZG8gcGFydGlhbA0KPiB1cGRhdGVz
Lg0KDQpQcm9iYWJseSBJIGRpZCBub3QgdW5kZXJzdGFuZCB3aGF0IHlvdSB3YW50IHRvIHNheSwg
YnV0IGVhY2ggY3Vyc29yIHVwZGF0ZSB3aWxsIGJlIGluIG9uZSBmcmFtZSwgdXBkYXRpbmcgdGhl
IG5lY2Vzc2FyeSBhcmVhLg0KU28gSSBjYW4ndCB1bmRlcnN0YW5kIHdoeSBpdCBpcyBpbmNvbXBh
dGlibGUuDQoNCg0KPiANCj4gPiANCj4gPiBUaGlzIGlzIHJlcHJvZHVjaWxlIG9uIFRHTCBhbmQg
QURMLVAuDQo+ID4gDQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGlu
dGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNTY3YzdjZWVmOGRiYS4uZjhm
YTMwZTUwZTcwYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+IEBAIC0xNTQzLDYgKzE1NDMsMjggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmMNCj4gPiAgCQlkcm1fd2FybigmZGV2X3ByaXYtPmRybSwgIk1pc3NpbmcgUFNSMiBzZWwgZmV0
Y2ggYWxpZ25tZW50IHdpdGggRFNDXG4iKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiArLyoNCj4gPiAr
ICogRklYTUU6IE5vdCBzdXJlIHdoeSBidXQgd2hlbiBtb3ZpbmcgdGhlIGN1cnNvciBmYXN0IGl0
IGNhdXNlcyBzb21lIGFydGlmYWN0cw0KPiA+ICsgKiBvZiB0aGUgY3Vyc29yIHRvIGJlIGxlZnQg
aW4gdGhlIGN1cnNvciBwYXRoLCBhZGRpbmcgc29tZSBwaXhlbHMgYWJvdmUgdGhlDQo+ID4gKyAq
IGN1cnNvciB0byB0aGUgZGFtYWdlZCBhcmVhIGZpeGVzIHRoZSBpc3N1ZS4NCj4gPiArICovDQo+
ID4gK3N0YXRpYyB2b2lkIGN1cnNvcl9hcmVhX3dvcmthcm91bmQoY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUsDQo+ID4gKwkJCQkgICBzdHJ1Y3QgZHJtX3Jl
Y3QgKmRhbWFnZWRfYXJlYSwNCj4gPiArCQkJCSAgIHN0cnVjdCBkcm1fcmVjdCAqcGlwZV9jbGlw
KQ0KPiA+ICt7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50
ZWxfcGxhbmUobmV3X3BsYW5lX3N0YXRlLT51YXBpLnBsYW5lKTsNCj4gPiArCWludCBoZWlnaHQ7
DQo+ID4gKw0KPiA+ICsJaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9DVVJTT1IpDQo+ID4gKwkJcmV0
dXJuOw0KPiA+ICsNCj4gPiArCWhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgmbmV3X3BsYW5lX3N0
YXRlLT51YXBpLmRzdCkgLyAyOw0KPiA+ICsJZGFtYWdlZF9hcmVhLT55MSAtPSAgaGVpZ2h0Ow0K
PiA+ICsJZGFtYWdlZF9hcmVhLT55MSA9IG1heChkYW1hZ2VkX2FyZWEtPnkxLCAwKTsNCj4gPiAr
DQo+ID4gKwljbGlwX2FyZWFfdXBkYXRlKHBpcGVfY2xpcCwgZGFtYWdlZF9hcmVhKTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQ0KPiA+ICB7DQo+ID4gQEAgLTE2MTEsNiArMTYzMyw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9m
ZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAkJCQlk
YW1hZ2VkX2FyZWEueTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KPiA+ICAJCQkJ
Y2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gPiAgCQkJfQ0K
PiA+ICsNCj4gPiArCQkJY3Vyc29yX2FyZWFfd29ya2Fyb3VuZChuZXdfcGxhbmVfc3RhdGUsICZk
YW1hZ2VkX2FyZWEsDQo+ID4gKwkJCQkJICAgICAgICZwaXBlX2NsaXApOw0KPiA+ICAJCQljb250
aW51ZTsNCj4gPiAgCQl9IGVsc2UgaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYSAhPSBv
bGRfcGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEgfHwNCj4gPiAgCQkJICAgKCFudW1fY2xpcHMgJiYN
Cj4gPiAtLSANCj4gPiAyLjMzLjANCj4gDQoNCg==
