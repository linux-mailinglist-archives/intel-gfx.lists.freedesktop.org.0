Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB8E8F41D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 21:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374146EA50;
	Thu, 15 Aug 2019 19:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF3C6EA50
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 19:08:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 12:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="328461229"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga004.jf.intel.com with ESMTP; 15 Aug 2019 12:07:52 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.170]) with mapi id 14.03.0439.000;
 Thu, 15 Aug 2019 12:07:52 -0700
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
Thread-Index: AQHVUvsjNIoNiuyLbEqdGldW1RWWp6b8/LKAgAAEb4CAAAPUgIAAA/sA
Date: Thu, 15 Aug 2019 19:07:51 +0000
Message-ID: <edc4de11209a94e14294183502c0532ecc3cc4c3.camel@intel.com>
References: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20190815182420.GA22762@intel.com>
 <2463bf0b9cdd9d5180852ececdd8d413c0e5caf2.camel@intel.com>
 <20190815185354.GB22762@intel.com>
In-Reply-To: <20190815185354.GB22762@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.197.51]
Content-ID: <6D2C71D77FA2E748B52FEAC9F0711704@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTE1IGF0IDExOjUzIC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBPbiBUaHUsIEF1ZyAxNSwgMjAxOSBhdCAxMTozOTo1NEFNIC0wNzAwLCBUb2xha2FuYWhhbGxp
IFByYWRlZXAsDQo+IE1hZGh1bWl0aGEgd3JvdGU6DQo+ID4gT24gVGh1LCAyMDE5LTA4LTE1IGF0
IDExOjI0IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBBdWcgMTQs
IDIwMTkgYXQgMDQ6NTE6MTdQTSAtMDcwMCwgTWFkaHVtaXRoYQ0KPiA+ID4gVG9sYWthbmFoYWxs
aQ0KPiA+ID4gUHJhZGVlcCB3cm90ZToNCj4gPiA+ID4gUmVtb3ZpbmcgcmVzdHJpY3Rpb24gb24g
UGlwZSBBIGFzIFRpZ2VyTGFrZSBvbndhcmRzLCBhbGwgdGhlDQo+ID4gPiA+IHBpcGVzDQo+ID4g
PiA+IHN1cHBvcnQgRFNDLg0KPiA+ID4gDQo+ID4gPiBNYXkgYmUgZWxhYm9yYXRlIHRoaXMgY29t
bWl0IG1lc3NhZ2UgYSBsaXR0bGUgYml0IHNvbWV0aGluZyBsaWtlOg0KPiA+ID4gIk9uIHByZXZp
b3VzIHBsYXRmb3JtcywgRFNDIHdhcyBub3Qgc3VwcG9ydGVkIG9uIFBpcGUgQSB3aGlsZQ0KPiA+
ID4gc3RhcnRpbmcgVEdMLCBpdHMgaXMgc3VwcG9ydGVkDQo+ID4gPiBvbiBhbGwgcGlwZXMuIFNv
IHJlbW92ZSB0aGUgRFNDIGFuZCBGRUMgcmVzdHJpY3Rpb24gb24gUGlwZSBBIGZvcg0KPiA+ID4g
VEdMDQo+ID4gPiBvbndhcmRzLg0KPiA+ID4gDQo+ID4gDQo+ID4gQWxyaWdodCwgd2lsbCB1cGRh
dGUgdGhhdCBmb3IgcmV2Mi4NCj4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBNYW5hc2kgTmF2
YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBN
YWRodW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcCA8DQo+ID4gPiA+IG1hZGh1bWl0aGEudG9s
YWthbmFoYWxsaS5wcmFkZWVwQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNiArKysrKysrKysrKystLS0t
DQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPiA+ID4gaW5kZXggNDg4NGM4N2M4ZWQ3Li5hNWI1MGY5M2ZhYzUgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiA+ID4gQEAgLTE3MzksOCArMTczOSwxMiBAQCBzdGF0aWMgYm9vbA0KPiA+ID4gPiBpbnRl
bF9kcF9zb3VyY2Vfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4g
PiA+ICB7DQo+ID4gPiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0NCj4g
PiA+ID4gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiA+ICANCj4gPiA+ID4gLQlyZXR1cm4g
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJg0KPiA+ID4gPiAtCQlwaXBlX2NvbmZpZy0+Y3B1
X3RyYW5zY29kZXIgIT0gVFJBTlNDT0RFUl9BOw0KPiA+ID4gPiArCS8qIE9uIFRHTCwgRFNDIGlz
IHN1cHBvcnRlZCBvbiBhbGwgUGlwZXMgKi8NCj4gPiA+IA0KPiA+ID4gICAgICAgICAgICAgICAg
ICAgIF5eXl4gRkVDIHN1cHBvcnRlZCBvbiBhbGwgcGlwZXMNCj4gPiANCj4gPiBPb3BzLCB3aWxs
IGNoYW5nZSB0aGlzLg0KPiA+IA0KPiA+ID4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKQ0KPiA+ID4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gKwllbHNlDQo+ID4gPiA+ICsJ
CXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExICYmDQo+IA0KPiBBbHNvIGhlcmUgSSB0
aGluayBpdHMgYmV0dGVyIHRvIHVzZSBJU19HRU4oZGV2X3ByaXYsIDExKQ0KDQpZZXMsIHRoYXQg
ZG9lcyBtYWtlIGl0IGNsZWFyZXIsIEknbGwgY2hhbmdlIGl0IGZvciB2Mi4NCg0KPiANCj4gPiA+
ID4gKwkJCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPQ0KPiA+ID4gPiBUUkFOU0NPREVS
X0E7DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICANCj4gPiA+ID4gIHN0YXRpYyBib29sIGludGVsX2Rw
X3N1cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiBAQCAtMTc1
NSw4ICsxNzU5LDEyIEBAIHN0YXRpYyBib29sDQo+ID4gPiA+IGludGVsX2RwX3NvdXJjZV9zdXBw
b3J0c19kc2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ID4gIHsNCj4gPiA+ID4g
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+ID4gPiBkcF90b19pOTE1
KGludGVsX2RwKTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAtCXJldHVybiBJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEwICYmDQo+ID4gPiA+IC0JCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBU
UkFOU0NPREVSX0E7DQo+ID4gPiA+ICsJLyogT24gVEdMLCBEU0MgaXMgc3VwcG9ydGVkIG9uIGFs
bCBQaXBlcyAqLw0KPiA+ID4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+
ID4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gKwllbHNlDQo+ID4gPiA+ICsJCXJldHVybiAo
SU5URUxfR0VOKGRldl9wcml2KSA9PSAxMCB8fA0KPiA+ID4gPiBJTlRFTF9HRU4oZGV2X3ByaXYp
ID09IDExKSAmJg0KPiA+ID4gDQo+ID4gPiBXaHkgY2FudCB5b3UganVzdCB1c2UgSU5URUxfR0VO
KGRldl9wcml2KSA+PTEwID8NCj4gPiANCj4gPiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHdh
cyB0aGUgZXhpc3RpbmcgY29uZGl0aW9uLiBXaXRoIHRoZSBuZXcNCj4gPiBjb25kaXRpb24gYWRk
ZWQsIHRoZXJlIHdvdWxkIGJlIGFuIG92ZXJsYXBwaW5nIHNldA0KPiA+IGllIElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTAgd291bGQgc3RpbGwgYmUgVFJVRSBmb3IgR0VOID49IDEyLg0KPiA+IFRo
b3VnaA0KPiA+IHRoaXMgd291bGRuJ3QgYWZmZWN0IHRoZSBsb2dpYyBvZiB0aGUgY29kZSwgdGhv
dWdodCBpdCB3b3VsZCBtYWtlDQo+ID4gbW9yZQ0KPiA+IHNlbnNlIHRvIHNwZXJhdGUgaXQgb3V0
IHRoaXMgd2F5LiANCj4gDQo+IEJ1dCBzaW5jZSB3ZSByZXR1cm4gZm9yIEdFTiA+PTEyICwgdGhl
IG9ubHkgdGltZSBpdCB3b3VsZCBmYWxsIHRvIEdFTg0KPiA+PTEwIGlzIGZvciAxMCBhbmQgMTEN
Cj4gc28gdGhhdCBzaG91bGQgd29yaywgb3IgeW91IGNvdWxkIHVzZSBJU19HRU4oZGV2X3ByaXYs
IDEwKSB8fA0KPiBJU19HRU4oZGV2X3ByaXYsIDExKQ0KPiANCj4gQnV0IG1heSBiZSBjaGVjayB3
aXRoIEx1Y2FzIG9uIHdoYXQgd291bGQgYmUgdGhlIHByZWZlcnJlZCB3YXkNCg0KWWVhaCwgaXQg
d291bGRuJ3QgYWZmZWN0IHRoZSBsb2dpYy4gSSBkZWJhdGVkIGFib3V0IGl0IGZvciBhIHdoaWxl
IHRvby4NCg0KQEx1Y2FzLCB3aGF0IGRvIHlvdSB0aGluayBpcyB0aGUgcHJlZmVycmVkIHdheSB0
byBpbXBsZW1lbnQgdGhpcz8NCg0KPiANCj4gTWFuYXNpDQo+ID4gDQo+ID4gPiANCj4gPiA+IE1h
bmFzaQ0KPiA+ID4gDQo+ID4gPiA+ICsJCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgIT0N
Cj4gPiA+ID4gVFJBTlNDT0RFUl9BOw0KPiA+ID4gPiAgfQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICBz
dGF0aWMgYm9vbCBpbnRlbF9kcF9zdXBwb3J0c19kc2Moc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiA+ID4gLS0gDQo+ID4gPiA+IDIuMTcuMQ0KPiA+ID4gPiANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
