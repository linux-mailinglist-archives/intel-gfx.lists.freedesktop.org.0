Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AF818C219
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 22:12:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C0E6E067;
	Thu, 19 Mar 2020 21:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D166E067
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 21:12:19 +0000 (UTC)
IronPort-SDR: hzg5bo6SnrbdYfVFfjGF5tcspuZOTPkMc8vulKXNb1H/u8c9E0YTQP2zi0ib46X078GPjtB2ES
 f8UZGdZCtGPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:12:18 -0700
IronPort-SDR: WEghcko8TdN6BFfVUa4SdlTP75qBqXP5fCZ0qA8FHcluPPE9okI609pFoECqVi2yimqJVczTFJ
 vQFlA5nNXO0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="291737283"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Mar 2020 14:12:17 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.38]) with mapi id 14.03.0439.000;
 Thu, 19 Mar 2020 14:12:17 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3 3/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
Thread-Index: AQHV5sXDYnk1ET1GK0G6lh0J3zoDtqgk3jYAgBaIvgCACU2LgIAKOTeAgAIgkoA=
Date: Thu, 19 Mar 2020 21:12:15 +0000
Message-ID: <f835c228e9736e97ad01a16f2dae517f8d85389c.camel@intel.com>
References: <20200219014230.145601-1-jose.souza@intel.com>
 <20200219014230.145601-3-jose.souza@intel.com>
 <20200220172602.GI13686@intel.com>
 <647f33f4e86eb4edecd856b08d505e248afca1b9.camel@intel.com>
 <baca2cdbd379190de3c3545b43a8be1a7310da90.camel@intel.com>
 <20200318124425.GW13686@intel.com>
In-Reply-To: <20200318124425.GW13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <C298706F21FE82469EB09C76F8344528@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAzLTE4IGF0IDE0OjQ0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgTWFyIDEyLCAyMDIwIGF0IDEyOjM1OjU2QU0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMC0wMy0wNSBhdCAxNzozMyAtMDgwMCwgSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IE9uIFRodSwgMjAyMC0wMi0yMCBhdCAxOToyNiAr
MDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIEZlYiAxOCwgMjAy
MCBhdCAwNTo0MjozMFBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQo+ID4gPiA+IHdy
b3RlOg0KPiA+ID4gPiA+IGRHRlggaGF2ZSBsb2NhbCBtZW1vcnkgc28gaXQgZG8gbm90IGhhdmUg
YXBlcnR1cmUgYW5kIGRvIG5vdA0KPiA+ID4gPiA+IHN1cHBvcnQNCj4gPiA+ID4gPiBDUFUgZmVu
Y2VzIGJ1dCBldmVuIGZvciBpR0ZYIGl0IGhhdmUgYSBzbWFsbCBudW1iZXIgb2YNCj4gPiA+ID4g
PiBmZW5jZXMuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQXMgcmVwbGFjZW1lbnQgZm9yIGZlbmNl
cyB0byB0cmFjayBmcm9udGJ1ZmZlciBtb2RpZmljYXRpb25zDQo+ID4gPiA+ID4gYnkNCj4gPiA+
ID4gPiBDUFUNCj4gPiA+ID4gPiB3ZSBoYXZlIGEgc29mdHdhcmUgdHJhY2tpbmcgdGhhdCBpcyBh
bHJlYWR5IGluIHVzZWQgYnkgRkJDDQo+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4gUFNSLg0KPiA+
ID4gPiA+IFBTUiBkb24ndCBzdXBwb3J0IGZlbmNlcyBzbyBpdCBzaG93cyB0aGF0IHRoaXMgdHJh
Y2tpbmcgaXMNCj4gPiA+ID4gPiByZWxpYWJsZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTbyBs
ZXRzIG1ha2UgZmVuY2VzIGEgbmljZS10by1oYXZlIHRvIGFjdGl2YXRlIEZCQyBmb3IgR0VOOSss
DQo+ID4gPiA+ID4gdGhpcw0KPiA+ID4gPiA+IHdpbGwgYWxsb3cgdXMgdG8gZW5hYmxlIEZCQyBm
b3IgZEdGWHMgYW5kIGlHRlhzIGV2ZW4gd2hlbg0KPiA+ID4gPiA+IHRoZXJlDQo+ID4gPiA+ID4g
aXMNCj4gPiA+ID4gPiBubw0KPiA+ID4gPiA+IGF2YWlsYWJsZSBmZW5jZS4NCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiBXZSBkbyBub3Qgc2V0IGZlbmNlcyB0byByb3RhdGVkIHBsYW5lcyBidXQgRkJD
IG9ubHkgaGF2ZQ0KPiA+ID4gPiA+IHJlc3RyaWN0aW9ucw0KPiA+ID4gPiA+IGFnYWluc3QgMTZi
cHAsIHNvIGFkZGluZyBpdCBoZXJlLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEFsc28gYWRkaW5n
IGEgbmV3IGNoZWNrIGZvciB0aGUgdGlsaW5nIGZvcm1hdCwgZmVuY2VzIGFyZQ0KPiA+ID4gPiA+
IG9ubHkNCj4gPiA+ID4gPiBzZXQNCj4gPiA+ID4gPiB0byBYIGFuZCBZIHRpbGVkIHBsYW5lcyBi
dXQgYWdhaW4gRkJDIGRvbid0IGhhdmUgYW55DQo+ID4gPiA+ID4gcmVzdHJpY3Rpb25zDQo+ID4g
PiA+ID4gYWdhaW5zdCB0aWxpbmcgc28gYWRkaW5nIGxpbmVhciBhcyBzdXBwb3J0ZWQgYXMgd2Vs
bCwgb3RoZXINCj4gPiA+ID4gPiBmb3JtYXRzDQo+ID4gPiA+ID4gc2hvdWxkIGJlIGFkZGVkIGFm
dGVyIHRlc3RlZCBidXQgSUdUIG9ubHkgc3VwcG9ydHMgZHJhd2luZyBpbg0KPiA+ID4gPiA+IHRo
c2UNCj4gPiA+ID4gPiAzIGZvcm1hdHMuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gaW50ZWxfZmJj
X2h3X3RyYWNraW5nX2NvdmVyc19zY3JlZW4oKSBtYXliZSBjYW4gYWxzbyBoYXZlIHRoZQ0KPiA+
ID4gPiA+IHNhbWUNCj4gPiA+ID4gPiB0cmVhdG1lbnQgYXMgZmVuY2VzIGJ1dCBCU3BlYyBpcyBu
b3QgY2xlYXIgaWYgdGhlIHNpemUNCj4gPiA+ID4gPiBsaW1pdGF0aW9uDQo+ID4gPiA+ID4gaXMN
Cj4gPiA+ID4gPiBmb3IgaGFyZHdhcmUgdHJhY2tpbmcgb3IgZ2VuZXJhbCB1c2Ugb2YgRkJDIGFu
ZCBJIGRvbid0IGhhdmUNCj4gPiA+ID4gPiBhIDVLDQo+ID4gPiA+ID4gZGlzcGxheSB0byB0ZXN0
IGl0LCBzbyBrZWVwaW5nIGFzIGlzIGZvciBzYWZldHkuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
djI6DQo+ID4gPiA+ID4gLSBBZGRlZCB0aWxpbmcgYW5kIHBpeGVsIGZvcm1hdCByb3RhdGlvbiBj
aGVja3MNCj4gPiA+ID4gPiAtIENoYW5nZWQgdGhlIEdFTiB2ZXJzaW9uIG5vdCByZXF1aXJpbmcg
ZmVuY2VzIHRvIDExIGZyb20gOSwNCj4gPiA+ID4gPiBERFgNCj4gPiA+ID4gPiBuZWVkcyBzb21l
IGNoYW5nZXMgYnV0IGl0IGRvbid0IGhhdmUgc3VwcG9ydCBmb3IgR0VOMTErDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gdjM6DQo+ID4gPiA+ID4gLSBDaGFuZ2VkIGJhY2sgdG8gR0VOOSsNCj4gPiA+
ID4gPiAtIE1vdmVkIEdFTiB0ZXN0IHRvIGluc2lkZSBvZiB0aWxpbmdfaXNfdmFsaWQoKQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4NCj4gPiA+ID4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5k
aXlhbkBpbnRlbC5jb20+DQo+ID4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4g
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0NQ0KPiA+
ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrLS0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgIDEgKw0KPiA+ID4gPiA+ICAyIGZpbGVzIGNo
YW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMN
Cj4gPiA+ID4gPiBpbmRleCAxZDc2ZTM2NDZhMjUuLmEwZDFkNjYxYTAwNiAxMDA2NDQNCj4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+
ID4gPiA+IEBAIC01ODUsNyArNTg1LDcgQEAgc3RhdGljIGJvb2wgc3RyaWRlX2lzX3ZhbGlkKHN0
cnVjdA0KPiA+ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ID4gPiA+ICB9
DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICBzdGF0aWMgYm9vbCBwaXhlbF9mb3JtYXRfaXNfdmFs
aWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gPiAqZGV2X3ByaXYsDQo+ID4gPiA+
ID4gLQkJCQkgIHUzMiBwaXhlbF9mb3JtYXQpDQo+ID4gPiA+ID4gKwkJCQkgIHUzMiBwaXhlbF9m
b3JtYXQsIHVuc2lnbmVkDQo+ID4gPiA+ID4gaW50DQo+ID4gPiA+ID4gcm90YXRpb24pDQo+ID4g
PiA+ID4gIHsNCj4gPiA+ID4gPiAgCXN3aXRjaCAocGl4ZWxfZm9ybWF0KSB7DQo+ID4gPiA+ID4g
IAljYXNlIERSTV9GT1JNQVRfWFJHQjg4ODg6DQo+ID4gPiA+ID4gQEAgLTU5OSw2ICs1OTksOSBA
QCBzdGF0aWMgYm9vbCBwaXhlbF9mb3JtYXRfaXNfdmFsaWQoc3RydWN0DQo+ID4gPiA+ID4gZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+ID4gIAkJLyogV2FGYmNPbmx5MXRvMVJh
dGlvOmN0ZyAqLw0KPiA+ID4gPiA+ICAJCWlmIChJU19HNFgoZGV2X3ByaXYpKQ0KPiA+ID4gPiA+
ICAJCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gKwkJaWYgKChyb3RhdGlvbiAmIChEUk1fTU9E
RV9ST1RBVEVfOTAgfA0KPiA+ID4gPiA+IERSTV9NT0RFX1JPVEFURV8yNzApKSAmJg0KPiA+ID4g
PiA+ICsJCSAgICBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+ID4gPiA+ID4gKwkJCXJldHVy
biBmYWxzZTsNCj4gPiA+ID4gDQo+ID4gPiA+IFdvdWxkIHN0aWxsIHdvdWxkIHByZWZlciBhIHJv
dGF0aW9uc19pc192YWxpZCgpIG9yIHNvbWUgc3VjaA0KPiA+ID4gPiB0aGluZy4NCj4gPiA+IA0K
PiA+ID4gTGlrZSB0aGlzPw0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gPiBpbmRleCA1ZTM1Yzg5NGJkZjkuLjY5MmVkZDQ1
Yjc2OSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMNCj4gPiA+IEBAIC02MDAsMTUgKzYwMCwyMSBAQCBzdGF0aWMgYm9vbCBwaXhlbF9mb3Jt
YXRfaXNfdmFsaWQoc3RydWN0DQo+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
PiA+ICAgICAgICAgICAgICAgICAvKiBXYUZiY09ubHkxdG8xUmF0aW86Y3RnICovDQo+ID4gPiAg
ICAgICAgICAgICAgICAgaWYgKElTX0c0WChkZXZfcHJpdikpDQo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+ID4gPiAtICAgICAgICAgICAgICAgaWYgKChyb3Rh
dGlvbiAmIChEUk1fTU9ERV9ST1RBVEVfOTAgfA0KPiA+ID4gRFJNX01PREVfUk9UQVRFXzI3MCkp
ICYmDQo+ID4gPiAtICAgICAgICAgICAgICAgICAgIElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkN
Cj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCj4gPiA+ICAgICAg
ICAgICAgICAgICByZXR1cm4gdHJ1ZTsNCj4gPiA+ICAgICAgICAgZGVmYXVsdDoNCj4gPiA+ICAg
ICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+ID4gPiAgICAgICAgIH0NCj4gPiA+ICB9DQo+
ID4gPiANCj4gPiA+ICtzdGF0aWMgYm9vbCByb3RhdGlvbnNfaXNfdmFsaWQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gPiA+ICpkZXZfcHJpdiwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1MzIgcGl4ZWxfZm9ybWF0LCB1bnNpZ25lZCBpbnQNCj4gPiA+IHJvdGF0aW9u
KQ0KPiA+ID4gK3sNCj4gPiA+ICsgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSAm
JiBwaXhlbF9mb3JtYXQgPT0NCj4gPiA+IERSTV9GT1JNQVRfUkdCNTY1ICYmDQo+ID4gPiArICAg
ICAgICAgICByb3RhdGlvbiAmIChEUk1fTU9ERV9ST1RBVEVfOTAgfA0KPiA+ID4gRFJNX01PREVf
Uk9UQVRFXzI3MCkpDQo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiA+ID4g
KyAgICAgICByZXR1cm4gdHJ1ZTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiAgLyoNCj4gPiA+
ICAgKiBGb3Igc29tZSByZWFzb24sIHRoZSBoYXJkd2FyZSB0cmFja2luZyBzdGFydHMgbG9va2lu
ZyBhdA0KPiA+ID4gd2hhdGV2ZXINCj4gPiA+IHdlDQo+ID4gPiAgICogcHJvZ3JhbW1lZCBhcyB0
aGUgZGlzcGxheSBwbGFuZSBiYXNlIGFkZHJlc3MgcmVnaXN0ZXIuIEl0DQo+ID4gPiBkb2VzDQo+
ID4gPiBub3QNCj4gPiA+IGxvb2sgYXQNCj4gPiA+IEBAIC04MTAsNiArODE2LDEyIEBAIHN0YXRp
YyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjICpj
cnRjKQ0KPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCj4gPiA+ICAgICAgICAg
fQ0KPiA+ID4gDQo+ID4gPiArICAgICAgIGlmICghcm90YXRpb25zX2lzX3ZhbGlkKGRldl9wcml2
LCBjYWNoZS0+ZmIuZm9ybWF0LQ0KPiA+ID4gPmZvcm1hdCwNCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2FjaGUtPnBsYW5lLnJvdGF0aW9uKSkgew0KPiA+ID4gKyAgICAg
ICAgICAgICAgIGZiYy0+bm9fZmJjX3JlYXNvbiA9ICJwbGFuZSByb3RhdGlvbiBpcyBpbnZhbGlk
IjsNCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+ID4gPiArICAgICAgIH0N
Cj4gPiA+ICsNCj4gPiA+ICAgICAgICAgaWYgKGNhY2hlLT5wbGFuZS5waXhlbF9ibGVuZF9tb2Rl
ICE9DQo+ID4gPiBEUk1fTU9ERV9CTEVORF9QSVhFTF9OT05FDQo+ID4gPiAmJg0KPiA+ID4gICAg
ICAgICAgICAgY2FjaGUtPmZiLmZvcm1hdC0+aGFzX2FscGhhKSB7DQo+ID4gPiAgICAgICAgICAg
ICAgICAgZmJjLT5ub19mYmNfcmVhc29uID0gInBlci1waXhlbCBhbHBoYSBibGVuZGluZyBpcw0K
PiA+ID4gaW5jb21wYXRpYmxlIHdpdGggRkJDIjsNCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiA+ID4g
IAkJcmV0dXJuIHRydWU7DQo+ID4gPiA+ID4gIAlkZWZhdWx0Og0KPiA+ID4gPiA+ICAJCXJldHVy
biBmYWxzZTsNCj4gPiA+ID4gPiBAQCAtNjM5LDYgKzY0MiwyMiBAQCBzdGF0aWMgYm9vbA0KPiA+
ID4gPiA+IGludGVsX2ZiY19od190cmFja2luZ19jb3ZlcnNfc2NyZWVuKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiA+ID4gPiA+ICAJcmV0dXJuIGVmZmVjdGl2ZV93IDw9IG1heF93ICYmIGVm
ZmVjdGl2ZV9oIDw9IG1heF9oOw0KPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+
ICtzdGF0aWMgYm9vbCB0aWxpbmdfaXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
PiA+ID4gPiAqZGV2X3ByaXYsDQo+ID4gPiA+ID4gKwkJCSAgICB1aW50NjRfdCBtb2RpZmllcikN
Cj4gPiA+ID4gPiArew0KPiA+ID4gPiA+ICsJc3dpdGNoIChtb2RpZmllcikgew0KPiA+ID4gPiA+
ICsJY2FzZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6DQo+ID4gPiA+ID4gKwkJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSkNCj4gPiA+ID4gPiArCQkJcmV0dXJuIHRydWU7DQo+ID4gPiA+IA0K
PiA+ID4gPiBIYXZlIHdlIGNoZWNrZWQgdGhhdCBlZy4gZmJjb24gY3Vyc29yIHN0aWxsIGJsaW5r
cyBjb3JyZWN0bHkNCj4gPiA+ID4gd2l0aCBGQkMgYWN0aXZlIGFuZCBhbGw/DQo+ID4gPiANCj4g
PiA+IEh1bSBvbiBmYmNvbiBGQkMgaXMgZW5hYmxlZCBidXQgaXQgbmV2ZXIgY29tcHJlc3MsIElH
VCB0ZXN0cyB3aXRoDQo+ID4gPiBmZW5jZXMgY29tcGxldGUgZGlzYWJsZXMgYXJlIHdvcmtpbmcg
ZmluZSwgc2NyZWVuIGlzIHVwZGF0ZWQgd2hlbg0KPiA+ID4gdGVzdHMNCj4gPiA+IGFza3MgdG8g
d2l0aCBGQkMgZW5hYmxlZCBhbmQgY29tcHJlc3NpbmcuDQo+ID4gPiANCj4gPiA+IEkgd2lsbCBk
ZWJ1ZyBmYmNvbiBhIGxpdHRsZSBtb3JlIHRvIHVuZGVyc3RhbmQgd2h5IGl0IGlzIG5ldmVyDQo+
ID4gPiBjb21wcmVzc2luZy4gDQo+ID4gDQo+ID4gQWN0dWFsbHkgaXMgaXMgY29tcHJlc3Npbmcg
YnV0IGlzIHZlcnkgcmFyZSwgSSBldmVuIHJlZHVjZWQgdGhlDQo+ID4gYmxpbmsNCj4gPiByYXRl
IHRvIDFoeiBidXQgaXQgZGlkIG5vdCBoZWxwZWQuDQo+IA0KPiBJcyBGQkMgYWN0dWFsbHkgZW5h
YmxlZCBhbGwgdGhlIHRpbWUgdGhvdWdoPyBCeSAiY29tcHJlc3NpbmciIEkgdGFrZQ0KPiB5b3Ug
bWVhbiB0aGUgZGVidWdmcyB0aGluZyB3ZSBoYXZlPyBJIGRvbid0IGFjdHVhbGx5IHJlbWVtYmVy
IHdoYXQNCj4gdGhhdCBsb29rcyBhdC4gTnVtYmVyIG9mIGNvbXByZXNzZWQgc2VnbWVudHM/IE9y
IHNvbWV0aGluZyBlbHNlPw0KDQpFeGFjbHkgdGhhdC4NCg0KPiBZb3UncmUgcG9sbGluZyBpdCBm
YXN0IGVub3VnaCB0byBub3Qgc2ltcGx5IHN1ZmZlciBmcm9tIHBvb3INCj4gc2FtcGxpbmc/DQoN
Ckh1bSBpbiBvdGhlciBwbGF0Zm9ybXMgdGhlIGNvbXByZXNzaW5nIGlzIG1vcmUgY29uc2lzdGVu
dC4NCg0KPiANCj4gPiBJIGhhdmUgY29tcGFyZWQgdGhlIHBsYW5lIHJlZ2lzdGVycw0KPiA+IGJl
dHdlZW4gZmJjb24gYW5kIElHVCBib3RoIGluIHRpbGluZyBsaW5lYXIgYnV0IHRoZSBvbmx5IGRp
ZmZlcmVuY2UNCj4gPiBpcw0KPiA+IHRoZSBwbGFuZSBzdXJmYWNlIGFkZHJlc3M6DQo+ID4gDQo+
ID4gIyBmYmNvbg0KPiA+IFtkcm06c2tsX3VwZGF0ZV9wbGFuZSBbaTkxNV1dIHNrbF9wcm9ncmFt
X3BsYW5lKCkgcGlwZUEgcGxhbmU9QQ0KPiA+IFtkcm06c2tsX3VwZGF0ZV9wbGFuZSBbaTkxNV1d
IAlwbGFuZV9zdHJpZGU9NzgNCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxh
bmVfcG9zPTANCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfc2l6ZT00
MzcwNzdmDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1XV0gCXBsYW5lX2F1eF9kaXN0
PTANCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfY29sb3JfY3RsPTIw
MDANCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfa2V5dmFsPTANCj4g
PiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfa2V5bXNrPTANCj4gPiBbZHJt
OnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfa2V5bWF4PWZmMDAwMDAwDQo+ID4gW2Ry
bTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1XV0gCXBsYW5lX29mZnNldD0wDQo+ID4gW2RybTpza2xf
dXBkYXRlX3BsYW5lIFtpOTE1XV0gCXBsYW5lX2N0bD04NDAwMDAwMA0KPiA+IFtkcm06c2tsX3Vw
ZGF0ZV9wbGFuZSBbaTkxNV1dIAlwbGFuZV9zdXJmPTQwMDAwDQo+ID4gDQo+ID4gIyBJR1QgdGVz
dCB3aXRoIHRpbGluZyBsaW5lYXIgZnJhbWVidWZmZXINCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxh
bmUgW2k5MTVdXSBza2xfcHJvZ3JhbV9wbGFuZSgpIHBpcGVBIHBsYW5lPUENCj4gPiBbZHJtOnNr
bF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfc3RyaWRlPTc4DQo+ID4gW2RybTpza2xfdXBk
YXRlX3BsYW5lIFtpOTE1XV0gCXBsYW5lX3Bvcz0wDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5l
IFtpOTE1XV0gCXBsYW5lX3NpemU9NDM3MDc3Zg0KPiA+IFtkcm06c2tsX3VwZGF0ZV9wbGFuZSBb
aTkxNV1dIAlwbGFuZV9hdXhfZGlzdD0wDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1
XV0gCXBsYW5lX2NvbG9yX2N0bD0yMDAwDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1
XV0gCXBsYW5lX2tleXZhbD0wDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1XV0gCXBs
YW5lX2tleW1zaz0wDQo+ID4gW2RybTpza2xfdXBkYXRlX3BsYW5lIFtpOTE1XV0gCXBsYW5lX2tl
eW1heD1mZjAwMDAwMA0KPiA+IFtkcm06c2tsX3VwZGF0ZV9wbGFuZSBbaTkxNV1dIAlwbGFuZV9v
ZmZzZXQ9MA0KPiA+IFtkcm06c2tsX3VwZGF0ZV9wbGFuZSBbaTkxNV1dIAlwbGFuZV9jdGw9ODQw
MDAwMDANCj4gPiBbZHJtOnNrbF91cGRhdGVfcGxhbmUgW2k5MTVdXSAJcGxhbmVfc3VyZj0xMDQw
MDAwDQo+ID4gDQo+ID4gRG8geW91IGhhdmUgYW55IHRpcHMgb2Ygd2hhdCBjb3VsZCBiZSBjYXVz
aW5nIHRoaXM/DQo+ID4gDQo+ID4gPiA+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiA+ICsJ
Y2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoNCj4gPiA+ID4gPiArCWNhc2UgSTkxNV9GT1JN
QVRfTU9EX1lfVElMRUQ6DQo+ID4gPiA+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gPiA+ID4gKwlk
ZWZhdWx0Og0KPiA+ID4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiArCX0NCj4gPiA+
ID4gPiArfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3Vw
ZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1Y3QgaW50ZWxfY3J0Yw0KPiA+ID4gPiA+ICpjcnRjLA0KPiA+
ID4gPiA+ICAJCQkJCSBjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiA+ID4gIAkJCQkJIGNvbnN0IHN0cnVjdA0KPiA+
ID4gPiA+IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiA+ID4gKnBsYW5lX3N0YXRlKQ0KPiA+ID4g
PiA+IEBAIC02NzIsNiArNjkxLDcgQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gPiBpbnRlbF9mYmNf
dXBkYXRlX3N0YXRlX2NhY2hlKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2NydGMgKmNydGMsDQo+
ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICAJY2FjaGUtPmZiLmZvcm1hdCA9IGZiLT5mb3JtYXQ7DQo+
ID4gPiA+ID4gIAljYWNoZS0+ZmIuc3RyaWRlID0gZmItPnBpdGNoZXNbMF07DQo+ID4gPiA+ID4g
KwljYWNoZS0+ZmIubW9kaWZpZXIgPSBmYi0+bW9kaWZpZXI7DQo+ID4gPiA+ID4gIA0KPiA+ID4g
PiA+ICAJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHBsYW5lX3N0YXRlLT5mbGFncyAmDQo+
ID4gPiA+ID4gUExBTkVfSEFTX0ZFTkNFICYmDQo+ID4gPiA+ID4gIAkJICAgICFwbGFuZV9zdGF0
ZS0+dm1hLT5mZW5jZSk7DQo+ID4gPiA+ID4gQEAgLTcyMCwyMyArNzQwLDMzIEBAIHN0YXRpYyBi
b29sDQo+ID4gPiA+ID4gaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QNCj4gPiA+ID4gPiBp
bnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiAg
CX0NCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gLQkvKiBUaGUgdXNlIG9mIGEgQ1BVIGZlbmNlIGlz
IG1hbmRhdG9yeSBpbiBvcmRlciB0bw0KPiA+ID4gPiA+IGRldGVjdA0KPiA+ID4gPiA+IHdyaXRl
cw0KPiA+ID4gPiA+IC0JICogYnkgdGhlIENQVSB0byB0aGUgc2Nhbm91dCBhbmQgdHJpZ2dlciB1
cGRhdGVzIHRvIHRoZQ0KPiA+ID4gPiA+IEZCQy4NCj4gPiA+ID4gPiArCS8qIFRoZSB1c2Ugb2Yg
YSBDUFUgZmVuY2UgaXMgb25lIG9mIHR3byB3YXlzIHRvIGRldGVjdA0KPiA+ID4gPiA+IHdyaXRl
cw0KPiA+ID4gPiA+IGJ5IHRoZQ0KPiA+ID4gPiA+ICsJICogQ1BVIHRvIHRoZSBzY2Fub3V0IGFu
ZCB0cmlnZ2VyIHVwZGF0ZXMgdG8gdGhlIEZCQy4NCj4gPiA+ID4gPiArCSAqDQo+ID4gPiA+ID4g
KwkgKiBUaGUgb3RoZXIgbWV0aG9kIGlzIGJ5IHNvZnR3YXJlIHRyYWNraW5nKHNlZQ0KPiA+ID4g
PiA+ICsJICogaW50ZWxfZmJjX2ludmFsaWRhdGUvZmx1c2goKSksIGl0IHdpbGwgbWFudWFsbHkN
Cj4gPiA+ID4gPiBub3RpZnkgRkJDDQo+ID4gPiA+ID4gYW5kIG51a2UNCj4gPiA+ID4gPiArCSAq
IHRoZSBjdXJyZW50IGNvbXByZXNzZWQgYnVmZmVyIGFuZCByZWNvbXByZXNzIGl0Lg0KPiA+ID4g
PiA+ICAJICoNCj4gPiA+ID4gPiAgCSAqIE5vdGUgdGhhdCBpcyBwb3NzaWJsZSBmb3IgYSB0aWxl
ZCBzdXJmYWNlIHRvIGJlDQo+ID4gPiA+ID4gdW5tYXBwYWJsZQ0KPiA+ID4gPiA+IChhbmQNCj4g
PiA+ID4gPiAtCSAqIHNvIGhhdmUgbm8gZmVuY2UgYXNzb2NpYXRlZCB3aXRoIGl0KSBkdWUgdG8g
YXBlcnR1cmUNCj4gPiA+ID4gPiBjb25zdGFpbnRzDQo+ID4gPiA+ID4gKwkgKiBzbyBoYXZlIG5v
IGZlbmNlIGFzc29jaWF0ZWQgd2l0aCBpdCkgZHVlIHRvIGFwZXJ0dXJlDQo+ID4gPiA+ID4gY29u
c3RyYWludHMNCj4gPiA+ID4gPiAgCSAqIGF0IHRoZSB0aW1lIG9mIHBpbm5pbmcuDQo+ID4gPiA+
ID4gIAkgKg0KPiA+ID4gPiA+ICAJICogRklYTUUgd2l0aCA5MC8yNzAgZGVncmVlIHJvdGF0aW9u
IHdlIHNob3VsZCB1c2UgdGhlDQo+ID4gPiA+ID4gZmVuY2Ugb24NCj4gPiA+ID4gPiAgCSAqIHRo
ZSBub3JtYWwgR1RUIHZpZXcgKHRoZSByb3RhdGVkIHZpZXcgZG9lc24ndCBldmVuDQo+ID4gPiA+
ID4gaGF2ZSBhDQo+ID4gPiA+ID4gIAkgKiBmZW5jZSkuIFdvdWxkIG5lZWQgY2hhbmdlcyB0byB0
aGUgRkJDIGZlbmNlIFkgb2Zmc2V0DQo+ID4gPiA+ID4gYXMNCj4gPiA+ID4gPiB3ZWxsLg0KPiA+
ID4gPiA+IC0JICogRm9yIG5vdyB0aGlzIHdpbGwgZWZmZWNpdmVseSBkaXNhYmxlIEZCQyB3aXRo
IDkwLzI3MA0KPiA+ID4gPiA+IGRlZ3JlZQ0KPiA+ID4gPiA+ICsJICogRm9yIG5vdyB0aGlzIHdp
bGwgZWZmZWN0aXZlbHkgZGlzYWJsZSBGQkMgd2l0aA0KPiA+ID4gPiA+IDkwLzI3MCBkZWdyZWUN
Cj4gPiA+ID4gPiAgCSAqIHJvdGF0aW9uLg0KPiA+ID4gPiA+ICAJICovDQo+ID4gPiA+ID4gLQlp
ZiAoY2FjaGUtPmZlbmNlX2lkIDwgMCkgew0KPiA+ID4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPCA5ICYmIGNhY2hlLT5mZW5jZV9pZCA8IDApIHsNCj4gPiA+ID4gPiAgCQlmYmMtPm5v
X2ZiY19yZWFzb24gPSAiZnJhbWVidWZmZXIgbm90IHRpbGVkIG9yDQo+ID4gPiA+ID4gZmVuY2Vk
IjsNCj4gPiA+ID4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gIAl9DQo+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ICsJaWYgKCF0aWxpbmdfaXNfdmFsaWQoZGV2X3ByaXYsIGNhY2hlLT5mYi5t
b2RpZmllcikpIHsNCj4gPiA+ID4gPiArCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAidGlsaW5nIHVu
c3VwcG9ydGVkIjsNCj4gPiA+ID4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gKwl9DQo+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPD0gNCAmJiAh
SVNfRzRYKGRldl9wcml2KSAmJg0KPiA+ID4gPiA+ICAJICAgIGNhY2hlLT5wbGFuZS5yb3RhdGlv
biAhPSBEUk1fTU9ERV9ST1RBVEVfMCkgew0KPiA+ID4gPiA+ICAJCWZiYy0+bm9fZmJjX3JlYXNv
biA9ICJyb3RhdGlvbiB1bnN1cHBvcnRlZCI7DQo+ID4gPiA+ID4gQEAgLTc0OCw3ICs3NzgsOCBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdA0KPiA+ID4gPiA+IGlu
dGVsX2NydGMgKmNydGMpDQo+ID4gPiA+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiA+ICAJ
fQ0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiAtCWlmICghcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGRl
dl9wcml2LCBjYWNoZS0+ZmIuZm9ybWF0LQ0KPiA+ID4gPiA+ID4gZm9ybWF0KSkgDQo+ID4gPiA+
ID4gew0KPiA+ID4gPiA+ICsJaWYgKCFwaXhlbF9mb3JtYXRfaXNfdmFsaWQoZGV2X3ByaXYsIGNh
Y2hlLT5mYi5mb3JtYXQtDQo+ID4gPiA+ID4gPmZvcm1hdCwNCj4gPiA+ID4gPiArCQkJCSAgIGNh
Y2hlLT5wbGFuZS5yb3RhdGlvbikpIHsNCj4gPiA+ID4gPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24g
PSAicGl4ZWwgZm9ybWF0IGlzIGludmFsaWQiOw0KPiA+ID4gPiA+ICAJCXJldHVybiBmYWxzZTsN
Cj4gPiA+ID4gPiAgCX0NCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaA0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aA0KPiA+ID4gPiA+IGluZGV4IDMzMzBiNTM4ZDM3OS4uYmY4ODY2M2Q4MjE3IDEwMDY0NA0KPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gPiA+ID4gQEAgLTQxMyw2
ICs0MTMsNyBAQCBzdHJ1Y3QgaW50ZWxfZmJjIHsNCj4gPiA+ID4gPiAgCQlzdHJ1Y3Qgew0KPiA+
ID4gPiA+ICAJCQljb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICpmb3JtYXQ7DQo+ID4gPiA+
ID4gIAkJCXVuc2lnbmVkIGludCBzdHJpZGU7DQo+ID4gPiA+ID4gKwkJCXU2NCBtb2RpZmllcjsN
Cj4gPiA+ID4gPiAgCQl9IGZiOw0KPiA+ID4gPiA+ICAJCXUxNiBnZW45X3dhX2NmYl9zdHJpZGU7
DQo+ID4gPiA+ID4gIAkJczggZmVuY2VfaWQ7DQo+ID4gPiA+ID4gLS0gDQo+ID4gPiA+ID4gMi4y
NS4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
