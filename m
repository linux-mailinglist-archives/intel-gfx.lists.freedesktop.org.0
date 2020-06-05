Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF51EF9DA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C196E8F4;
	Fri,  5 Jun 2020 14:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF4B6E8F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 14:02:08 +0000 (UTC)
IronPort-SDR: p188F++TfUtwEpelQKhnJwsjtUoEleHI3fv0ru20ZBKINyMqROPU/s2/+iCpSaKcD0GzL+niCh
 zjmb1BiPIqRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:02:07 -0700
IronPort-SDR: IF4f5BI5/VaRwvsS5eJuuX9PAc/HZwgRFCDm/upend9/FYDDMdklx6rWVBUwN+16V3FzhqNdd0
 WEWFGMCUbP8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="445901147"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga005.jf.intel.com with ESMTP; 05 Jun 2020 07:02:06 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 5 Jun 2020 15:02:05 +0100
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Jun 2020 15:02:05 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 5 Jun 2020 15:02:05 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Program default IO buffer Wake and Fast
 Wake
Thread-Index: AQHWOtvRR0CRWYDwLka0r/ThPC68HqjJ/SYA
Date: Fri, 5 Jun 2020 14:02:05 +0000
Message-ID: <8ad8b2d6ac1cb6c3b381a2bc39d6e0d3fce0a35d.camel@intel.com>
References: <20200605002350.151449-1-gwan-gyeong.mun@intel.com>
 <863417d4a19babccaaafeaf00b1c8bdb8cbc8562.camel@intel.com>
In-Reply-To: <863417d4a19babccaaafeaf00b1c8bdb8cbc8562.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.162]
Content-ID: <85433EA05CD0294D88E2776A6735C234@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Program default IO buffer
 Wake and Fast Wake
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

T24gVGh1LCAyMDIwLTA2LTA0IGF0IDE4OjUxIC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIwLTA2LTA1IGF0IDAzOjIzICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+ID4gVGhlIElPIGJ1ZmZlciBXYWtlIGFuZCBGYXN0IFdha2UgYml0IHNpemUgYW5kIHZhbHVl
IGhhdmUgYmVlbg0KPiA+IGNoYW5nZWQgZnJvbQ0KPiA+IEdlbjEyKy4NCj4gPiBJdCBwcm9ncmFt
cyBkZWZhdWx0IHZhbHVlIG9mIElPIGJ1ZmZlciBXYWtlIGFuZCBGYXN0IFdha2Ugb24NCj4gPiBH
ZW4xMisuDQo+ID4gDQo+ID4gLSBQcmUgR2VuMTINCj4gPiAgIEJpdCBsb2NhdGlvbjogSU8gYnVm
ZmVyIFdha2U6IFJlZ2lzdGVyX1BTUjJfQ1RMWzE0OjEzXQ0KPiA+ICAgICAgICAgICAgICAgICBG
YXN0IFdha2U6IFJlZ2lzdGVyX1BTUjJfQ1RMWzEyOjExXQ0KPiA+IA0KPiA+ICAgVmFsdWU6IDB4
MDogOCBsaW5lcw0KPiA+ICAgICAgICAgIDB4MTogNyBsaW5lcw0KPiA+ICAgICAgICAgIDB4Mjog
NiBsaW5lcw0KPiA+ICAgICAgICAgIDB4MzogNSBsaW5lcw0KPiA+IA0KPiA+IC0gR2VuMTIrDQo+
ID4gICBCaXQgbG9jYXRpb246IElPIGJ1ZmZlciBXYWtlOiBSZWdpc3Rlcl9QU1IyX0NUTFsxNTox
M10NCj4gPiAgICAgICAgICAgICAgICAgRmFzdCBXYWtlOiBSZWdpc3Rlcl9QU1IyX0NUTFsxMjox
MF0NCj4gPiANCj4gPiAgIFZhbHVlOiAweDA6IDUgbGluZXMNCj4gPiAgICAgICAgICAweDE6IDYg
bGluZXMNCj4gPiAgICAgICAgICAweDI6IDcgbGluZXMNCj4gPiAgICAgICAgICAweDM6IDggbGlu
ZXMNCj4gPiAgICAgICAgICAweDQ6IDkgbGluZXMNCj4gPiAgICAgICAgICAweDU6IDEwIGxpbmVz
DQo+ID4gICAgICAgICAgMHg2OiAxMSBsaW5lcw0KPiA+ICAgICAgICAgIDB4NzogMTIgbGluZXMN
Cj4gDQo+IElmIHlvdSBkZWZpbmUgdGhlIG1hY3JvIGxpa2UgYmVsbG93IHlvdSBkb24ndCBuZWVk
IHRvIGFkZCB0aGlzDQo+IGluZm9ybWF0aW9uIHRvIHRoZSBjb21taXQgZGVzY3JpcHRpb24uDQo+
IA0KPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCAxOSArKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgfCAgNiArKysrKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
NSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBiN2EyYzEwMjY0OGEuLmRlMmExN2ZlODg2MCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBA
IC01MTgsNiArNTE4LDI1IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBp
bnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiAgCWVsc2UNCj4gPiAgCQl2YWwgfD0gRURQX1BT
UjJfVFAyX1RJTUVfMjUwMHVzOw0KPiA+ICANCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBUT0RPOiBJbiBvcmRlciB0byBzZXR0aW5n
IGFuIG9wdGltYWwgcG93ZXINCj4gPiBjb25zdW1wdGlvbiwNCj4gPiArCQkgKiBsb3dlciB0aGFu
IDRrIHJlc29sdWl0aW9uIG1vZGUgbmVlZHMgdG8gZGVjcmVzZQ0KPiA+IElPX0JVRkZFUl9XQUtF
DQo+ID4gKwkJICogYW5kIEZBU1RfV0FLRS4gQW5kIGhpZ2hlciB0aGFuIDRLIHJlc29sdXRpb24g
bW9kZQ0KPiA+IG5lZWRzDQo+ID4gKwkJICogdG8gaW5jcmVhc2UgSU9fQlVGRkVSX1dBS0UgYW5k
IEZBU1RfV0FLRS4NCj4gPiArCQkgKi8NCj4gPiArCQl1MzIgaW9fYnVmZmVyX3dha2UgPSAweDI7
IC8qIGRlZmF1bHQgQlNwZWMgdmFsdWUsIDcNCj4gPiBsaW5lcyAqLw0KPiA+ICsJCXUzMiBmYXN0
X3dha2UgPSAweDI7IC8qIGRlZmF1bHQgQlNwZWMgdmFsdWUsIDcgbGluZXMgKi8NCj4gPiArDQo+
ID4gKwkJLyoNCj4gPiArCQkgKiBUbyBwcm9ncmFtIGxpbmUgOSB0byAxMiBvbiBJT19CVUZGRVJf
V0FLRSBhbmQNCj4gPiBGQVNUX1dBS0UsDQo+ID4gKwkJICogRURQX1BTUjJfQ1RMIHNob3VsZCBi
ZSBzZXQNCj4gPiBFRFBfUFNSMl9CTE9DS19DT1VOVF9OVU1fMy4NCj4gPiArCQkgKi8NCj4gPiAr
CQl2YWwgfD0gRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzI7DQo+ID4gKwkJdmFsIHw9IEVEUF9Q
U1IyX0lPX0JVRkZFUl9XQUtFKGlvX2J1ZmZlcl93YWtlKTsNCj4gPiArCQl2YWwgfD0gRURQX1BT
UjJfRkFTVF9XQUtFKGZhc3Rfd2FrZSk7DQo+IA0KPiBUaGUgcGFyYW1ldGVyIGZvciB0aGlzIDIg
bWFjcm9zIHNob3VsZCBiZSB0aGUgbnVtYmVyIG9mIHRoZSBsaW5lcyBub3QNCj4gdGhlIGJpdCB2
YWx1ZS4NCj4gQXMgeW91IGFyZSBhdCBpdCwgcGxlYXNlIHNldCB0aGUgR0VOOSsgZGVmYXVsdCB2
YWx1ZXMsIHRoZSBUR0wgbWFjcm9zDQo+IHdpbGwgbmVlZCBhICJUR0xfIiBwcmVmaXguDQo+IA0K
PiANCk9rYXkgSSdsbCBzZW5kIHRoZSBhZGRyZXNzZWQgdjIgcGF0Y2guDQo+ID4gKw0KPiA+ICAJ
LyoNCj4gPiAgCSAqIFBTUjIgSFcgaXMgaW5jb3JyZWN0bHkgdXNpbmcgRURQX1BTUl9UUDFfVFAz
X1NFTCBhbmQgQlNwZWMNCj4gPiBpcw0KPiA+ICAJICogcmVjb21tZW5kaW5nIGtlZXAgdGhpcyBi
aXQgdW5zZXQgd2hpbGUgUFNSMiBpcyBlbmFibGVkLg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+ID4gaW5kZXggOTZkMzUxZmJlZWJiLi5kMDU1YjdkOTNhNWQgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtNDUxNCwxMCArNDUxNCwxNiBAQCBlbnVt
IHsNCj4gPiAgI2RlZmluZSBFRFBfUFNSMl9DVEwodHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBf
UFNSMl9DVExfQSkNCj4gPiAgI2RlZmluZSAgIEVEUF9QU1IyX0VOQUJMRQkJKDEgPDwgMzEpDQo+
ID4gICNkZWZpbmUgICBFRFBfU1VfVFJBQ0tfRU5BQkxFCQkoMSA8PCAzMCkNCj4gPiArI2RlZmlu
ZSAgIEVEUF9QU1IyX0JMT0NLX0NPVU5UX05VTV8yCSgwIDw8IDI4KSAvKiBUR0wrICovDQo+ID4g
KyNkZWZpbmUgICBFRFBfUFNSMl9CTE9DS19DT1VOVF9OVU1fMwkoMSA8PCAyOCkgLyogVEdMKyAq
Lw0KPiA+ICAjZGVmaW5lICAgRURQX1lfQ09PUkRJTkFURV9WQUxJRAkoMSA8PCAyNikgLyogR0xL
IGFuZCBDTkwrICovDQo+ID4gICNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX0VOQUJMRQkoMSA8
PCAyNSkgLyogR0xLIGFuZCBDTkwrICovDQo+ID4gICNkZWZpbmUgICBFRFBfTUFYX1NVX0RJU0FC
TEVfVElNRSh0KQkoKHQpIDw8IDIwKQ0KPiA+ICAjZGVmaW5lICAgRURQX01BWF9TVV9ESVNBQkxF
X1RJTUVfTUFTSwkoMHgxZiA8PCAyMCkNCj4gPiArI2RlZmluZSAgIEVEUF9QU1IyX0lPX0JVRkZF
Ul9XQUtFKGEpCSgoYSkgPDwgMTMpDQo+ID4gKyNkZWZpbmUgICBFRFBfUFNSMl9JT19CVUZGRVJf
V0FLRV9NQVNLCSgweDcgPDwgMTMpIC8qIFRHTCsgKi8NCj4gPiArI2RlZmluZSAgIEVEUF9QU1Iy
X0ZBU1RfV0FLRShhKQkJKChhKSA8PCAxMCkgLyogVEdMKyAqLw0KPiA+ICsjZGVmaW5lICAgRURQ
X1BTUjJfRkFTVF9XQUtFX01BU0sJKDB4NyA8PCAxMCkgLyogVEdMKyAqLw0KPiA+ICAjZGVmaW5l
ICAgRURQX1BTUjJfVFAyX1RJTUVfNTAwdXMJKDAgPDwgOCkNCj4gPiAgI2RlZmluZSAgIEVEUF9Q
U1IyX1RQMl9USU1FXzEwMHVzCSgxIDw8IDgpDQo+ID4gICNkZWZpbmUgICBFRFBfUFNSMl9UUDJf
VElNRV8yNTAwdXMJKDIgPDwgOCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
