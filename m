Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE843CE8F6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 19:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BD46E05F;
	Mon, 19 Jul 2021 17:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A816E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 17:47:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="211101016"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="211101016"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 10:47:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="414930093"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 19 Jul 2021 10:47:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 19 Jul 2021 10:47:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 10:46:59 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 10:46:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/7] drm/i915: Make workaround upper bounds
 exclusive
Thread-Index: AQHXesqp7/CmgpGmBU6xSJkXmB2WNKtLDR6A
Date: Mon, 19 Jul 2021 17:46:58 +0000
Message-ID: <6a62ddcf2da96624ee2b7a475576d1d2c4e3b6f6.camel@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-8-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-8-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <0F83DBF76FAA9745B48F9E2619DC1803@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Make workaround upper bounds
 exclusive
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

T24gRnJpLCAyMDIxLTA3LTE2IGF0IDIyOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
b3JrYXJvdW5kcyBhcmUgZG9jdW1lbnRlZCBpbiB0aGUgYnNwZWMgd2l0aCBhbiBleGNsdXNpdmUg
dXBwZXIgYm91bmQNCj4gKGkuZS4sIGEgImZpeGVkIiBzdGVwcGluZyB0aGF0IG5vIGxvbmdlciBu
ZWVkcyB0aGUgd29ya2Fyb3VuZCkuICBUaGlzDQo+IG1ha2VzIG91ciBkcml2ZXIncyB1c2Ugb2Yg
YW4gaW5jbHVzaXZlIHVwcGVyIGJvdW5kIGZvciBzdGVwcGluZyByYW5nZXMNCj4gY29uZnVzaW5n
OyB0aGUgZGlmZmVyaW5nIG5vdGF0aW9uIGJldHdlZW4gY29kZSBhbmQgYnNwZWMgbWFrZXMgaXQg
dmVyeQ0KPiBlYXN5IGZvciBtaXN0YWtlcyB0byBjcmVlcCBpbi4NCj4gDQo+IExldCdzIHN3aXRj
aCB0aGUgdXBwZXIgYm91bmQgb2Ygb3VyIElTX3tHVCxESVNQfV9TVEVQIG1hY3JvcyBvdmVyIHRv
IHVzZQ0KPiBhbiBleGNsdXNpdmUgdXBwZXIgYm91bmQgbGlrZSB0aGUgYnNwZWMgZG9lcy4gIFRo
aXMgYWxzbyBoYXMgdGhlIGJlbmVmaXQNCj4gb2YgaGVscGluZyBtYWtlIHN1cmUgd29ya2Fyb3Vu
ZHMgYXJlIHByb3Blcmx5IGhhbmRsZWQgZm9yIG5ldyBtaW5vcg0KPiBzdGVwcGluZ3MgdGhhdCBz
aG93IHVwIChlLmcuLCBhbiBBMSBiZXR3ZWVuIHRoZSBBMCBhbmQgQjAgd2UgYWxyZWFkeQ0KPiBr
bmV3IGFib3V0KSAtLS0gaWYgdGhlIG5ldyBpbnRlcm1lZGlhdGUgc3RlcHBpbmcgcHVsbHMgaW4g
aGFyZHdhcmUgZml4ZXMNCj4gZWFybHksIHRoZXJlIHdpbGwgYmUgYW4gdXBkYXRlIHRvIHRoZSB3
b3JrYXJvdW5kIGRlZmluaXRpb24gd2hpY2ggbGV0cw0KPiB1cyBrbm93IHdlIG5lZWQgdG8gY2hh
bmdlIG91ciBjb2RlLiAgSWYgdGhlIG5ldyBzdGVwcGluZyBkb2VzIG5vdCBwdWxsIGENCj4gaGFy
ZHdhcmUgZml4IGVhcmxpZXIsIHRoZW4gdGhlIG5ldyBzdGVwcGluZyB3aWxsIGFscmVhZHkgYmUg
Y2FwdHVyZWQNCj4gcHJvcGVybHkgYnkgdGhlICJbYmVnaW4sIGZpeCkiIHJhbmdlIGluIHRoZSBj
b2RlLg0KPiANCj4gV2UnbGwgcHJvYmFibHkgbmVlZCB0byBiZSBleHRyYSB2aWdpbGFudCBpbiBj
b2RlIHJldmlldyBvZiBuZXcNCj4gd29ya2Fyb3VuZHMgZm9yIHRoZSBuZWFyIGZ1dHVyZSB0byBt
YWtlIHN1cmUgZGV2ZWxvcGVycyBub3RpY2UgdGhlIG5ldw0KPiBzZW1hbnRpY3Mgb2Ygd29ya2Fy
b3VuZCBib3VuZHMuICBCdXQgd2UganVzdCBtaWdyYXRlZCBhIGJ1bmNoIG9mIG91cg0KPiBwbGF0
Zm9ybXMgZnJvbSB0aGUgSVNfUkVWSUQgYm91bmRzIG92ZXIgdG8gSVNfe0dULERJU1B9X1NURVAs
IHNvIHBlb3BsZQ0KPiBhcmUgYWxyZWFkeSBhZGp1c3RpbmcgdG8gdGhlIG5ldyBtYWNyb3MgYW5k
IG5vdyBpcyBhIGdvb2QgdGltZSB0byBtYWtlDQo+IHRoaXMgY2hhbmdlIHRvby4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jICAgIHwgIDIg
Ky0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8ICA4
ICsrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAg
IHwgMTggKysrKysrLS0tLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMgICAgfCAgOCArKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhf
ZW5naW5lX2NzLmMgICAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZWdpb25fbG1lbS5jICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyAgIHwgMjggKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDQgKy0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICAgfCAgMiArLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgIDggKysrLS0tDQo+ICAx
MCBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCA0MSBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNzEw
NjdhNjIyNjRkLi45NDRmYjEzYjlkOTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gQEAgLTI4NzksNyArMjg3OSw3IEBAIHZvaWQgaW50ZWxf
aW5pdF9jZGNsa19ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJ
CWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNf
Y2RjbGs7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9j
YWxjX3ZvbHRhZ2VfbGV2ZWw7DQo+ICAJCS8qIFdhXzIyMDExMzIwMzE2OmFkbC1wW2EwXSAqLw0K
PiAtCQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTAp
KQ0KPiArCQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBf
QjApKQ0KPiAgCQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gYWRscF9hX3N0ZXBfY2RjbGtfdGFi
bGU7DQo+ICAJCWVsc2UNCj4gIAkJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGFkbHBfY2RjbGtf
dGFibGU7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jDQo+IGluZGV4IGUzYWFmOTY3OGIwNy4uYmVjMzgwZTU4ZjQwIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiBAQCAtNTc5OSwxMCArNTc5OSwxMCBAQCBzdGF0aWMgdm9pZCB0Z2xfYndfYnVkZHlf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJaW50IGNvbmZpZywg
aTsNCj4gIA0KPiAgCWlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwNCj4gLQkgICAgSVNf
REcxX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkgfHwNCj4gLQkgICAg
SVNfUktMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkgfHwNCj4gLQkg
ICAgSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+IC0J
CS8qIFdhXzE0MDk3NjcxMDg6dGdsLHJrbCxkZzEsYWRsLXMgKi8NCj4gKwkgICAgSVNfREcxX0RJ
U1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkgfHwNCj4gKwkgICAgSVNfUktM
X0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkgfHwNCj4gKwkgICAgSVNf
VEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpDQo+ICsJCS8qIFdh
XzE0MDk3NjcxMDg6dGdsLGRnMSxhZGwtcyAqLw0KPiAgCQl0YWJsZSA9IHdhXzE0MDk3NjcxMDhf
YnVkZHlfcGFnZV9tYXNrczsNCj4gIAllbHNlDQo+ICAJCXRhYmxlID0gdGdsX2J1ZGR5X3BhZ2Vf
bWFza3M7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRl
eCAwYTNkNDJjOGQ0N2QuLmYwMzgxZWRlZmRlZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC01NDYsNyArNTQ2LDcgQEAgc3RhdGljIHZvaWQg
aHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAl2YWwgfD0g
aW50ZWxfcHNyMl9nZXRfdHBfdGltZShpbnRlbF9kcCk7DQo+ICANCj4gIAkvKiBXYV8yMjAxMjI3
ODI3NTphZGwtcCAqLw0KPiAtCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RF
UF9BMCwgU1RFUF9EMSkpIHsNCj4gKwlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYs
IFNURVBfQTAsIFNURVBfRTApKSB7DQo+ICAJCXN0YXRpYyBjb25zdCB1OCBtYXBbXSA9IHsNCj4g
IAkJCTIsIC8qIDUgbGluZXMgKi8NCj4gIAkJCTEsIC8qIDYgbGluZXMgKi8NCj4gQEAgLTU5Myw3
ICs1OTMsNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiAgDQo+ICAJaWYgKGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5h
YmxlZCkgew0KPiAgCQkvKiBXYV8xNDA4MzMwODQ3ICovDQo+IC0JCWlmIChJU19UR0xfRElTUExB
WV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSkNCj4gKwkJaWYgKElTX1RHTF9ESVNQ
TEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKQ0KPiAgCQkJaW50ZWxfZGVfcm13
KGRldl9wcml2LCBDSElDS0VOX1BBUjFfMSwNCj4gIAkJCQkgICAgIERJU19SQU1fQllQQVNTX1BT
UjJfTUFOX1RSQUNLLA0KPiAgCQkJCSAgICAgRElTX1JBTV9CWVBBU1NfUFNSMl9NQU5fVFJBQ0sp
Ow0KPiBAQCAtNzMzLDcgKzczMyw3IEBAIHRnbF9kYzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQlyZXR1cm47DQo+ICANCj4gIAkvKiBX
YV8xNjAxMTMwMzkxODphZGwtcCAqLw0KPiAtCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZf
cHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+ICsJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRl
dl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICAJLyoNCj4g
QEAgLTc4MCw3ICs3ODAsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9jb25m
aWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAl9DQo+ICANCj4gIAkvKiBX
YV8xNDAxMDI1NDE4NSBXYV8xNDAxMDEwMzc5MiAqLw0KPiAtCWlmIChJU19UR0xfRElTUExBWV9T
VEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IxKSkgew0KPiArCWlmIChJU19UR0xfRElTUExB
WV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0MwKSkgew0KPiAgCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSMiBzZWwgZmV0Y2ggbm90IGVuYWJsZWQsIG1p
c3NpbmcgdGhlIGltcGxlbWVudGF0aW9uIG9mIFdBc1xuIik7DQo+ICAJCXJldHVybiBmYWxzZTsN
Cj4gQEAgLTkzOSw3ICs5MzksNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxp
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgDQo+ICAJLyogV2FfMjIwOTMxMzgxMSAq
Lw0KPiAgCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoICYmDQo+IC0JICAg
IElTX1RHTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjEpKSB7DQo+ICsJ
ICAgIElTX1RHTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQzApKSB7DQo+
ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNSMiBIVyB0cmFja2luZyBpcyBub3Qg
c3VwcG9ydGVkIHRoaXMgRGlzcGxheSBzdGVwcGluZ1xuIik7DQo+ICAJCXJldHVybiBmYWxzZTsN
Cj4gIAl9DQo+IEBAIC05NjYsNyArOTY2LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25m
aWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIA0KPiAgCS8qIFdhXzE2MDEx
MzAzOTE4OmFkbC1wICovDQo+ICAJaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUgJiYNCj4gLQkg
ICAgSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTApKSB7DQo+
ICsJICAgIElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkg
ew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSMiBub3Qg
ZW5hYmxlZCwgbm90IGNvbXBhdGlibGUgd2l0aCBIVyBzdGVwcGluZyArIFZSUlxuIik7DQo+ICAJ
CXJldHVybiBmYWxzZTsNCj4gQEAgLTExNjAsNyArMTE2MCw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkgICAg
IElHTk9SRV9QU1IyX0hXX1RSQUNLSU5HIDogMCk7DQo+ICANCj4gIAkvKiBXYV8xNjAxMTE2ODM3
MzphZGwtcCAqLw0KPiAtCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9B
MCwgU1RFUF9BMCkgJiYNCj4gKwlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNU
RVBfQTAsIFNURVBfQjApICYmDQo+ICAJICAgIGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKQ0K
PiAgCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsDQo+ICAJCQkgICAgIFRSQU5TX1NFVF9DT05URVhU
X0xBVEVOQ1koaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKSwNCj4gQEAgLTEzNDAsMTIgKzEzNDAs
MTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICANCj4gIAkvKiBXYV8xNDA4MzMwODQ3ICovDQo+ICAJaWYgKGludGVs
X2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCAmJg0KPiAtCSAgICBJU19UR0xfRElTUExB
WV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSkNCj4gKwkgICAgSVNfVEdMX0RJU1BM
QVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICAJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsDQo+ICAJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJf
TUFOX1RSQUNLLCAwKTsNCj4gIA0KPiAgCS8qIFdhXzE2MDExMTY4MzczOmFkbC1wICovDQo+IC0J
aWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSAmJg0K
PiArCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkg
JiYNCj4gIAkgICAgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpDQo+ICAJCWludGVsX2RlX3Jt
dyhkZXZfcHJpdiwNCj4gIAkJCSAgICAgVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWShpbnRlbF9k
cC0+cHNyLnRyYW5zY29kZXIpLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCA2MjhiNjc4ZDlhNzEuLjNhZDA0YmYy
YTBmZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTE5MTAsMTEgKzE5MTAsMTEgQEAgc3RhdGljIGJvb2wg
Z2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gIHsNCj4gIAkvKiBXYV8xNDAxMDQ3NzAwODp0Z2xbYTAuLmMwXSxya2xbYWxsXSxk
ZzFbYWxsXSAqLw0KPiAgCWlmIChJU19ERzEoZGV2X3ByaXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2
X3ByaXYpIHx8DQo+IC0JICAgIElTX1RHTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAs
IFNURVBfQzApKQ0KPiArCSAgICBJU19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0Ew
LCBTVEVQX0QwKSkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+ICAJLyogV2FfMjIwMTExODYw
NTcgKi8NCj4gLQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNU
RVBfQTApKQ0KPiArCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwg
U1RFUF9CMCkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIA0KPiAgCXJldHVybiBwbGFuZV9pZCA8
IFBMQU5FX1NQUklURTQ7DQo+IEBAIC0xOTM4LDcgKzE5MzgsNyBAQCBzdGF0aWMgYm9vbCBnZW4x
Ml9wbGFuZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+
ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1M6DQo+ICAJY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6DQo+ICAJCS8qIFdhXzIyMDEx
MTg2MDU3ICovDQo+IC0JCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9B
MCwgU1RFUF9BMCkpDQo+ICsJCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RF
UF9BMCwgU1RFUF9CMCkpDQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+ICAJCWJyZWFrOw0KPiAgCWRl
ZmF1bHQ6DQo+IEBAIC0xOTk1LDcgKzE5OTUsNyBAQCBzdGF0aWMgY29uc3QgdTY0ICpnZW4xMl9n
ZXRfcGxhbmVfbW9kaWZpZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
IAkJCQkJICAgIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpDQo+ICB7DQo+ICAJLyogV2FfMjIwMTEx
ODYwNTcgKi8NCj4gLQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAs
IFNURVBfQTApKQ0KPiArCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9B
MCwgU1RFUF9CMCkpDQo+ICAJCXJldHVybiBhZGxwX3N0ZXBfYV9wbGFuZV9mb3JtYXRfbW9kaWZp
ZXJzOw0KPiAgCWVsc2UgaWYgKGdlbjEyX3BsYW5lX3N1cHBvcnRzX21jX2NjcyhkZXZfcHJpdiwg
cGxhbmVfaWQpKQ0KPiAgCQlyZXR1cm4gZ2VuMTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19tY19j
Y3M7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW44X2VuZ2luZV9j
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYw0KPiBpbmRleCA4
N2IwNjU3MmZkMmUuLmE2OWY1YzQzOGM3MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9nZW44X2VuZ2luZV9jcy5jDQo+IEBAIC00Miw3ICs0Miw3IEBAIGludCBnZW44X2VtaXRfZmx1
c2hfcmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgbW9kZSkNCj4gIAkJCXZmX2ZsdXNo
X3dhID0gdHJ1ZTsNCj4gIA0KPiAgCQkvKiBXYUZvckdBTUhhbmc6a2JsICovDQo+IC0JCWlmIChJ
U19LQkxfR1RfU1RFUChycS0+ZW5naW5lLT5pOTE1LCAwLCBTVEVQX0IwKSkNCj4gKwkJaWYgKElT
X0tCTF9HVF9TVEVQKHJxLT5lbmdpbmUtPmk5MTUsIDAsIFNURVBfQzApKQ0KPiAgCQkJZGNfZmx1
c2hfd2EgPSB0cnVlOw0KPiAgCX0NCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3JlZ2lvbl9sbWVtLmMNCj4gaW5kZXggNTBkMTFhODRlN2E5Li5lM2EyYTJmYTVmOTQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYw0KPiBA
QCAtMTU3LDcgKzE1Nyw3IEBAIGludGVsX2d0X3NldHVwX2Zha2VfbG1lbShzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQ0KPiAgc3RhdGljIGJvb2wgZ2V0X2xlZ2FjeV9sb3dtZW1fcmVnaW9uKHN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSwNCj4gIAkJCQkgICAgIHU2NCAqc3RhcnQsIHUzMiAqc2l6ZSkN
Cj4gIHsNCj4gLQlpZiAoIUlTX0RHMV9HVF9TVEVQKHVuY29yZS0+aTkxNSwgU1RFUF9BMCwgU1RF
UF9CMCkpDQo+ICsJaWYgKCFJU19ERzFfR1RfU1RFUCh1bmNvcmUtPmk5MTUsIFNURVBfQTAsIFNU
RVBfQzApKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4gIAkqc3RhcnQgPSAwOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gaW5kZXggNjg1YzYx
MTVkMzgwLi4yNDdmMDMzMWViZWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBAQCAtODM4LDcgKzgzOCw3IEBAIHNrbF9ndF93b3JrYXJv
dW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9s
aXN0ICp3YWwpDQo+ICAJCSAgICBHRU44X0VVX0dBVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUpOw0K
PiAgDQo+ICAJLyogV2FJblBsYWNlRGVjb21wcmVzc2lvbkhhbmc6c2tsICovDQo+IC0JaWYgKElT
X1NLTF9HVF9TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBfSDAgLSAxKSkNCj4gKwlpZiAoSVNfU0tM
X0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9IMCkpDQo+ICAJCXdhX3dyaXRlX29yKHdhbCwN
Cj4gIAkJCSAgICBHRU45X0dBTVRfRUNPX1JFR19SV19JQSwNCj4gIAkJCSAgICBHQU1UX0VDT19F
TkFCTEVfSU5fUExBQ0VfREVDT01QUkVTUyk7DQo+IEBAIC04NTAsNyArODUwLDcgQEAga2JsX2d0
X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCkNCj4gIAlnZW45X2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2Fs
KTsNCj4gIA0KPiAgCS8qIFdhRGlzYWJsZUR5bmFtaWNDcmVkaXRTaGFyaW5nOmtibCAqLw0KPiAt
CWlmIChJU19LQkxfR1RfU1RFUChpOTE1LCAwLCBTVEVQX0IwKSkNCj4gKwlpZiAoSVNfS0JMX0dU
X1NURVAoaTkxNSwgMCwgU1RFUF9DMCkpDQo+ICAJCXdhX3dyaXRlX29yKHdhbCwNCj4gIAkJCSAg
ICBHQU1UX0NIS05fQklUX1JFRywNCj4gIAkJCSAgICBHQU1UX0NIS05fRElTQUJMRV9EWU5BTUlD
X0NSRURJVF9TSEFSSU5HKTsNCj4gQEAgLTk2MSw3ICs5NjEsNyBAQCBpY2xfZ3Rfd29ya2Fyb3Vu
ZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQ0KPiAgDQo+ICAJLyogV2FfMTYwNzA4NzA1NjppY2wsZWhsLGpzbCAqLw0KPiAgCWlm
IChJU19JQ0VMQUtFKGk5MTUpIHx8DQo+IC0JICAgIElTX0pTTF9FSExfR1RfU1RFUChpOTE1LCBT
VEVQX0EwLCBTVEVQX0EwKSkNCj4gKwkgICAgSVNfSlNMX0VITF9HVF9TVEVQKGk5MTUsIFNURVBf
QTAsIFNURVBfQjApKQ0KPiAgCQl3YV93cml0ZV9vcih3YWwsDQo+ICAJCQkgICAgU0xJQ0VfVU5J
VF9MRVZFTF9DTEtHQVRFLA0KPiAgCQkJICAgIEwzX0NMS0dBVEVfRElTIHwgTDNfQ1IyWF9DTEtH
QVRFX0RJUyk7DQo+IEBAIC0xMDE1LDE5ICsxMDE1LDE5IEBAIHRnbF9ndF93b3JrYXJvdW5kc19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwpDQo+ICAJZ2VuMTJfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOw0KPiAgDQo+ICAJ
LyogV2FfMTQwOTQyMDYwNDp0Z2wgKi8NCj4gLQlpZiAoSVNfVEdMX1VZX0dUX1NURVAoaTkxNSwg
U1RFUF9BMCwgU1RFUF9BMCkpDQo+ICsJaWYgKElTX1RHTF9VWV9HVF9TVEVQKGk5MTUsIFNURVBf
QTAsIFNURVBfQjApKQ0KPiAgCQl3YV93cml0ZV9vcih3YWwsDQo+ICAJCQkgICAgU1VCU0xJQ0Vf
VU5JVF9MRVZFTF9DTEtHQVRFMiwNCj4gIAkJCSAgICBDUFNTVU5JVF9DTEtHQVRFX0RJUyk7DQo+
ICANCj4gIAkvKiBXYV8xNjA3MDg3MDU2OnRnbCBhbHNvIGtub3cgYXMgQlVHOjE0MDkxODAzMzgg
Ki8NCj4gLQlpZiAoSVNfVEdMX1VZX0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+
ICsJaWYgKElTX1RHTF9VWV9HVF9TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBfQjApKQ0KPiAgCQl3
YV93cml0ZV9vcih3YWwsDQo+ICAJCQkgICAgU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLA0KPiAg
CQkJICAgIEwzX0NMS0dBVEVfRElTIHwgTDNfQ1IyWF9DTEtHQVRFX0RJUyk7DQo+ICANCj4gIAkv
KiBXYV8xNDA4NjE1MDcyOnRnbFthMF0gKi8NCj4gLQlpZiAoSVNfVEdMX1VZX0dUX1NURVAoaTkx
NSwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+ICsJaWYgKElTX1RHTF9VWV9HVF9TVEVQKGk5MTUsIFNU
RVBfQTAsIFNURVBfQjApKQ0KPiAgCQl3YV93cml0ZV9vcih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFMiwNCj4gIAkJCSAgICBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsNCj4gIH0NCj4g
QEAgLTEwMzgsNyArMTAzOCw3IEBAIGRnMV9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICAJZ2VuMTJf
Z3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOw0KPiAgDQo+ICAJLyogV2FfMTYwNzA4NzA1
NjpkZzEgKi8NCj4gLQlpZiAoSVNfREcxX0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9BMCkp
DQo+ICsJaWYgKElTX0RHMV9HVF9TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBfQjApKQ0KPiAgCQl3
YV93cml0ZV9vcih3YWwsDQo+ICAJCQkgICAgU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLA0KPiAg
CQkJICAgIEwzX0NMS0dBVEVfRElTIHwgTDNfQ1IyWF9DTEtHQVRFX0RJUyk7DQo+IEBAIC0xNDM2
LDcgKzE0MzYsNyBAQCBzdGF0aWMgdm9pZCBkZzFfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gIAl0Z2xfd2hpdGVsaXN0X2J1aWxkKGVuZ2luZSk7DQo+
ICANCj4gIAkvKiBHRU46QlVHOjE0MDkyODA0NDE6ZGcxICovDQo+IC0JaWYgKElTX0RHMV9HVF9T
VEVQKGVuZ2luZS0+aTkxNSwgU1RFUF9BMCwgU1RFUF9BMCkgJiYNCj4gKwlpZiAoSVNfREcxX0dU
X1NURVAoZW5naW5lLT5pOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSAmJg0KPiAgCSAgICAoZW5naW5l
LT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1MgfHwNCj4gIAkgICAgIGVuZ2luZS0+Y2xhc3MgPT0gQ09Q
WV9FTkdJTkVfQ0xBU1MpKQ0KPiAgCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBSSU5HX0lEKGVuZ2lu
ZS0+bW1pb19iYXNlKSwNCj4gQEAgLTE1MDQsOCArMTUwNCw4IEBAIHJjc19lbmdpbmVfd2FfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkx
NTsNCj4gIA0KPiAtCWlmIChJU19ERzFfR1RfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0EwKSB8
fA0KPiAtCSAgICBJU19UR0xfVVlfR1RfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0EwKSkgew0K
PiArCWlmIChJU19ERzFfR1RfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSB8fA0KPiArCSAg
ICBJU19UR0xfVVlfR1RfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSkgew0KPiAgCQkvKg0K
PiAgCQkgKiBXYV8xNjA3MTM4MzM2OnRnbFthMF0sZGcxW2EwXQ0KPiAgCQkgKiBXYV8xNjA3MDYz
OTg4OnRnbFthMF0sZGcxW2EwXQ0KPiBAQCAtMTUxNSw3ICsxNTE1LDcgQEAgcmNzX2VuZ2luZV93
YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQ0KPiAgCQkJICAgIEdFTjEyX0RJU0FCTEVfUE9TSF9CVVNZX0ZGX0RPUF9DRyk7DQo+
ICAJfQ0KPiAgDQo+IC0JaWYgKElTX1RHTF9VWV9HVF9TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBf
QTApKSB7DQo+ICsJaWYgKElTX1RHTF9VWV9HVF9TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBfQjAp
KSB7DQo+ICAJCS8qDQo+ICAJCSAqIFdhXzE2MDY2NzkxMDM6dGdsDQo+ICAJCSAqIChzZWUgYWxz
byBXYV8xNjA2NjgyMTY2OmljbCkNCj4gQEAgLTE1NTAsNyArMTU1MCw3IEBAIHJjc19lbmdpbmVf
d2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xp
c3QgKndhbCkNCj4gIAl9DQo+ICANCj4gIAlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgfHwgSVNf
QUxERVJMQUtFX1MoaTkxNSkgfHwNCj4gLQkgICAgSVNfREcxX0dUX1NURVAoaTkxNSwgU1RFUF9B
MCwgU1RFUF9BMCkgfHwNCj4gKwkgICAgSVNfREcxX0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RF
UF9CMCkgfHwNCj4gIAkgICAgSVNfUk9DS0VUTEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkx
NSkpIHsNCj4gIAkJLyogV2FfMTQwOTgwNDgwODp0Z2wscmtsLGRnMVthMF0sYWRsLXMsYWRsLXAg
Ki8NCj4gIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsDQo+IEBAIC0xNTY0
LDcgKzE1NjQsNyBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICAJfQ0KPiAgDQo+ICANCj4gLQlp
ZiAoSVNfREcxX0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9BMCkgfHwNCj4gKwlpZiAoSVNf
REcxX0dUX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9CMCkgfHwNCj4gIAkgICAgSVNfUk9DS0VU
TEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsNCj4gIAkJLyoNCj4gIAkJICogV2Ff
MTYwNzAzMDMxNzp0Z2wNCj4gQEAgLTE5MjUsNyArMTkyNSw3IEBAIHhjc19lbmdpbmVfd2FfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsNCj4g
IA0KPiAgCS8qIFdhS0JMVkVDU1NlbWFwaG9yZVdhaXRQb2xsOmtibCAqLw0KPiAtCWlmIChJU19L
QkxfR1RfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0UwKSkgew0KPiArCWlmIChJU19LQkxfR1Rf
U1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0YwKSkgew0KPiAgCQl3YV93cml0ZSh3YWwsDQo+ICAJ
CQkgUklOR19TRU1BX1dBSVRfUE9MTChlbmdpbmUtPm1taW9fYmFzZSksDQo+ICAJCQkgMSk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBpbmRleCBkYTVmMjMwZTJkNGIuLmI0MjQwNWFmYjI4
ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xMzMyLDExICsxMzMyLDEx
IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKnBkZXZfdG9faTkxNShz
dHJ1Y3QgcGNpX2RldiAqcGRldikNCj4gIA0KPiAgI2RlZmluZSBJU19ESVNQTEFZX1NURVAoX19p
OTE1LCBzaW5jZSwgdW50aWwpIFwNCj4gIAkoZHJtX1dBUk5fT04oJihfX2k5MTUpLT5kcm0sIElO
VEVMX0RJU1BMQVlfU1RFUChfX2k5MTUpID09IFNURVBfTk9ORSksIFwNCj4gLQkgSU5URUxfRElT
UExBWV9TVEVQKF9faTkxNSkgPj0gKHNpbmNlKSAmJiBJTlRFTF9ESVNQTEFZX1NURVAoX19pOTE1
KSA8PSAodW50aWwpKQ0KPiArCSBJTlRFTF9ESVNQTEFZX1NURVAoX19pOTE1KSA+PSAoc2luY2Up
ICYmIElOVEVMX0RJU1BMQVlfU1RFUChfX2k5MTUpIDwgKHVudGlsKSkNCj4gIA0KPiAgI2RlZmlu
ZSBJU19HVF9TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSBcDQo+ICAJKGRybV9XQVJOX09OKCYo
X19pOTE1KS0+ZHJtLCBJTlRFTF9HVF9TVEVQKF9faTkxNSkgPT0gU1RFUF9OT05FKSwgXA0KPiAt
CSBJTlRFTF9HVF9TVEVQKF9faTkxNSkgPj0gKHNpbmNlKSAmJiBJTlRFTF9HVF9TVEVQKF9faTkx
NSkgPD0gKHVudGlsKSkNCj4gKwkgSU5URUxfR1RfU1RFUChfX2k5MTUpID49IChzaW5jZSkgJiYg
SU5URUxfR1RfU1RFUChfX2k5MTUpIDwgKHVudGlsKSkNCg0KV291bGQgYmUgbmljZSB0byBoYXZl
IHNvbWUgY29tbWVudCBhYm91dCBib3VuZCBpbiBoZXJlLg0KDQpEaWQgbm90IG1hbnVhbGx5IGNo
ZWNrZWQgZWFjaCB3b3JrYXJvdW5kIGFnYWluc3QgYnNwZWMsIG9ubHkgY2hlY2tlZCB0aGUgb2xk
IGFuZCBuZXcgdW50aWwgdmFsdWVzIGFuZCBpdCBtYWtlcyBzZW5zZS4NCldpdGggdGhlIGNvbW1l
bnQgcmVxdWVzdGVkIGFib3ZlOg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCg0KPiAgDQo+ICBzdGF0aWMgX19hbHdheXNfaW5s
aW5lIHVuc2lnbmVkIGludA0KPiAgX19wbGF0Zm9ybV9tYXNrX2luZGV4KGNvbnN0IHN0cnVjdCBp
bnRlbF9ydW50aW1lX2luZm8gKmluZm8sDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uYw0KPiBpbmRleCBkZDYzZGQyYzQ1YWQuLjVjODNiMmVjNjlkYSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+IEBAIC0yNjIsNyArMjYy
LDcgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWVudW0gcGlwZSBwaXBlOw0KPiAgDQo+ICAJLyogV2Ff
MTQwMTE3NjUyNDI6IGFkbC1zIEEwLEExICovDQo+IC0JaWYgKElTX0FETFNfRElTUExBWV9TVEVQ
KGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0ExKSkNCj4gKwlpZiAoSVNfQURMU19ESVNQTEFZX1NU
RVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTIpKQ0KPiAgCQlmb3JfZWFjaF9waXBlKGRldl9w
cml2LCBwaXBlKQ0KPiAgCQkJcnVudGltZS0+bnVtX3NjYWxlcnNbcGlwZV0gPSAwOw0KPiAgCWVs
c2UgaWYgKEdSQVBISUNTX1ZFUihkZXZfcHJpdikgPj0gMTApIHsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jDQo+IGluZGV4IDhhODRhYmZhYTRiMC4uNTk3MzgzNDMwY2E2IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTczNTksNyArNzM1OSw3IEBAIHN0YXRpYyB2b2lkIGdl
bjEybHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiAgCQkJCSAgIElMS19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7DQo+ICANCj4g
IAkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8NCj4gLQlpZiAoSVNfVEdMX0RJU1BM
QVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMSkpDQo+ICsJaWYgKElTX1RHTF9ESVNQ
TEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQzApKQ0KPiAgCQlpbnRlbF91bmNvcmVf
d3JpdGUoJmRldl9wcml2LT51bmNvcmUsIEdFTjlfQ0xLR0FURV9ESVNfMywgaW50ZWxfdW5jb3Jl
X3JlYWQoJmRldl9wcml2LT51bmNvcmUsIEdFTjlfQ0xLR0FURV9ESVNfMykgfA0KPiAgCQkJICAg
VEdMX1ZSSF9HQVRJTkdfRElTKTsNCj4gIA0KPiBAQCAtNzM4Miw3ICs3MzgyLDcgQEAgc3RhdGlj
IHZvaWQgZGcxX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikNCj4gIAlnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nKGRldl9wcml2KTsNCj4gIA0KPiAg
CS8qIFdhXzE0MDk4MzY2ODY6ZGcxW2EwXSAqLw0KPiAtCWlmIChJU19ERzFfR1RfU1RFUChkZXZf
cHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+ICsJaWYgKElTX0RHMV9HVF9TVEVQKGRldl9wcml2
LCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gIAkJaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+
dW5jb3JlLCBHRU45X0NMS0dBVEVfRElTXzMsIGludGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+
dW5jb3JlLCBHRU45X0NMS0dBVEVfRElTXzMpIHwNCj4gIAkJCSAgIERQVF9HQVRJTkdfRElTKTsN
Cj4gIH0NCj4gQEAgLTc0NjcsMTIgKzc0NjcsMTIgQEAgc3RhdGljIHZvaWQga2JsX2luaXRfY2xv
Y2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJICAgRkJD
X0xMQ19GVUxMWV9PUEVOKTsNCj4gIA0KPiAgCS8qIFdhRGlzYWJsZVNERVVuaXRDbG9ja0dhdGlu
ZzprYmwgKi8NCj4gLQlpZiAoSVNfS0JMX0dUX1NURVAoZGV2X3ByaXYsIDAsIFNURVBfQjApKQ0K
PiArCWlmIChJU19LQkxfR1RfU1RFUChkZXZfcHJpdiwgMCwgU1RFUF9DMCkpDQo+ICAJCWludGVs
X3VuY29yZV93cml0ZSgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOF9VQ0dDVEw2LCBpbnRlbF91bmNv
cmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOF9VQ0dDVEw2KSB8DQo+ICAJCQkgICBHRU44
X1NERVVOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFKTsNCj4gIA0KPiAgCS8qIFdhRGlzYWJsZUdhbUNs
b2NrR2F0aW5nOmtibCAqLw0KPiAtCWlmIChJU19LQkxfR1RfU1RFUChkZXZfcHJpdiwgMCwgU1RF
UF9CMCkpDQo+ICsJaWYgKElTX0tCTF9HVF9TVEVQKGRldl9wcml2LCAwLCBTVEVQX0MwKSkNCj4g
IAkJaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLCBHRU42X1VDR0NUTDEsIGlu
dGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLCBHRU42X1VDR0NUTDEpIHwNCj4gIAkJ
CSAgIEdFTjZfR0FNVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUpOw0KPiAgDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
