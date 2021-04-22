Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F4368461
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 18:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451F26E3EE;
	Thu, 22 Apr 2021 16:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497BD6E3EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 16:08:02 +0000 (UTC)
IronPort-SDR: 1qptgP4h/pAO9VH8MUEaSqqpZ2quWxO3iMskAFSe/xGxI4aiIRPr2DWP9EFc0/IypwdQFX+vCK
 lYyJeelYUYDw==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="281244057"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="281244057"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 09:07:41 -0700
IronPort-SDR: 6nYNh0XFSinkd0jdKyFgeY2CndqaUz+JdKnoq54FYQUHBSs4eC3bezIDvLxSW1GUXMKm8A43we
 oSOH3O21LzTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="524697440"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2021 09:07:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 09:07:40 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 09:07:38 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Thu, 22 Apr 2021 17:07:37 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Disable PSR2 if TGL Display stepping
 is B1 from A0
Thread-Index: AQHXN4VWZrEWbzILE0uxuP4NdaUyGarAo2oA
Date: Thu, 22 Apr 2021 16:07:37 +0000
Message-ID: <4f7093a51900b97b51a9374b725a882296e2cf78.camel@intel.com>
References: <20210422095401.2377644-1-gwan-gyeong.mun@intel.com>
 <9c29c4ebad4ba756ccd6a538eb2b8c2ef35e44b8.camel@intel.com>
In-Reply-To: <9c29c4ebad4ba756ccd6a538eb2b8c2ef35e44b8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <C2152551EE952B4A876C5CC61A5141C0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Disable PSR2 if TGL
 Display stepping is B1 from A0
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

T24gVGh1LCAyMDIxLTA0LTIyIGF0IDA3OjM5IC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVGh1LCAyMDIxLTA0LTIyIGF0IDEyOjU0ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+ID4gVEdMIFBTUjIgaGFyZHdhcmUgdHJhY2tpbmcgc2hvd3MgbW9tZW50YXJ5IGZsaWNrZXIg
YW5kIHNjcmVlbiBzaGlmdA0KPiA+IGlmDQo+ID4gVEdMIERpc3BsYXkgc3RlcHBpbmcgaXMgQjEg
ZnJvbSBBMC4NCj4gPiBJdCBoYXMgYmVlbiBmaXhlZCBmcm9tIFRHTCBEaXNwbGF5IHN0ZXBwaW5n
IEMwLg0KPiA+IA0KPiA+IEhTREVTOiAxODAxNTk3MDAyMQ0KPiA+IEhTREVTOiAyMjA5MzEzODEx
DQo+ID4gQlNwZWM6IDU1Mzc4DQo+ID4gDQo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11
biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsrKysrKw0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNGFkNzU2ZTIzOGM1Li4yY2M5ZWVhYjRi
YWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBAQCAtNzM5LDYgKzczOSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192
YWxpZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4g
PiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ICvCoMKg
wqDCoMKgwqDCoC8qIFdhXzIyMDkzMTM4MTEgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoSVNf
VEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMSkpIHsNCj4gDQo+IE1p
c3NpbmcgdG8gY2hlY2sgaWYgbWFudWFsIHRyYWNraW5nIGlzIGJlaW5nIHVzZWQsIGluIHRoaXMg
Y2FzZSB3ZQ0KPiBjYW4gZW5hYmxlIFBTUjIgaW4gdGhvc2UgZGlzcGxheSBzdGVwcGluZ3MuDQpU
aGFua3MgZm9yIHJldmlld2luZy4gSSdsbCB1cGRhdGUgaXQgaW4gVjIuDQo+IA0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlBT
UjIgaXMgbm90IHN1cHBvcnRlZA0KPiA+IHRoaXMgRGlzcGxheSBzdGVwcGluZ1xuIik7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiArwqDCoMKg
wqDCoMKgwqB9DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBXYV8xNjAxMTE4MTI1MCAq
Lw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikgfHwgSVNf
QUxERVJMQUtFX1MoZGV2X3ByaXYpKSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlBTUjIgaXMgZGVmZWF0dXJlZCBmb3IN
Cj4gPiB0aGlzIHBsYXRmb3JtXG4iKTsNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
