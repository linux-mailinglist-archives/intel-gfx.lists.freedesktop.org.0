Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E8433A0D8
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 21:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA346E0B9;
	Sat, 13 Mar 2021 20:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226D06E0B9
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Mar 2021 20:01:52 +0000 (UTC)
IronPort-SDR: ekS6ezQZ7+BL3vHTvYhZlPucPiNwmLym206hYziMSyGT+vYcecOrniEUpGlgOQZfIc2uKD+mO3
 9FrNhrY8Iorw==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="273996546"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="273996546"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2021 12:01:51 -0800
IronPort-SDR: 2o24v2Ee9bRjGs4uxztQpNI/zVVJ1Jhm++RbBDcLiOu8Ge23AyTLnkTLmPVXV4RvNG/Wn2KBKR
 aIWxsFUr3j0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="378068496"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 13 Mar 2021 12:01:51 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 13 Mar 2021 12:01:51 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 13 Mar 2021 12:01:50 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Sat, 13 Mar 2021 20:01:48 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/display/psr: Add sink not reliable check to
 intel_psr_work()
Thread-Index: AQHXF0TrmyNO/RyMHkOc3w/Ym+tl7KqCWNwA
Date: Sat, 13 Mar 2021 20:01:48 +0000
Message-ID: <b66c0c1ade0bf80c3dc799b0e9498d540bcf4a51.camel@intel.com>
References: <20210312133430.1478156-1-gwan-gyeong.mun@intel.com>
 <85d3edee2ca1da2ed4cf09fe6451b6a079b2fd51.camel@intel.com>
In-Reply-To: <85d3edee2ca1da2ed4cf09fe6451b6a079b2fd51.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <29A154E14F4CD345A215368B47120989@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Add sink not reliable
 check to intel_psr_work()
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

T24gRnJpLCAyMDIxLTAzLTEyIGF0IDA1OjM3IC0wODAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIxLTAzLTEyIGF0IDE1OjM0ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+ID4gSWYgdGhlIHNpbmsgc3RhdGUgaXMgbm90IHJlbGlhYmxlLCBpdCBkb2VzIG5vdCBuZWVk
IHRvIHdhaXQgZm9yDQo+ID4gUFNSICJJRExFIHN0YXRlIiBmb3IgcmUtZW5hYmxpbmcgUFNSLiBB
bmQgaXQgc2hvdWxkIG5vdCB0cnkgdG8gcmUtDQo+ID4gZW5hYmxlDQo+ID4gUFNSLg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCAzICsrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
aW5kZXggY2Q0MzQyODVlM2I3Li43ZjU1NTQwN2RlMDYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTY4Niw2ICsxNjg2LDkgQEAg
c3RhdGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0DQo+ID4gKndvcmsp
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChSRUFEX09OQ0UoaW50ZWxfZHAtPnBzci5pcnFfYXV4
X2Vycm9yKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9o
YW5kbGVfaXJxKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KMS4gSW4gaW50
ZWxfcHNyX2lycV9oYW5kbGVyKCkNCiAgIHdoZW4gdGhlIHBzciBlcnJvciBoYXBwZW5zLA0KICAg
ICBpbnRlbF9kcC0+cHNyLmlycV9hdXhfZXJyb3IgPSB0cnVlOyANCiAgICAgIHNjaGVkdWxlX3dv
cmsoJmludGVsX2RwLT5wc3Iud29yayk7DQoNCg0KMi4gSW4gaW50ZWxfcHNyX3dvcmsoKQ0KICAg
IC4uLg0KICAgaWYgKFJFQURfT05DRShpbnRlbF9kcC0+cHNyLmlycV9hdXhfZXJyb3IpKQ0KICAg
ICBpbnRlbF9wc3JfaGFuZGxlX2lycShpbnRlbF9kcCk7IA0KCSAtPiBpbnRlbF9wc3JfZGlzYWJs
ZV9sb2NrZWQoaW50ZWxfZHApOyANCiAgICAgICAgICAgIHBzci0+c2lua19ub3RfcmVsaWFibGUg
PSB0cnVlOyAgDQogICAgLi4uDQoNCg0KSU1PLCB3aGVuIHRoaXMgc2NlbmFyaW8gaGFwcGVucywg
dGhlIGJlbG93IGNvZGUgc2VlbXMgdG8gYmUgbmVlZGVkLg0KDQo+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKGludGVsX2RwLT5wc3Iuc2lua19ub3RfcmVsaWFibGUpDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGdvdG8gdW5sb2NrOw0KPiANCj4gSSBjYW4ndCB0aGluayBhbnkgc2Nl
bmFyaW8gdGhhdCB0aGlzIHdpbGwgaGl0Lg0KPiBCZWZvcmUgc2V0IHNpbmtfbm90X3JlbGlhYmxl
IFBTUiB3aWxsIGJlIGRpc2FibGVkIHNvIGl0IHdpbGwgYmUgY2F1Z2h0DQo+IGluIHRoZSBmaXJz
dCBjaGVjayBvZiBpbnRlbF9wc3Jfd29yaygpLg0KPiANCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIFdlIGhhdmUgdG8gbWFrZSBzdXJlIFBTUiBp
cyByZWFkeSBmb3IgcmUtZW5hYmxlDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIG90aGVyd2lzZSBp
dCBrZWVwcyBkaXNhYmxlZCB1bnRpbCBuZXh0IGZ1bGwgZW5hYmxlL2Rpc2FibGUNCj4gPiBjeWNs
ZS4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
