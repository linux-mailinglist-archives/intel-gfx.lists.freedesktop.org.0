Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5665A7CB
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 01:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843BE6E990;
	Fri, 28 Jun 2019 23:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABB26E990
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 23:52:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 16:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,429,1557212400"; d="scan'208";a="164807551"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jun 2019 16:52:32 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Jun 2019 16:52:32 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.192]) with mapi id 14.03.0439.000;
 Fri, 28 Jun 2019 16:52:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 3/5] drm/i915/ehl: Don't program PHY_MISC on EHL PHY C
Thread-Index: AQHVK7KwNeIl6GrxQ0W87Vblri2kvqayNwyA
Date: Fri, 28 Jun 2019 23:52:31 +0000
Message-ID: <c5874eb568c4deaea50c95a736fc63a8f535baf8.camel@intel.com>
References: <20190626000352.31926-1-matthew.d.roper@intel.com>
 <20190626000352.31926-4-matthew.d.roper@intel.com>
In-Reply-To: <20190626000352.31926-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <9F731AE1A88EFB4B924EAD4620AF0EA6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/ehl: Don't program PHY_MISC
 on EHL PHY C
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE3OjAzIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
bHRob3VnaCBFSEwgYWRkZWQgYSB0aGlyZCBjb21ibyBQSFksIG5vIFBIWV9NSVNDIHJlZ2lzdGVy
IHdhcyBhZGRlZA0KPiBmb3INCj4gUEhZIEMuICBUaGUgYnNwZWMgaW5kaWNhdGVzIHRoYXQgdGhl
cmUncyBubyBuZWVkIHRvIHByb2dyYW0gdGhlICJERQ0KPiB0bw0KPiBJTyBDb21wIFB3ciBEb3du
IiBzZXR0aW5nIGZvciB0aGlzIFBIWSB0aGF0IHdlIHVzdWFsbHkgbmVlZCB0byBzZXQgaW4NCj4g
UEhZX01JU0MuDQo+IA0KPiB2MjoNCj4gIC0gQWRkIElTX0VMS0hBUlRMQUtFKCkgZ3VhcmRzIHNp
bmNlIGZ1dHVyZSBwbGF0Zm9ybXMgdGhhdCBoYXZlIGEgUEhZDQo+IEMNCj4gICAgYXJlIGxpa2Vs
eSB0byByZWluc3RhdGUgdGhlIFBIWV9NSVNDIHJlZ2lzdGVyLiAgKEpvc2UpDQo+ICAtIFVzZSBn
b3RvJ3MgdG8gc2tpcCBQSFlfTUlTQyBwcm9ncmFtbWluZyAmIG1pbmltaXplIGNvZGUgZGVsdGFz
Lg0KPiAoSm9zZSkNCg0KSSBmb3VuZCBtb3JlIHJlZ2lzdGVycyB0aGF0IGFsc28gbmVlZHMgdGhl
IGNvbnZlcnNpb24sIGhlcmUgYSBmZXc6DQoNCmRzaV9wcm9ncmFtX3N3aW5nX2FuZF9kZWVtcGhh
c2lzKCkNCglJQ0xfUE9SVF9UWF9EVzVfTE4wDQoNCmljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dy
YW0oKQ0KCUlDTF9QT1JUX1RYX0RXNV9MTjANCglJQ0xfUE9SVF9UWF9EVzRfTE4NCg0KaWNsX2Nv
bWJvX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKCkNCglJQ0xfUE9SVF9UWF9EVzRfTE4NCglJQ0xf
UE9SVF9DTF9EVzUNCglJQ0xfUE9SVF9UWF9EVzRfTE4NCglJQ0xfUE9SVF9UWF9EVzVfR1JQDQoN
Cg0KU3VnZ2VzdGlvbjogc2VuZCB0aGUgb3RoZXIgcGF0Y2hlcyBzZXBhcmF0ZWQsIG1lcmdlIHRo
b3NlIHBhdGNoZXMgYW5kDQp0aGVuIHdlIHdvcmsgb24gdGhpcyBvbmUuDQoNCg0KPiANCj4gQnNw
ZWM6IDMzMTQ4DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5
LmMgICAgfCAyOA0KPiArKysrKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYw0KPiBpbmRleCAwNzViYWIyNTAwZWIu
LmQzZDUyNDQ3NjVlNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb21ib19waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbWJvX3BoeS5jDQo+IEBAIC0xODMsOSArMTgzLDEzIEBAIHN0YXRpYyB2b2lkIGNu
bF9jb21ib19waHlzX3VuaW5pdChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
DQo+ICBzdGF0aWMgYm9vbCBpY2xfY29tYm9fcGh5X2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiAgCQkJCSAgZW51bSBwb3J0IHBvcnQpDQo+ICB7DQo+IC0JcmV0
dXJuICEoSTkxNV9SRUFEKElDTF9QSFlfTUlTQyhwb3J0KSkgJg0KPiAtCQkgSUNMX1BIWV9NSVND
X0RFX0lPX0NPTVBfUFdSX0RPV04pICYmDQo+IC0JCShJOTE1X1JFQUQoSUNMX1BPUlRfQ09NUF9E
VzAocG9ydCkpICYgQ09NUF9JTklUKTsNCj4gKwkvKiBUaGUgUEhZIEMgYWRkZWQgYnkgRUhMIGhh
cyBubyBQSFlfTUlTQyByZWdpc3RlciAqLw0KPiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJp
dikgJiYgcG9ydCA9PSBQT1JUX0MpDQo+ICsJCXJldHVybiBJOTE1X1JFQUQoSUNMX1BPUlRfQ09N
UF9EVzAocG9ydCkpICYgQ09NUF9JTklUOw0KPiArCWVsc2UNCj4gKwkJcmV0dXJuICEoSTkxNV9S
RUFEKElDTF9QSFlfTUlTQyhwb3J0KSkgJg0KPiArCQkJIElDTF9QSFlfTUlTQ19ERV9JT19DT01Q
X1BXUl9ET1dOKSAmJg0KPiArCQkJKEk5MTVfUkVBRChJQ0xfUE9SVF9DT01QX0RXMChwb3J0KSkg
Jg0KPiBDT01QX0lOSVQpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgYm9vbCBpY2xfY29tYm9fcGh5
X3ZlcmlmeV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+IEBA
IC0yOTksNiArMzAzLDE0IEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlzX2luaXQoc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCQkJY29udGludWU7DQo+ICAJCX0N
Cj4gIA0KPiArCQkvKg0KPiArCQkgKiBBbHRob3VnaCBFSEwgYWRkcyBhIGNvbWJvIFBIWSBDLCB0
aGVyZSdzIG5vIFBIWV9NSVNDDQo+ICsJCSAqIHJlZ2lzdGVyIGZvciBpdCBhbmQgbm8gbmVlZCB0
byBwcm9ncmFtIHRoZQ0KPiArCQkgKiBERV9JT19DT01QX1BXUl9ET1dOIHNldHRpbmcgb24gUEhZ
IEMuDQo+ICsJCSAqLw0KPiArCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIHBvcnQg
PT0gUE9SVF9DKQ0KPiArCQkJZ290byBza2lwX3BoeV9taXNjOw0KPiArDQo+ICAJCS8qDQo+ICAJ
CSAqIEVITCdzIGNvbWJvIFBIWSBBIGNhbiBiZSBob29rZWQgdXAgdG8gZWl0aGVyIGFuDQo+IGV4
dGVybmFsDQo+ICAJCSAqIGRpc3BsYXkgKHZpYSBEREktRCkgb3IgYW4gaW50ZXJuYWwgZGlzcGxh
eSAodmlhIERESS0NCj4gQSBvcg0KPiBAQCAtMzEzLDYgKzMyNSw3IEBAIHN0YXRpYyB2b2lkIGlj
bF9jb21ib19waHlzX2luaXQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0K
PiAgCQl2YWwgJj0gfklDTF9QSFlfTUlTQ19ERV9JT19DT01QX1BXUl9ET1dOOw0KPiAgCQlJOTE1
X1dSSVRFKElDTF9QSFlfTUlTQyhwb3J0KSwgdmFsKTsNCj4gIA0KPiArc2tpcF9waHlfbWlzYzoN
Cj4gIAkJY25sX3NldF9wcm9jbW9uX3JlZl92YWx1ZXMoZGV2X3ByaXYsIHBvcnQpOw0KPiAgDQo+
ICAJCWlmIChwb3J0ID09IFBPUlRfQSkgew0KPiBAQCAtMzQzLDEwICszNTYsMTkgQEAgc3RhdGlj
IHZvaWQgaWNsX2NvbWJvX3BoeXNfdW5pbml0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gIAkJCURSTV9XQVJOKCJQb3J0ICVjIGNvbWJvIFBIWSBIVyBzdGF0ZSBjaGFu
Z2VkDQo+IHVuZXhwZWN0ZWRseVxuIiwNCj4gIAkJCQkgcG9ydF9uYW1lKHBvcnQpKTsNCj4gIA0K
PiArCQkvKg0KPiArCQkgKiBBbHRob3VnaCBFSEwgYWRkcyBhIGNvbWJvIFBIWSBDLCB0aGVyZSdz
IG5vIFBIWV9NSVNDDQo+ICsJCSAqIHJlZ2lzdGVyIGZvciBpdCBhbmQgbm8gbmVlZCB0byBwcm9n
cmFtIHRoZQ0KPiArCQkgKiBERV9JT19DT01QX1BXUl9ET1dOIHNldHRpbmcgb24gUEhZIEMuDQo+
ICsJCSAqLw0KPiArCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIHBvcnQgPT0gUE9S
VF9DKQ0KPiArCQkJZ290byBza2lwX3BoeV9taXNjOw0KPiArDQo+ICAJCXZhbCA9IEk5MTVfUkVB
RChJQ0xfUEhZX01JU0MocG9ydCkpOw0KPiAgCQl2YWwgfD0gSUNMX1BIWV9NSVNDX0RFX0lPX0NP
TVBfUFdSX0RPV047DQo+ICAJCUk5MTVfV1JJVEUoSUNMX1BIWV9NSVNDKHBvcnQpLCB2YWwpOw0K
PiAgDQo+ICtza2lwX3BoeV9taXNjOg0KPiAgCQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ09N
UF9EVzAocG9ydCkpOw0KPiAgCQl2YWwgJj0gfkNPTVBfSU5JVDsNCj4gIAkJSTkxNV9XUklURShJ
Q0xfUE9SVF9DT01QX0RXMChwb3J0KSwgdmFsKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
