Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4015ABDD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95C76F51B;
	Wed, 12 Feb 2020 15:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FEB6F51B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:20:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:20:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="233816944"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga003.jf.intel.com with ESMTP; 12 Feb 2020 07:20:17 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 12 Feb 2020 15:20:17 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Feb 2020 15:20:16 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 12 Feb 2020 15:20:16 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Force state->modeset=true when
 distrust_bios_wm==true
Thread-Index: AQHV4bVJ75F8ew2JbkCZtxUBF0U2LKgXq4qA
Date: Wed, 12 Feb 2020 15:20:16 +0000
Message-ID: <0b0db4327bcad44bf0d4af5ab15d4065fd0500e5.camel@intel.com>
References: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.163]
Content-ID: <7F7E3E3D5F3A3F46AE21E8CB826278F5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force state->modeset=true when
 distrust_bios_wm==true
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

T24gV2VkLCAyMDIwLTAyLTEyIGF0IDE3OjAxICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ3VycmVudGx5IHdoZW4gd2UgbG9hZCB0aGUgZHJpdmVyIHdlIHNldCBkaXN0cnVzdF9i
aW9zX3dtPXRydWUsIHdoaWNoDQo+IHdpbGwgY2F1c2UgYWN0aXZlX3BpcGVfY2hhbmdlcyB0byBn
ZXQgZmxhZ2dlZCBldmVuIHdoZW4gd2UncmUgbm90DQo+IHRvZ2dsaW5nIGFueSBwaXBlcyBvbi9v
ZmYuIFRoZSByZWFzb24gYmVpbmcgdGhhdCB3ZSB3YW50IHRvIGZ1bGx5DQo+IHJlZGlzdHJpYnV0
ZSB0aGUgZGJ1ZiBhbW9uZyB0aGUgYWN0aXZlIHBpcGVzIGFuZCBpZ25vcmUgd2hhdGV2ZXINCj4g
c3RhdGUgdGhlIGZpcm13YXJlIGxlZnQgYmVoaW5kLg0KPiANCj4gVW5mb3J0dW5hdGVseSB3aGVu
IHRoZSBjb2RlIGZsYWdzIGFjdGl2ZV9waXBlX2NoYW5nZXMgaXQgZG9lc24ndA0KPiBzZXQgc3Rh
dGUtPm1vZGVzZXQgdG8gdHJ1ZSwgd2hpY2ggbWVhbnMgdGhlIGhhcmR3YXJlIGRidWYgc3RhdGUN
Cj4gd29uJ3QgYWN0dWFsbHkgZ2V0IHVwZGF0ZWQuIEhlbmNlIHRoZSBoYXJkd2FyZSBhbmQgc29m
dHdhcmUNCj4gc3RhdGVzIGdvIG91dCBvZiBzeW5jLCB3aGljaCBjYW4gcmVzdWx0IGluIHBsYW5l
cyB0cnlpbmcgdG8gdXNlIGENCj4gZGlzYWJsZWQgZGJ1ZiBzbGljZS4gU3VwcmlzaW5nbHkgdGhh
dCBvbmx5IHNlZW1zIHRvIGNvcnJ1cHQgdGhlDQo+IGRpc3BsYXkgcmF0aGVyIHRoYW4gbWFraW5n
IHRoZSB3aG9sZSBkaXNwbGF5IGVuZ2luZSBrZWVsIG92ZXIuDQo+IA0KPiBMZXQncyBmaXggdGhp
cyBmb3Igbm93IGJ5IGZsYWdnaW5nIHN0YXRlLT5tb2Rlc2V0IHdoZW5ldmVyDQo+IGRpc3RydXN0
X2Jpb3Nfd20gaXMgc2V0Lg0KPiANCj4gRXZlbnR1YWxseSB3ZSdsbCBsaWtlbHkgd2FudCB0byBy
aXAgb3V0IGFsbCBvZiB0aGlzIG1lc3MgYW5kDQo+IGludHJvZHVjZSBwcm9wZXIgc3RhdHllIHRy
YWNraW5nIGZvciBkYnVmLiBCdXQgdGhhdCByZXF1aXJlcw0KPiBtb3JlIHdvcmsuIFRvc3MgaW4g
YSBGSVhNRSB0byB0aGF0IGVmZmVjdC4NCj4gDQo+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gRml4ZXM6IGZmMmNkODYzNWU0MSAoImRy
bS9pOTE1OiBDb3JyZWN0bHkgbWFwIERCVUYgc2xpY2VzIHRvIHBpcGVzIikNCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE0
ICsrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
aW5kZXggNjFiYTFmMjI1NmEwLi45ZTRmOTlhZTgxZmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNTAyNyw2ICsxNTAyNywy
MCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QNCj4gZHJtX2RldmljZSAq
ZGV2LA0KPiAgCWlmIChuZXdfY2RjbGtfc3RhdGUgJiYgbmV3X2NkY2xrX3N0YXRlLQ0KPiA+Zm9y
Y2VfbWluX2NkY2xrX2NoYW5nZWQpDQo+ICAJCWFueV9tcyA9IHRydWU7DQo+ICANCj4gKwkvKg0K
PiArCSAqIGRpc3RydXN0X2Jpb3Nfd20gd2lsbCBmb3JjZSBhIGZ1bGwgZGJ1ZiByZWNvbXB1dGF0
aW9uDQo+ICsJICogYnV0IHRoZSBoYXJkd2FyZSBzdGF0ZSB3aWxsIG9ubHkgZ2V0IHVwZGF0ZWQg
YWNjb3JkaW5nbHkNCj4gKwkgKiBpZiBzdGF0ZS0+bW9kZXNldD09dHJ1ZS4gSGVuY2UgZGlzdHJ1
c3RfYmlvc193bT09dHJ1ZSAmJg0KPiArCSAqIHN0YXRlLT5tb2Rlc2V0PT1mYWxzZSBpcyBhbiBp
bnZhbGlkIGNvbWJpbmF0aW9uIHdoaWNoDQo+ICsJICogd291bGQgY2F1c2UgdGhlIGhhcmR3YXJl
IGFuZCBzb2Z0d2FyZSBkYnVmIHN0YXRlIHRvIGdldA0KPiArCSAqIG91dCBvZiBzeW5jLiBXZSBt
dXN0IHByZXZlbnQgdGhhdC4NCj4gKwkgKg0KPiArCSAqIEZJWE1FIGNsZWFuIHVwIHRoaXMgbWVz
cyBhbmQgaW50cm9kdWNlIGJldHRlcg0KPiArCSAqIHN0YXRlIHRyYWNraW5nIGZvciBkYnVmLg0K
DQpJIGRpc2FncmVlIGhlcmUgaW4gdGhhdCBzZW5zZSwgdGhhdCB0aGlzIGlzIGFjdHVhbGx5IG5v
dCBhIERCVUYNCmlzc3VlIDopIA0KQnV0IG1lcmVseSBzdGF0ZS0+bW9kZXNldCBhbmQgYWN0aXZl
X3BpcGVfY2hhbmdlcyBnb2luZyBvdXQgb2Ygc3luYy4NCkhvd2V2ZXIgcmVmYWN0b3JpbmcgaGVy
ZSBkZWZpbml0ZWx5IHdpbGwgaGVscCB0byB1bml0ZSB0aG9zZQ0KdG8gc29tZWtpbmQgb2YgdW5p
ZmllZCBuZXcgc3RhdGUuIEF0IGxlYXN0IGhhdmluZyB0aGlzDQphY3RpdmVfcGlwZV9jaGFuZ2Vz
IHNlZW1zIHRvIGJlIHJlZHVuZGFudC4NCg0KPiArCSAqLw0KPiArCWlmIChkZXZfcHJpdi0+d20u
ZGlzdHJ1c3RfYmlvc193bSkNCj4gKwkJYW55X21zID0gdHJ1ZTsNCj4gKw0KDQpSZXZpZXdlZC1i
eTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoN
Cj4gIAlpZiAoYW55X21zKSB7DQo+ICAJCXJldCA9IGludGVsX21vZGVzZXRfY2hlY2tzKHN0YXRl
KTsNCj4gIAkJaWYgKHJldCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
