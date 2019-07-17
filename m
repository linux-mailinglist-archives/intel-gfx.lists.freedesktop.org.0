Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E56C399
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 01:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1686E1B4;
	Wed, 17 Jul 2019 23:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37FA6E1B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 23:45:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 16:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="175857004"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2019 16:45:25 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.11.170]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.65]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 16:45:09 -0700
From: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
Thread-Index: AQHVPCKrUukxzqT4xkabXTnytBqdaabPJIUAgADL4AA=
Date: Wed, 17 Jul 2019 23:45:08 +0000
Message-ID: <930aa7d7647f981786081d750f1aef98978e1b5b.camel@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
 <20190717113524.GT5942@intel.com>
In-Reply-To: <20190717113524.GT5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.75.43]
Content-ID: <689D8109358236449FE50DE82F1AAE80@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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

T24gV2VkLCAyMDE5LTA3LTE3IGF0IDE0OjM1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVsIDE2LCAyMDE5IGF0IDAzOjAzOjIxUE0gLTA3MDAsIERoaW5ha2FyYW4g
UGFuZGl5YW4gd3JvdGU6DQo+ID4gQSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVy
biBmaWVsZCBmb2xsb3dzIHRoZSBzaXh0ZWVuIGVsZW1lbnQNCj4gPiBhcnJheSBvZiBQU1IgdGFi
bGUgZW50cmllcyBpbiB0aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3JyZWN0bHkgZGVmaW5lDQo+
ID4gdGhpcyBQU1IyIGZpZWxkIGZvciBlYWNoIG9mIHRoZSBQU1IgdGFibGUgZW50cmllcy4gQXMg
YSByZXN1bHQsIHRoZSBQU1IxDQo+ID4gdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbiBmb3IgYW55
IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNlZA0KPiA+IGluY29ycmVjdGx5LiBTZWNvbmRs
eSwgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9ucyBmb3IgVkJUcyB3aXRoIGJkYg0KPiA+
IHZlcnNpb24gPj0gMjI2IHdpbGwgYWxzbyBiZSB3cm9uZy4NCj4gPiANCj4gPiBDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBGaXhlczogODhhMGQ5NjA2YWZmICgi
ZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8z
IHdha2V1cCB0aW1lIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxk
aGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUGxlYXNlIHN5
bmMgdGhlIGlndCBjb3B5IGFmdGVyIGxhbmRpbmcgdGhpcy4NCg0KV2lsbCBkbywgdGhhbmtzIQ0K
DQotREsNCj4gDQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jICAgICB8IDIgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oIHwgNiArKystLS0NCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IGluZGV4IDIxNTAxZDU2NTMyNy4uYjQxNmIz
OTRiNjQxIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gPiBAQCAtNzY2LDcgKzc2Niw3IEBAIHBhcnNlX3BzcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIpDQo+ID4gIAl9
DQo+ID4gIA0KPiA+ICAJaWYgKGJkYi0+dmVyc2lvbiA+PSAyMjYpIHsNCj4gPiAtCQl1MzIgd2Fr
ZXVwX3RpbWUgPSBwc3JfdGFibGUtPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsNCj4gPiArCQl1
MzIgd2FrZXVwX3RpbWUgPSBwc3ItPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsNCj4gPiAgDQo+
ID4gIAkJd2FrZXVwX3RpbWUgPSAod2FrZXVwX3RpbWUgPj4gKDIgKiBwYW5lbF90eXBlKSkgJiAw
eDM7DQo+ID4gIAkJc3dpdGNoICh3YWtldXBfdGltZSkgew0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+IGluZGV4IDkzZjVjOWQy
MDRkNi4uMDljZDM3ZmIwYjFjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+IEBAIC00ODEsMTMgKzQ4MSwxMyBAQCBzdHJ1
Y3QgcHNyX3RhYmxlIHsNCj4gPiAgCS8qIFRQIHdha2UgdXAgdGltZSBpbiBtdWx0aXBsZSBvZiAx
MDAgKi8NCj4gPiAgCXUxNiB0cDFfd2FrZXVwX3RpbWU7DQo+ID4gIAl1MTYgdHAyX3RwM193YWtl
dXBfdGltZTsNCj4gPiAtDQo+ID4gLQkvKiBQU1IyIFRQMi9UUDMgd2FrZXVwIHRpbWUgZm9yIDE2
IHBhbmVscyAqLw0KPiA+IC0JdTMyIHBzcjJfdHAyX3RwM193YWtldXBfdGltZTsNCj4gPiAgfSBf
X3BhY2tlZDsNCj4gPiAgDQo+ID4gIHN0cnVjdCBiZGJfcHNyIHsNCj4gPiAgCXN0cnVjdCBwc3Jf
dGFibGUgcHNyX3RhYmxlWzE2XTsNCj4gPiArDQo+ID4gKwkvKiBQU1IyIFRQMi9UUDMgd2FrZXVw
IHRpbWUgZm9yIDE2IHBhbmVscyAqLw0KPiA+ICsJdTMyIHBzcjJfdHAyX3RwM193YWtldXBfdGlt
ZTsNCj4gPiAgfSBfX3BhY2tlZDsNCj4gPiAgDQo+ID4gIC8qDQo+ID4gLS0gDQo+ID4gMi4xNy4x
DQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4DQo+IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
