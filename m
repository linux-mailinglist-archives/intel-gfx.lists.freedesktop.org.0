Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8FD416458
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 19:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213CC6ED95;
	Thu, 23 Sep 2021 17:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468E96ED95
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 17:25:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="287572079"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="287572079"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 10:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="436682374"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2021 10:25:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:25:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:25:13 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 10:25:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/display: Wait PSR2 get out of deep sleep to
 update pipe
Thread-Index: AQHXrAU05mEm3YtAjEOP1OzWexvGGquyGtGAgABEAYA=
Date: Thu, 23 Sep 2021 17:25:13 +0000
Message-ID: <569ae2ceb9cf23d255f23b1544c0c8bb5349733e.camel@intel.com>
References: <20210917205241.231527-1-jose.souza@intel.com>
 <20210917205241.231527-2-jose.souza@intel.com>
 <6ce63775-f4e8-b0b3-d139-3733e617772e@intel.com>
In-Reply-To: <6ce63775-f4e8-b0b3-d139-3733e617772e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <0C1B6E44197C3A4797635241258A2F13@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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

T24gVGh1LCAyMDIxLTA5LTIzIGF0IDE2OjI3ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA5LzE3LzIxIDExOjUyIFBNLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3Rl
Og0KPiA+IEFsZGVybGFrZS1QIHdhcyBnZXR0aW5nICdtYXggdGltZSB1bmRlciBldmFzaW9uJyBt
ZXNzYWdlcyB3aGVuIFBTUjINCj4gPiB3YXMgZW5hYmxlZCwgdGhpcyBpcyBkdWUgUElQRV9TQ0FO
TElORS9QSVBFRFNMIHJldHVybmluZyAwIG92ZXIgYQ0KPiA+IHBlcmlvZCBvZiB0aW1lIGxvbmdl
ciB0aGFuIFZCTEFOS19FVkFTSU9OX1RJTUVfVVMuDQo+ID4gDQo+ID4gRm9yIFBTUjEgd2UgaGFk
IHRoZSBzYW1lIGlzc3VlIHNvIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKCkgd2FzDQo+ID4gaW1w
bGVtZW50ZWQgdG8gd2FpdCBmb3IgUFNSMSB0byBnZXQgaW50byBpZGxlIHN0YXRlIGJ1dCBub3Ro
aW5nIHdhcw0KPiA+IGRvbmUgZm9yIFBTUjIuDQo+ID4gDQo+ID4gRm9yIFBTUjIgd2UgY2FuJ3Qg
b25seSB3YWl0IGZvciBpZGxlIHN0YXRlIGFzIFBTUjIgdGVuZHMgdG8ga2VlcA0KPiA+IGludG8g
c2xlZXAgc3RhdGUgdGhhdCBtZWFucyBpdCBpcyByZWFkeSB0byBzZW5kIHNlbGVjdGl2ZSB1cGRh
dGVzLg0KPiA+IA0KPiA+IFRvIGRvIHNvIGl0IHdhcyBuZWNlc3NhcnkgdG8gYWRkIGludGVsX3dh
aXRfZm9yX2NvbmRpdGlvbigpLCB0aGlzDQo+ID4gdGFrZXMgYXMgcGFyYW1ldGVyIGEgZnVuY3Rp
b24gdGhhdCB3aWxsIHJldHVybiB0cnVlIHdoZW4gdGhlIGRlc2lkZXJlZA0KPiA+IGNvbmRpdGlv
biBpcyBtZWV0Lg0KPiA+IA0KPiA+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11
bkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgMyArLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgNjQgKysrKysrKysrKysrLS0tLS0tLQ0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDUg
Ky0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jICAgICAgICAgICB8
IDQ3ICsrKysrKysrKysrKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuaCAgICAgICAgICAgfCAgNyArKw0KPiA+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxMDAgaW5zZXJ0
aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gaW5kZXggNjhm
NGJhOGM0NmU3NS4uNjYyNTk2YWRiMWRhNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+IEBAIC0z
MDMsOCArMzAzLDcgQEAgcHNyX3NvdXJjZV9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwgc3RydWN0IHNlcV9maWxlICptKQ0KPiA+ICAgCQl9Ow0KPiA+ICAgCQl2YWwgPSBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LA0KPiA+ICAgCQkJCSAgICBFRFBfUFNSMl9TVEFUVVMoaW50ZWxfZHAt
PnBzci50cmFuc2NvZGVyKSk7DQo+ID4gLQkJc3RhdHVzX3ZhbCA9ICh2YWwgJiBFRFBfUFNSMl9T
VEFUVVNfU1RBVEVfTUFTSykgPj4NCj4gPiAtCQkJICAgICAgRURQX1BTUjJfU1RBVFVTX1NUQVRF
X1NISUZUOw0KPiA+ICsJCXN0YXR1c192YWwgPSBSRUdfRklFTERfR0VUKEVEUF9QU1IyX1NUQVRV
U19TVEFURV9NQVNLLCB2YWwpOw0KPiA+ICAgCQlpZiAoc3RhdHVzX3ZhbCA8IEFSUkFZX1NJWkUo
bGl2ZV9zdGF0dXMpKQ0KPiA+ICAgCQkJc3RhdHVzID0gbGl2ZV9zdGF0dXNbc3RhdHVzX3ZhbF07
DQo+ID4gICAJfSBlbHNlIHsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBpbmRleCBjMTg5NGIwNTZkNmMxLi5iZDEzMzI1NzgyZjExIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE3NjMs
MTUgKzE3NjMsMzMgQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gICAJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+ICAg
fQ0KPiA+ICAgDQo+ID4gLS8qKg0KPiA+IC0gKiBwc3Jfd2FpdF9mb3JfaWRsZSAtIHdhaXQgZm9y
IFBTUjEgdG8gaWRsZQ0KPiA+IC0gKiBAaW50ZWxfZHA6IEludGVsIERQDQo+ID4gLSAqIEBvdXRf
dmFsdWU6IFBTUiBzdGF0dXMgaW4gY2FzZSBvZiBmYWlsdXJlDQo+ID4gLSAqDQo+ID4gLSAqIFJl
dHVybnM6IDAgb24gc3VjY2VzcyBvciAtRVRJTUVPVVQgaWYgUFNSIHN0YXR1cyBkb2VzIG5vdCBp
ZGxlLg0KPiA+IC0gKg0KPiA+IC0gKi8NCj4gPiAtc3RhdGljIGludCBwc3Jfd2FpdF9mb3JfaWRs
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1MzIgKm91dF92YWx1ZSkNCj4gPiArc3RhdGlj
IGJvb2wgX2lzX3BzcjJfcmVhZF9mb3JfcGlwZV91cGRhdGUodm9pZCAqZGF0YSkNCj4gPiArew0K
PiA+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGRhdGE7DQo+ID4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiArCXUz
MiB2YWw7DQo+ID4gKw0KPiA+ICsJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWRfZncoJmRldl9wcml2
LT51bmNvcmUsDQo+ID4gKwkJCQkgICBFRFBfUFNSMl9TVEFUVVMoaW50ZWxfZHAtPnBzci50cmFu
c2NvZGVyKSk7DQo+ID4gKwl2YWwgJj0gRURQX1BTUjJfU1RBVFVTX1NUQVRFX01BU0s7DQo+ID4g
Kw0KPiA+ICsJcmV0dXJuIHZhbCA9PSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0xFRVAgfHwgdmFs
ID09IEVEUF9QU1IyX1NUQVRVU19TVEFURV9JRExFOw0KPiBJbiB0aGUgc3RhdGUgd2hlcmUgUFNS
MiBzb3VyY2UgaHcgZG9lcyBub3Qgc2VuZCB0aGUgdXBkYXRlZCBhcmVhLCB0aGVyZSANCj4gYXJl
IHN0YXRlcyBzdWNoIGFzIEZBU1RfU0xFRVAgYW5kIERFRVBfU0xFRVAuDQo+IEhlcmUsIHdlIGFy
ZSBvbmx5IHdhaXRpbmcgZm9yIHRoZSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0xFRVAgLyANCj4g
RURQX1BTUjJfU1RBVFVTX1NUQVRFX0lETEUgc3RhdHVzLiBJbiB0aGlzIHJlZ2FyZCwgY291bGQg
eW91IHNoYXJlIHRoZSANCj4gc3RhdGUgbWFjaGluZSBkaWFncmFtIG9mIFBTUjIgU291cmNlIEhX
Pw0KDQpJIGRvbid0IGhhdmUgaXQsIGdvdCB0aGlzIDIgc3RhdGVzIGZyb20gZXhwZXJpbWVudHMg
b2YgcmVhZHMgdG8gRURQX1BTUjJfU1RBVFVTLg0KDQpXaGVuIFBTUjIgSFcgZmluaXNoIGFuIHVw
ZGF0ZSBpdCBnb2VzIHRvIFNMRUVQIGFuZCBpZiBpZGxlIGVub3VnaCBpdCBnb2VzIHRvIERFRVBf
U0xFRVAuDQpCdXQgYXMgVkJMIGludGVycnVwdHMgYXJlIGVuYWJsZWQgYmVmb3JlIGludGVsX3Bz
cl93YWl0X2Zvcl9pZGxlKCkgaXMgY2FsbGVkLCBpZiBQU1IyIHdhcyBpbiBEQzUvREM2L0RFRVBf
U0xFRVAgaXQgZ29lcyBiYWNrIHRvIFNMRUVQLg0KVGhlIGNoZWNrIGZvciBJRExFIHN0YXRlIGlz
IGFsc28gaW1wb3J0YW50IGFzIHdlIGNvdWxkIGJlIHVwZGF0aW5nIHNjcmVlbiBleGFjdGx5IG9u
ZSBmcmFtZSBhZnRlciBQU1IyIHdhcyBlbmFibGVkLCBzbyBpdCBkaWQgbm90IGhhZCBlbm91Z2gg
ZnJhbWVzDQooRURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVKXRvIGFjdGl2YXRlIFBTUjIuDQoNCg0K
PiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IF9wc3IyX3JlYWR5X2Zvcl9waXBlX3VwZGF0
ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiArew0KPiA+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4g
Kwl1bnNpZ25lZCBpbnQgZnc7DQo+ID4gKw0KPiA+ICsJZncgPSBpbnRlbF91bmNvcmVfZm9yY2V3
YWtlX2Zvcl9yZWcoJmRldl9wcml2LT51bmNvcmUsDQo+ID4gKwkJCQkJICAgIEVEUF9QU1IyX1NU
QVRVUyhpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLA0KPiA+ICsJCQkJCSAgICBGV19SRUdfUkVB
RCk7DQo+ID4gKwlyZXR1cm4gaW50ZWxfd2FpdF9mb3JfY29uZGl0aW9uKCZkZXZfcHJpdi0+dW5j
b3JlLA0KPiA+ICsJCQkJCV9pc19wc3IyX3JlYWRfZm9yX3BpcGVfdXBkYXRlLA0KPiA+ICsJCQkJ
CWludGVsX2RwLCBmdywgNTApOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IF9wc3Ix
X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90
b19pOTE1KGludGVsX2RwKTsNCj4gPiAgIA0KPiA+IEBAIC0xNzgxLDE1ICsxNzk5LDEzIEBAIHN0
YXRpYyBpbnQgcHNyX3dhaXRfZm9yX2lkbGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdTMy
ICpvdXRfdmFsdWUpDQo+ID4gICAJICogZXhpdCB0cmFpbmluZyB0aW1lICsgMS41IG1zIG9mIGF1
eCBjaGFubmVsIGhhbmRzaGFrZS4gNTAgbXMgaXMNCj4gPiAgIAkgKiBkZWZlbnNpdmUgZW5vdWdo
IHRvIGNvdmVyIGV2ZXJ5dGhpbmcuDQo+ID4gICAJICovDQo+ID4gLQlyZXR1cm4gX19pbnRlbF93
YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwNCj4gPiAtCQkJCQkgRURQX1BTUl9T
VEFUVVMoaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKSwNCj4gPiAtCQkJCQkgRURQX1BTUl9TVEFU
VVNfU1RBVEVfTUFTSywNCj4gPiAtCQkJCQkgRURQX1BTUl9TVEFUVVNfU1RBVEVfSURMRSwgMiwg
NTAsDQo+ID4gLQkJCQkJIG91dF92YWx1ZSk7DQo+ID4gKwlyZXR1cm4gaW50ZWxfZGVfd2FpdF9m
b3JfY2xlYXIoZGV2X3ByaXYsDQo+ID4gKwkJCQkgICAgICAgRURQX1BTUl9TVEFUVVMoaW50ZWxf
ZHAtPnBzci50cmFuc2NvZGVyKSwNCj4gPiArCQkJCSAgICAgICBFRFBfUFNSX1NUQVRVU19TVEFU
RV9NQVNLLCA1MCk7DQo+IFNpbmNlIEVEUF9QU1JfU1RBVFVTX1NUQVRFX0lETEUgaXMgMHgwLCB0
aGUgY29kZSBtZWFuaW5nIGlzIHRoZSBzYW1lIGFzIA0KPiB0aGUgcHJldmlvdXMgY29kZSBoZXJl
LCBidXQgZnJvbSB0aGUgY29kZSByZWFkYWJpbGl0eSBwb2ludCBvZiB2aWV3LCB0aGUgDQo+IHBy
ZXZpb3VzIGNvZGUgbG9va3MgYmV0dGVyIHRvIG1lLg0KPiBJbiB0aGUgY2FzZSBvZiBQU1IxLCBp
ZiB0aGVyZSBpcyBhIGZ1bmN0aW9uYWwgY2hhbmdlIGluIHRoZSBjaGFuZ2VkIGNvZGUgDQo+IHRo
YXQgSSBkaWQgbm90IG5vdGljZSwgY291bGQgeW91IHBsZWFzZSBsZXQgbWUga25vdz8NCg0KRnVu
Y3Rpb25zIHRoYXQgc3RhcnRzIHdpdGggJ19fJyBhcmUgc3VwcG9zZWQgdG8gYmUgc3RhdGljIGFu
ZCBvbmx5IHVzZWQgaW5zaWRlIG9mIHRoZSBzYW1lIEMgZmlsZSB0aGF0IGl0IHdhcyBkZWZpbmVk
LCBidXQgc29tZW9uZSBtaXN1c2VkIGFuZA0KZXhwb3J0ZWQgdGhpcyBmdW5jdGlvbiBhbmQgaXQg
c3ByZWFkIHRocm91Z2ggaTkxNS4NCg0KU28gaGVyZSBzd2l0Y2hpbmcgdG8gaW50ZWxfZGVfd2Fp
dF9mb3JfY2xlYXIoKSB0aGF0IHNpbXBsaWZ5IHRoZSBhcmd1bWVudHMgYW5kIGF0IHRoZSBlbmQg
aXQgY2FsbCB0aGUgX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigpIHdpdGggdGhlIGV4YWN0bHkN
CnNhbWUgYXJndW1lbnRzIGFzIHdlIGRpZC4NCg0KPiA+ICAgfQ0KPiA+ICAgDQo+ID4gICAvKioN
Cj4gPiAtICogaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUgLSB3YWl0IGZvciBQU1IxIHRvIGlkbGUN
Cj4gPiArICogaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUgLSB3YWl0IGZvciBQU1IgYmUgcmVhZHkg
Zm9yIGEgcGlwZSB1cGRhdGUNCj4gPiAgICAqIEBuZXdfY3J0Y19zdGF0ZTogbmV3IENSVEMgc3Rh
dGUNCj4gPiAgICAqDQo+ID4gICAgKiBUaGlzIGZ1bmN0aW9uIGlzIGV4cGVjdGVkIHRvIGJlIGNh
bGxlZCBmcm9tIHBpcGVfdXBkYXRlX3N0YXJ0KCkgd2hlcmUgaXQgaXMNCj4gPiBAQCAtMTgwNiwx
OSArMTgyMiwyMyBAQCB2b2lkIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkNCj4gPiAgIAlmb3JfZWFjaF9pbnRlbF9l
bmNvZGVyX21hc2tfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIsDQo+ID4gICAJCQkJ
CSAgICAgbmV3X2NydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gICAJCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gLQkJ
dTMyIHBzcl9zdGF0dXM7DQo+ID4gKwkJaW50IHJldDsNCj4gPiAgIA0KPiA+ICAgCQltdXRleF9s
b2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+IC0JCWlmICghaW50ZWxfZHAtPnBzci5lbmFi
bGVkIHx8IGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ID4gKw0KPiA+ICsJCWlmICgh
aW50ZWxfZHAtPnBzci5lbmFibGVkKSB7DQo+ID4gICAJCQltdXRleF91bmxvY2soJmludGVsX2Rw
LT5wc3IubG9jayk7DQo+ID4gICAJCQljb250aW51ZTsNCj4gPiAgIAkJfQ0KPiA+ICAgDQo+ID4g
LQkJLyogd2hlbiB0aGUgUFNSMSBpcyBlbmFibGVkICovDQo+ID4gLQkJaWYgKHBzcl93YWl0X2Zv
cl9pZGxlKGludGVsX2RwLCAmcHNyX3N0YXR1cykpDQo+ID4gLQkJCWRybV9lcnIoJmRldl9wcml2
LT5kcm0sDQo+ID4gLQkJCQkiUFNSIGlkbGUgdGltZWQgb3V0IDB4JXgsIGF0b21pYyB1cGRhdGUg
bWF5IGZhaWxcbiIsDQo+ID4gLQkJCQlwc3Jfc3RhdHVzKTsNCj4gPiArCQlpZiAoaW50ZWxfZHAt
PnBzci5wc3IyX2VuYWJsZWQpDQo+ID4gKwkJCXJldCA9IF9wc3IyX3JlYWR5X2Zvcl9waXBlX3Vw
ZGF0ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+ICsJCWVsc2UNCj4gPiArCQkJcmV0ID0gX3BzcjFf
cmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICsJCWlm
IChyZXQpDQo+ID4gKwkJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJQU1Igd2FpdCB0aW1lZCBv
dXQsIGF0b21pYyB1cGRhdGUgbWF5IGZhaWxcbiIpOw0KPiA+ICsNCj4gPiAgIAkJbXV0ZXhfdW5s
b2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+ICAgCX0NCj4gPiAgIH0NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgNCj4gPiBpbmRleCBjM2EyMWY3YzAwM2RlLi43YWFhMGJjOWE4ZmU3IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gQEAgLTQ2OTgsOCArNDY5OCw5
IEBAIGVudW0gew0KPiA+ICAgI2RlZmluZSBfUFNSMl9TVEFUVVNfQQkJCTB4NjA5NDANCj4gPiAg
ICNkZWZpbmUgX1BTUjJfU1RBVFVTX0VEUAkJMHg2Zjk0MA0KPiA+ICAgI2RlZmluZSBFRFBfUFNS
Ml9TVEFUVVModHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSMl9TVEFUVVNfQSkNCj4gPiAt
I2RlZmluZSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFTSyAgICAgKDB4ZiA8PCAyOCkNCj4gPiAt
I2RlZmluZSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0hJRlQgICAgMjgNCj4gPiArI2RlZmluZSBF
RFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFTSyAgICAgUkVHX0dFTk1BU0soMzEsIDI4KQ0KPiA+ICsj
ZGVmaW5lIEVEUF9QU1IyX1NUQVRVU19TVEFURV9TTEVFUCAgICBSRUdfRklFTERfUFJFUChFRFBf
UFNSMl9TVEFUVVNfU1RBVEVfTUFTSywgMHgzKQ0KPiA+ICsjZGVmaW5lIEVEUF9QU1IyX1NUQVRV
U19TVEFURV9JRExFICAgICBSRUdfRklFTERfUFJFUChFRFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFT
SywgMHgwKQ0KPiA+ICAgDQo+ID4gICAjZGVmaW5lIF9QU1IyX1NVX1NUQVRVU19BCQkweDYwOTE0
DQo+ID4gICAjZGVmaW5lIF9QU1IyX1NVX1NUQVRVU19FRFAJCTB4NmY5MTQNCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYw0KPiA+IGluZGV4IGY5NzY3MDU0ZGJkZjkuLjE0NjdiNzcw
OWNhM2EgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3Jl
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYw0KPiA+IEBA
IC0yMzc5LDYgKzIzNzksMjggQEAgaW50IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXJfZncoc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiA+ICAgI3VuZGVmIGRvbmUNCj4gPiAgIH0NCj4g
PiAgIA0KPiA+ICtzdGF0aWMgaW50IF9faW50ZWxfd2FpdF9mb3JfY29uZGl0aW9uX2Z3KGJvb2wg
KCpmdW5jKSh2b2lkICpkYXRhKSwgdm9pZCAqZGF0YSwNCj4gPiArCQkJCQkgdW5zaWduZWQgaW50
IGZhc3RfdGltZW91dF91cywNCj4gPiArCQkJCQkgdW5zaWduZWQgaW50IHNsb3dfdGltZW91dF9t
cykNCj4gPiArew0KPiA+ICsjZGVmaW5lIGRvbmUgKGZ1bmMoZGF0YSkpDQo+ID4gKwlpbnQgcmV0
Ow0KPiA+ICsNCj4gPiArCS8qIENhdGNoIGFueSBvdmVydXNlIG9mIHRoaXMgZnVuY3Rpb24gKi8N
Cj4gPiArCW1pZ2h0X3NsZWVwX2lmKHNsb3dfdGltZW91dF9tcyk7DQo+ID4gKwlHRU1fQlVHX09O
KGZhc3RfdGltZW91dF91cyA+IDIwMDAwKTsNCj4gPiArCUdFTV9CVUdfT04oIWZhc3RfdGltZW91
dF91cyAmJiAhc2xvd190aW1lb3V0X21zKTsNCj4gPiArDQo+ID4gKwlyZXQgPSAtRVRJTUVET1VU
Ow0KPiA+ICsJaWYgKGZhc3RfdGltZW91dF91cyAmJiBmYXN0X3RpbWVvdXRfdXMgPD0gMjAwMDAp
DQo+ID4gKwkJcmV0ID0gX3dhaXRfZm9yX2F0b21pYyhkb25lLCBmYXN0X3RpbWVvdXRfdXMsIDAp
Ow0KPiA+ICsJaWYgKHJldCAmJiBzbG93X3RpbWVvdXRfbXMpDQo+ID4gKwkJcmV0ID0gd2FpdF9m
b3IoZG9uZSwgc2xvd190aW1lb3V0X21zKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gcmV0Ow0KPiA+
ICsjdW5kZWYgZG9uZQ0KPiA+ICt9DQo+ID4gKw0KPiA+ICAgLyoqDQo+ID4gICAgKiBfX2ludGVs
X3dhaXRfZm9yX3JlZ2lzdGVyIC0gd2FpdCB1bnRpbCByZWdpc3RlciBtYXRjaGVzIGV4cGVjdGVk
IHN0YXRlDQo+ID4gICAgKiBAdW5jb3JlOiB0aGUgc3RydWN0IGludGVsX3VuY29yZQ0KPiA+IEBA
IC0yNDM4LDYgKzI0NjAsMzEgQEAgaW50IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoc3RydWN0
IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiA+ICAgCXJldHVybiByZXQ7DQo+ID4gICB9DQo+ID4g
ICANCj4gPiAraW50IGludGVsX3dhaXRfZm9yX2NvbmRpdGlvbihzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUsDQo+ID4gKwkJCSAgICAgYm9vbCAoKmZ1bmMpKHZvaWQgKmRhdGEpLA0KPiA+ICsJ
CQkgICAgIHZvaWQgKmRhdGEsDQo+ID4gKwkJCSAgICAgdW5zaWduZWQgaW50IGZ3LA0KPiA+ICsJ
CQkgICAgIHVuc2lnbmVkIGludCBzbG93X3RpbWVvdXRfbXMpDQo+ID4gK3sNCj4gPiArCXVuc2ln
bmVkIGludCBmYXN0X3RpbWVvdXRfdXMgPSAyOw0KPiA+ICsJaW50IHJldDsNCj4gPiArDQo+ID4g
KwltaWdodF9zbGVlcF9pZihzbG93X3RpbWVvdXRfbXMpOw0KPiA+ICsNCj4gPiArCXNwaW5fbG9j
a19pcnEoJnVuY29yZS0+bG9jayk7DQo+ID4gKwlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldF9f
bG9ja2VkKHVuY29yZSwgZncpOw0KPiA+ICsNCj4gPiArCXJldCA9IF9faW50ZWxfd2FpdF9mb3Jf
Y29uZGl0aW9uX2Z3KGZ1bmMsIGRhdGEsIGZhc3RfdGltZW91dF91cywgMCk7DQo+ID4gKw0KPiA+
ICsJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXRfX2xvY2tlZCh1bmNvcmUsIGZ3KTsNCj4gPiAr
CXNwaW5fdW5sb2NrX2lycSgmdW5jb3JlLT5sb2NrKTsNCj4gPiArDQo+ID4gKwlpZiAocmV0ICYm
IHNsb3dfdGltZW91dF9tcykNCj4gPiArCQlyZXQgPSBfX3dhaXRfZm9yKCwgKGZ1bmMoZGF0YSkp
LCBzbG93X3RpbWVvdXRfbXMgKiAxMDAwLCAxMCwgMTAwMCk7DQo+ID4gKw0KPiA+ICsJcmV0dXJu
IHJldDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIGJvb2wgaW50ZWxfdW5jb3JlX3VuY2xhaW1lZF9t
bWlvKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSkNCj4gPiAgIHsNCj4gPiAgIAlib29sIHJl
dDsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaA0KPiA+IGluZGV4IDUzMTY2NWIw
ODAzOWMuLmUzMDQxNTI1YTZkYjggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
bmNvcmUuaA0KPiA+IEBAIC0yNzUsNiArMjc1LDcgQEAgaW50IF9faW50ZWxfd2FpdF9mb3JfcmVn
aXN0ZXJfZncoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiA+ICAgCQkJCSB1bnNpZ25l
ZCBpbnQgZmFzdF90aW1lb3V0X3VzLA0KPiA+ICAgCQkJCSB1bnNpZ25lZCBpbnQgc2xvd190aW1l
b3V0X21zLA0KPiA+ICAgCQkJCSB1MzIgKm91dF92YWx1ZSk7DQo+ID4gKw0KPiA+ICAgc3RhdGlj
IGlubGluZSBpbnQNCj4gPiAgIGludGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSwNCj4gPiAgIAkJCSAgIGk5MTVfcmVnX3QgcmVnLA0KPiA+IEBAIC0y
ODYsNiArMjg3LDEyIEBAIGludGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KHN0cnVjdCBpbnRlbF91
bmNvcmUgKnVuY29yZSwNCj4gPiAgIAkJCQkJICAgIDIsIHRpbWVvdXRfbXMsIE5VTEwpOw0KPiA+
ICAgfQ0KPiA+ICAgDQo+ID4gK2ludCBpbnRlbF93YWl0X2Zvcl9jb25kaXRpb24oc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlLA0KPiA+ICsJCQkgICAgIGJvb2wgKCpmdW5jKSh2b2lkICpkYXRh
KSwNCj4gPiArCQkJICAgICB2b2lkICpkYXRhLA0KPiA+ICsJCQkgICAgIHVuc2lnbmVkIGludCBm
dywNCj4gPiArCQkJICAgICB1bnNpZ25lZCBpbnQgdGltZW91dF9tcyk7DQo+ID4gKw0KPiA+ICAg
LyogcmVnaXN0ZXIgYWNjZXNzIGZ1bmN0aW9ucyAqLw0KPiA+ICAgI2RlZmluZSBfX3Jhd19yZWFk
KHhfXywgc19fKSBcDQo+ID4gICBzdGF0aWMgaW5saW5lIHUjI3hfXyBfX3Jhd191bmNvcmVfcmVh
ZCMjeF9fKGNvbnN0IHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgXA0KPiA+IA0KDQo=
